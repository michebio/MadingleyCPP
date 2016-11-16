#ifndef MORTALITYBACKGROUND
#define MORTALITYBACKGROUND

#include "UtilityFunctions.h"
#include "MortalityImplementation.h"

/** \brief A formulation of the process of background mortality, i.e. mortality from disease, accidents and other random events*/
class MortalityBackground : public MortalityImplementation {

public:
    /** \brief Constructor for background mortality: assigns all parameter values*/
    MortalityBackground( std::string );

    /** \brief Calculate the rate of individuals in a cohort that die from background mortality in a model time step
    @param actingCohort The position of the acting cohort in the jagged array of grid cell cohorts 
    @param currentTimestep The current model time step 
    @return The rate of individuals in the cohort that die from background mortality */
    double CalculateMortalityRate( Cohort&, double, unsigned );

private:
    /** \brief Include Utility class */
    UtilityFunctions mUtilities;
    /** \brief The time units associated with this implementation of dispersal*/
    const std::string mTimeUnitImplementation = "Day";
    /** \brief Cohort background mortality rate - the proportion of individuals dying in a time step */
    const double mMortailtyRate = 0.001;
    /** \brief Scalar to convert from the time step units used by this formulation of dispersal to global model time step units */
    double mDeltaT;
};
#endif
