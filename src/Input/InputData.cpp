#include "InputData.h"
#include "InputDatum.h"
#include "Logger.h"
#include "Variable.h"
#include "Constants.h"
#include "Convertor.h"

InputData::InputData( ) {

}

InputData::~InputData( ) {
    for( unsigned int index = 0; index < mInputDatumVector.size( ); ++index ) {
        delete mInputDatumVector[ index ];
    }
}

void InputData::AddVariableToDatum( const std::string& name, const std::string& variableName, const Types::UnsignedIntegerVector& variableDimensions, const unsigned int& variableSize, float* variableData, const bool isDefault ) {

    Types::InputDatumPointer datum = GetInputDatum( name, true );

    if( datum == NULL ) {
        mInputDatumVector.push_back( new InputDatum( name, variableName, variableDimensions, variableSize, variableData, isDefault ) );
    } else {
        datum->AddVariable( variableName, variableDimensions, variableSize, variableData, isDefault );
    }
}

Types::InputDatumPointer InputData::GetInputDatum( const std::string& name, const bool isInternalSearch ) {

    Types::InputDatumPointer inputDatum = NULL;

    for( unsigned int index = 0; index < mInputDatumVector.size( ); ++index ) {
        if( Convertor::Get( )->ToLowercase( mInputDatumVector[ index ]->GetName( ) ) == Convertor::Get( )->ToLowercase( name ) ) {
            inputDatum = mInputDatumVector[ index ];
            break;
        }
    }

    if( inputDatum == NULL && isInternalSearch == false ) {
        Logger::Get( )->LogMessage( "ERROR> Variable with name \"" + name + "\" is not found." );
    }

    return inputDatum;
}

Types::InputDatumPointer InputData::GetInputDatum( const unsigned int index ) {
    return mInputDatumVector[ index ];
}

unsigned int InputData::GetNumberOfInputDatums( ) {
    return mInputDatumVector.size( );
}