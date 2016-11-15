#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Data/DataCoords.o \
	${OBJECTDIR}/src/Data/DataIndices.o \
	${OBJECTDIR}/src/Data/DataLayer.o \
	${OBJECTDIR}/src/Data/DataLayer2D.o \
	${OBJECTDIR}/src/Data/DataLayer2DwithTime.o \
	${OBJECTDIR}/src/Data/DataLayer3D.o \
	${OBJECTDIR}/src/Data/DataLayer3DwithTime.o \
	${OBJECTDIR}/src/Data/DataLayerProcessor.o \
	${OBJECTDIR}/src/Data/DataLayerSet.o \
	${OBJECTDIR}/src/Data/Layer2D.o \
	${OBJECTDIR}/src/Data/Layer3D.o \
	${OBJECTDIR}/src/Data/Variable.o \
	${OBJECTDIR}/src/Input/FileReader.o \
	${OBJECTDIR}/src/Input/InputData.o \
	${OBJECTDIR}/src/Input/InputDatum.o \
	${OBJECTDIR}/src/Input/Parameters.o \
	${OBJECTDIR}/src/Main.o \
	${OBJECTDIR}/src/Model/Activity.o \
	${OBJECTDIR}/src/Model/ApplyEcology.o \
	${OBJECTDIR}/src/Model/AutotrophProcessor.o \
	${OBJECTDIR}/src/Model/Cohort.o \
	${OBJECTDIR}/src/Model/CohortMerge.o \
	${OBJECTDIR}/src/Model/Dispersal.o \
	${OBJECTDIR}/src/Model/DispersalImplementation.o \
	${OBJECTDIR}/src/Model/Eating.o \
	${OBJECTDIR}/src/Model/EcologyCohort.o \
	${OBJECTDIR}/src/Model/EcologyStock.o \
	${OBJECTDIR}/src/Model/Environment.o \
	${OBJECTDIR}/src/Model/FunctionalGroupDefinitions.o \
	${OBJECTDIR}/src/Model/Grid.o \
	${OBJECTDIR}/src/Model/GridCell.o \
	${OBJECTDIR}/src/Model/Location.o \
	${OBJECTDIR}/src/Model/Madingley.o \
	${OBJECTDIR}/src/Model/MadingleyInitialisation.o \
	${OBJECTDIR}/src/Model/Metabolism.o \
	${OBJECTDIR}/src/Model/Pear.o \
	${OBJECTDIR}/src/Model/Stock.o \
	${OBJECTDIR}/src/Model/Time.o \
	${OBJECTDIR}/src/Output/BasicDatum.o \
	${OBJECTDIR}/src/Output/DataRecorder.o \
	${OBJECTDIR}/src/Output/FileWriter.o \
	${OBJECTDIR}/src/Output/GridDatum.o \
	${OBJECTDIR}/src/Output/Logger.o \
	${OBJECTDIR}/src/Tools/Convertor.o \
	${OBJECTDIR}/src/Tools/Date.o \
	${OBJECTDIR}/src/Tools/Maths.o \
	${OBJECTDIR}/src/Tools/Processor.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-g -std=c++11
CXXFLAGS=-g -std=c++11

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/home/philju/Libraries/netcdf-cxx4-4.3/lib/libnetcdf_c++4.a /home/philju/Libraries/netcdf-4.4.1/lib/libnetcdf.a /home/philju/Libraries/hdf5-1.8.17/lib/libhdf5_hl.a /home/philju/Libraries/hdf5-1.8.17/lib/libhdf5.a /home/philju/Libraries/zlib-1.2.8/lib/libz.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: /home/philju/Libraries/netcdf-cxx4-4.3/lib/libnetcdf_c++4.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: /home/philju/Libraries/netcdf-4.4.1/lib/libnetcdf.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: /home/philju/Libraries/hdf5-1.8.17/lib/libhdf5_hl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: /home/philju/Libraries/hdf5-1.8.17/lib/libhdf5.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: /home/philju/Libraries/zlib-1.2.8/lib/libz.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp ${OBJECTFILES} ${LDLIBSOPTIONS} -ldl

${OBJECTDIR}/src/Data/DataCoords.o: src/Data/DataCoords.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataCoords.o src/Data/DataCoords.cpp

${OBJECTDIR}/src/Data/DataIndices.o: src/Data/DataIndices.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataIndices.o src/Data/DataIndices.cpp

${OBJECTDIR}/src/Data/DataLayer.o: src/Data/DataLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayer.o src/Data/DataLayer.cpp

${OBJECTDIR}/src/Data/DataLayer2D.o: src/Data/DataLayer2D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayer2D.o src/Data/DataLayer2D.cpp

${OBJECTDIR}/src/Data/DataLayer2DwithTime.o: src/Data/DataLayer2DwithTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayer2DwithTime.o src/Data/DataLayer2DwithTime.cpp

${OBJECTDIR}/src/Data/DataLayer3D.o: src/Data/DataLayer3D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayer3D.o src/Data/DataLayer3D.cpp

${OBJECTDIR}/src/Data/DataLayer3DwithTime.o: src/Data/DataLayer3DwithTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayer3DwithTime.o src/Data/DataLayer3DwithTime.cpp

${OBJECTDIR}/src/Data/DataLayerProcessor.o: src/Data/DataLayerProcessor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayerProcessor.o src/Data/DataLayerProcessor.cpp

${OBJECTDIR}/src/Data/DataLayerSet.o: src/Data/DataLayerSet.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/DataLayerSet.o src/Data/DataLayerSet.cpp

${OBJECTDIR}/src/Data/Layer2D.o: src/Data/Layer2D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/Layer2D.o src/Data/Layer2D.cpp

