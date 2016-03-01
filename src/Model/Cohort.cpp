#include <Cohort.h>
#include <limits.h>
#include <GridCell.h>
#include <MadingleyModelInitialisation.h>
#include <Dispersal.h>
/** \file Cohort.cc
 * \brief the Cohort implementation file
 */
unsigned Cohort::NextID=0;
//----------------------------------------------------------------------------------------------

Cohort::Cohort(GridCell& gcl, unsigned functionalGroupIndex, double juvenileBodyMass, double adultBodyMass, double initialBodyMass, double initialAbundance, double optimalPreyBodySizeRatio, unsigned short birthTimeStep, double proportionTimeActive, long long &nextCohortID) {

    FunctionalGroupIndex = functionalGroupIndex;
    JuvenileMass = juvenileBodyMass;
    AdultMass = adultBodyMass;
    IndividualBodyMass = initialBodyMass;
    CohortAbundance = initialAbundance;
    BirthTimeStep = birthTimeStep;
    MaturityTimeStep = std::numeric_limits<unsigned>::max();
    LogOptimalPreyBodySizeRatio = log(optimalPreyBodySizeRatio);
    MaximumAchievedBodyMass = juvenileBodyMass;
    Merged = false;
    ProportionTimeActive = proportionTimeActive;
    location = &gcl;
    destination = location;
    ID = NextID; //MB added to track this object.
    NextID++;
    nextCohortID++;
}
//----------------------------------------------------------------------------------------------

Cohort::Cohort(Cohort& actingCohort, double juvenileBodyMass, double adultBodyMass, double initialBodyMass, double initialAbundance, unsigned birthTimeStep, long long& nextCohortID) {

    FunctionalGroupIndex = actingCohort.FunctionalGroupIndex;
    JuvenileMass = juvenileBodyMass;
    AdultMass = adultBodyMass;
    IndividualBodyMass = initialBodyMass;
    CohortAbundance = initialAbundance;
    BirthTimeStep = birthTimeStep;
    MaturityTimeStep = std::numeric_limits<unsigned>::max();
    LogOptimalPreyBodySizeRatio = actingCohort.LogOptimalPreyBodySizeRatio;
    MaximumAchievedBodyMass = juvenileBodyMass;
    Merged = false;
    ProportionTimeActive = actingCohort.ProportionTimeActive;
    location = actingCohort.location;
    destination = location;
    ID = NextID; //MB added to track this object.
    NextID++;
    nextCohortID++;

}
//----------------------------------------------------------------------------------------------

bool Cohort::isMature() {
    return (MaturityTimeStep < std::numeric_limits<unsigned>::max());
}
//----------------------------------------------------------------------------------------------
vector<Cohort> Cohort::newCohorts;
map<string, map<string, double>>Cohort::Deltas;
//----------------------------------------------------------------------------------------------

void Cohort::zeroDeltas() {
    // Initialize delta abundance sorted list with appropriate processes

    Deltas["abundance"]["mortality"] = 0.0;

    // Initialize delta biomass sorted list with appropriate processes
    Deltas["biomass"]["metabolism"] = 0.0;
    Deltas["biomass"]["predation"] = 0.0;
    Deltas["biomass"]["herbivory"] = 0.0;
    Deltas["biomass"]["reproduction"] = 0.0;

    // Initialize delta reproductive biomass vector with appropriate processes

    Deltas["reproductivebiomass"]["reproduction"] = 0.0;

    // Initialize organic pool delta vector with appropriate processes
    Deltas["organicpool"]["herbivory"] = 0.0;
    Deltas["organicpool"]["predation"] = 0.0;
    Deltas["organicpool"]["mortality"] = 0.0;

    // Initialize respiratory CO2 pool delta vector with appropriate processes
    Deltas["respiratoryCO2pool"]["metabolism"] = 0.0;
}
//----------------------------------------------------------------------------------------------    
double Cohort::Realm() {
    return location->Realm();
}
//----------------------------------------------------------------------------------------------
void Cohort::TryLivingAt(GridCell* _destination) {
    if (_destination != 0 && _destination->Realm() == Realm())destination = _destination;
}
//----------------------------------------------------------------------------------------------
Location& Cohort::Here() {
    return *location;
}
bool Cohort::isMoving(){
    return location!=destination;
}
//----------------------------------------------------------------------------------------------
void Cohort::Move() {
    location->Move(*this);
}
//----------------------------------------------------------------------------------------------

bool Cohort::isMarine() {
    return location->isMarine();
}
//----------------------------------------------------------------------------------------------

bool Cohort::isPlanktonic(MadingleyModelInitialisation& params) {
    return (isMarine() &&
            ((IndividualBodyMass <= params.PlanktonDispersalThreshold) ||
            (params.CohortFunctionalGroupDefinitions.GetTraitNames("Mobility", FunctionalGroupIndex) == "planktonic")));
}
//----------------------------------------------------------------------------------------------
string Cohort::dispersalType(MadingleyModelInitialisation& params) {
    string dispersalName;
    if (isPlanktonic(params)) {
        // Advective dispersal
        dispersalName = "advective";
    }// Otherwise, if mature do responsive dispersal
    else if (isMature()) {
        dispersalName = "responsive";
    }// If the cohort is immature, run diffusive dispersal
    else {
        dispersalName = "diffusive";
    }
    return dispersalName;
}