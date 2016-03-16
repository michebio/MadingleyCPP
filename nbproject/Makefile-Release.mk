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
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Input/DataLayer.o \
	${OBJECTDIR}/src/Input/DataLayer2D.o \
	${OBJECTDIR}/src/Input/DataLayer2DwithTime.o \
	${OBJECTDIR}/src/Input/DataLayer3D.o \
	${OBJECTDIR}/src/Input/DataLayer3DwithTime.o \
	${OBJECTDIR}/src/Input/DataLayerProcessor.o \
	${OBJECTDIR}/src/Input/DataLayerSet.o \
	${OBJECTDIR}/src/Input/FileReader.o \
	${OBJECTDIR}/src/Input/GeoCoord.o \
	${OBJECTDIR}/src/Input/Indices.o \
	${OBJECTDIR}/src/Input/InputData.o \
	${OBJECTDIR}/src/Input/InputDatum.o \
	${OBJECTDIR}/src/Input/Parameters.o \
	${OBJECTDIR}/src/Input/Variable.o \
	${OBJECTDIR}/src/Model/Cohort.o \
	${OBJECTDIR}/src/Model/Environment.o \
	${OBJECTDIR}/src/Model/Stock.o \
	${OBJECTDIR}/src/Output/BasicDatum.o \
	${OBJECTDIR}/src/Output/DataRecorder.o \
	${OBJECTDIR}/src/Output/GridDatum.o \
	${OBJECTDIR}/src/Output/Logger.o \
	${OBJECTDIR}/src/Program.o \
	${OBJECTDIR}/src/Tools/Convertor.o \
	${OBJECTDIR}/src/Tools/DateTime.o \
	${OBJECTDIR}/src/Tools/Maths.o \
	${OBJECTDIR}/src/Tools/Processor.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/madingleycpp ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/Input/DataLayer.o: src/Input/DataLayer.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayer.o src/Input/DataLayer.cpp

${OBJECTDIR}/src/Input/DataLayer2D.o: src/Input/DataLayer2D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayer2D.o src/Input/DataLayer2D.cpp

${OBJECTDIR}/src/Input/DataLayer2DwithTime.o: src/Input/DataLayer2DwithTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayer2DwithTime.o src/Input/DataLayer2DwithTime.cpp

${OBJECTDIR}/src/Input/DataLayer3D.o: src/Input/DataLayer3D.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayer3D.o src/Input/DataLayer3D.cpp

${OBJECTDIR}/src/Input/DataLayer3DwithTime.o: src/Input/DataLayer3DwithTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayer3DwithTime.o src/Input/DataLayer3DwithTime.cpp

${OBJECTDIR}/src/Input/DataLayerProcessor.o: src/Input/DataLayerProcessor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayerProcessor.o src/Input/DataLayerProcessor.cpp

${OBJECTDIR}/src/Input/DataLayerSet.o: src/Input/DataLayerSet.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/DataLayerSet.o src/Input/DataLayerSet.cpp

${OBJECTDIR}/src/Input/FileReader.o: src/Input/FileReader.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/FileReader.o src/Input/FileReader.cpp

${OBJECTDIR}/src/Input/GeoCoord.o: src/Input/GeoCoord.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/GeoCoord.o src/Input/GeoCoord.cpp

${OBJECTDIR}/src/Input/Indices.o: src/Input/Indices.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/Indices.o src/Input/Indices.cpp

${OBJECTDIR}/src/Input/InputData.o: src/Input/InputData.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/InputData.o src/Input/InputData.cpp

${OBJECTDIR}/src/Input/InputDatum.o: src/Input/InputDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/InputDatum.o src/Input/InputDatum.cpp

${OBJECTDIR}/src/Input/Parameters.o: src/Input/Parameters.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/Parameters.o src/Input/Parameters.cpp

${OBJECTDIR}/src/Input/Variable.o: src/Input/Variable.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Input
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Input/Variable.o src/Input/Variable.cpp

${OBJECTDIR}/src/Model/Cohort.o: src/Model/Cohort.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Cohort.o src/Model/Cohort.cpp

${OBJECTDIR}/src/Model/Environment.o: src/Model/Environment.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Environment.o src/Model/Environment.cpp

${OBJECTDIR}/src/Model/Stock.o: src/Model/Stock.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Model
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model/Stock.o src/Model/Stock.cpp

${OBJECTDIR}/src/Output/BasicDatum.o: src/Output/BasicDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/BasicDatum.o src/Output/BasicDatum.cpp

${OBJECTDIR}/src/Output/DataRecorder.o: src/Output/DataRecorder.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/DataRecorder.o src/Output/DataRecorder.cpp

${OBJECTDIR}/src/Output/GridDatum.o: src/Output/GridDatum.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/GridDatum.o src/Output/GridDatum.cpp

${OBJECTDIR}/src/Output/Logger.o: src/Output/Logger.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Output
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Output/Logger.o src/Output/Logger.cpp

${OBJECTDIR}/src/Program.o: src/Program.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Program.o src/Program.cpp

${OBJECTDIR}/src/Tools/Convertor.o: src/Tools/Convertor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Convertor.o src/Tools/Convertor.cpp

${OBJECTDIR}/src/Tools/DateTime.o: src/Tools/DateTime.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/DateTime.o src/Tools/DateTime.cpp

${OBJECTDIR}/src/Tools/Maths.o: src/Tools/Maths.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Maths.o src/Tools/Maths.cpp

${OBJECTDIR}/src/Tools/Processor.o: src/Tools/Processor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src/Tools
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Tools/Processor.o src/Tools/Processor.cpp

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
