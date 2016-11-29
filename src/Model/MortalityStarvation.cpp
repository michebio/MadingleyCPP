#include "MortalityStarvation.h"

MortalityStarvation::MortalityStarvation( std::string globalModelTimeStepUnit ) {
    mTimeUnitImplementation = "Day";
    mLogisticInflectionPoint = 0.6;
    mLogisticScalingParameter = 0.05;
    mMaximumStarvationRate = 1;
    
    //Calculate the scalar to convert from the time step units used by this implementation of mortality to the global model time step units
    mDeltaT = mUtilities.ConvertTimeUnits( globalModelTimeStepUnit, mTimeUnitImplementation );
}

double MortalityStarvation::CalculateMortalityRate( Cohort& actingCohort, double bodyMassIncludingChangeThisTimeStep, unsigned currentTimestep ) {
    // Calculate the starvation rate of the cohort given individual body masses compared to the maximum body
    // mass ever achieved
    double MortalityRate = CalculateStarvationRate( actingCohort, bodyMassIncludingChangeThisTimeStep );

    // Convert the mortality rate from formulation time step units to model time step units
    return MortalityRate * mDeltaT;
}

double MortalityStarvation::CalculateStarvationRate( Cohort& actingCohort, double bodyMassIncludingChangeThisTimeStep ) {
    if( bodyMassIncludingChangeThisTimeStep < actingCohort.mMaximumAchievedBodyMass ) {
        // Calculate the first part of the relationship between body mass and mortality rate
        double k = -( bodyMassIncludingChangeThisTimeStep - mLogisticInflectionPoint * actingCohort.mMaximumAchievedBodyMass ) / ( mLogisticScalingParameter * actingCohort.mMaximumAchievedBodyMass );
        // Calculate mortality rate
        return mMaximumStarvationRate / ( 1 + exp( -k ) );
    } else
        return 0;
}

