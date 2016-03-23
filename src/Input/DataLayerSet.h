#ifndef DATALAYERSET
#define	DATALAYERSET

#include "Types.h"


class DataLayerSet {
public:
    ~DataLayerSet( );
    static Types::DataLayerSetPointer Get( );
    
    Types::DataLayerPointer GetDataLayerWithName( const std::string& );
    void SetDataLayers( const Types::InputDataPointer );
    
    Types::VariablePointer GetDefaultVariableFor( const std::string& );
    float GetDataAtGeoCoordFor( const std::string, const Types::DataCoordsPointer );
    float GetDataAtIndicesFor( const std::string, const Types::DataIndicesPointer );
    
private:
    DataLayerSet( );
    
    static Types::DataLayerSetPointer mThis;
    
    Types::DataLayerMap mDataLayerMap;
};

#endif