${OBJECTDIR}/src/Data/Layer3D.o: src/Data/Layer3D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/Layer3D.o src/Data/Layer3D.cpp

${OBJECTDIR}/src/Data/Variable.o: src/Data/Variable.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Data/Variable.o src/Data/Variable.cpp

${OBJECTDIR}/src/Input/FileReader.o: src/Input/FileReader.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/FileReader.o src/Input/FileReader.cpp

${OBJECTDIR}/src/Input/InputData.o: src/Input/InputData.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/InputData.o src/Input/InputData.cpp

${OBJECTDIR}/src/Input/InputDatum.o: src/Input/InputDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/InputDatum.o src/Input/InputDatum.cpp

${OBJECTDIR}/src/Input/Parameters.o: src/Input/Parameters.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/Parameters.o src/Input/Parameters.cpp

${OBJECTDIR}/src/Main.o: src/Main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Main.o src/Main.cpp

${OBJECTDIR}/src/Model/Activity.o: src/Model/Activity.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Activity.o src/Model/Activity.cpp

${OBJECTDIR}/src/Model/ApplyEcology.o: src/Model/ApplyEcology.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/ApplyEcology.o src/Model/ApplyEcology.cpp

${OBJECTDIR}/src/Model/AutotrophProcessor.o: src/Model/AutotrophProcessor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/AutotrophProcessor.o src/Model/AutotrophProcessor.cpp

${OBJECTDIR}/src/Model/Cohort.o: src/Model/Cohort.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Cohort.o src/Model/Cohort.cpp

${OBJECTDIR}/src/Model/CohortMerge.o: src/Model/CohortMerge.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/CohortMerge.o src/Model/CohortMerge.cpp

${OBJECTDIR}/src/Model/Dispersal.o: src/Model/Dispersal.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Dispersal.o src/Model/Dispersal.cpp

${OBJECTDIR}/src/Model/DispersalImplementation.o: src/Model/DispersalImplementation.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/DispersalImplementation.o src/Model/DispersalImplementation.cpp

${OBJECTDIR}/src/Model/Eating.o: src/Model/Eating.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Eating.o src/Model/Eating.cpp

${OBJECTDIR}/src/Model/EcologyCohort.o: src/Model/EcologyCohort.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/EcologyCohort.o src/Model/EcologyCohort.cpp

${OBJECTDIR}/src/Model/EcologyStock.o: src/Model/EcologyStock.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/EcologyStock.o src/Model/EcologyStock.cpp

${OBJECTDIR}/src/Model/Environment.o: src/Model/Environment.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Environment.o src/Model/Environment.cpp

${OBJECTDIR}/src/Model/FunctionalGroupDefinitions.o: src/Model/FunctionalGroupDefinitions.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/FunctionalGroupDefinitions.o src/Model/FunctionalGroupDefinitions.cpp

${OBJECTDIR}/src/Model/Grid.o: src/Model/Grid.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Grid.o src/Model/Grid.cpp

${OBJECTDIR}/src/Model/GridCell.o: src/Model/GridCell.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/GridCell.o src/Model/GridCell.cpp

${OBJECTDIR}/src/Model/Location.o: src/Model/Location.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Location.o src/Model/Location.cpp

${OBJECTDIR}/src/Model/Madingley.o: src/Model/Madingley.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Madingley.o src/Model/Madingley.cpp

${OBJECTDIR}/src/Model/MadingleyInitialisation.o: src/Model/MadingleyInitialisation.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/MadingleyInitialisation.o src/Model/MadingleyInitialisation.cpp

${OBJECTDIR}/src/Model/Metabolism.o: src/Model/Metabolism.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Metabolism.o src/Model/Metabolism.cpp

${OBJECTDIR}/src/Model/Pear.o: src/Model/Pear.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Pear.o src/Model/Pear.cpp

${OBJECTDIR}/src/Model/Stock.o: src/Model/Stock.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Stock.o src/Model/Stock.cpp

${OBJECTDIR}/src/Model/Time.o: src/Model/Time.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Time.o src/Model/Time.cpp

${OBJECTDIR}/src/Output/BasicDatum.o: src/Output/BasicDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/BasicDatum.o src/Output/BasicDatum.cpp

${OBJECTDIR}/src/Output/DataRecorder.o: src/Output/DataRecorder.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/DataRecorder.o src/Output/DataRecorder.cpp

${OBJECTDIR}/src/Output/FileWriter.o: src/Output/FileWriter.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/FileWriter.o src/Output/FileWriter.cpp

${OBJECTDIR}/src/Output/GridDatum.o: src/Output/GridDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/GridDatum.o src/Output/GridDatum.cpp

${OBJECTDIR}/src/Output/Logger.o: src/Output/Logger.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/Logger.o src/Output/Logger.cpp

${OBJECTDIR}/src/Tools/Convertor.o: src/Tools/Convertor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Convertor.o src/Tools/Convertor.cpp

${OBJECTDIR}/src/Tools/Date.o: src/Tools/Date.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Date.o src/Tools/Date.cpp

${OBJECTDIR}/src/Tools/Maths.o: src/Tools/Maths.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Maths.o src/Tools/Maths.cpp

${OBJECTDIR}/src/Tools/Processor.o: src/Tools/Processor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -g -Isrc -Isrc/Data -Isrc/Input -Isrc/Model -Isrc/Output -Isrc/Tools -I/home/philju/Libraries/netcdf-cxx4-4.3/include -I/home/philju/Libraries/netcdf-4.4.1/include -I/home/philju/Libraries/hdf5-1.8.17/include -I/home/philju/Libraries/zlib-1.2.8/include/ -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Processor.o src/Tools/Processor.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
