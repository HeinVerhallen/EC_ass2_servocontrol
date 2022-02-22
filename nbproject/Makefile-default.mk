#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/debounce.c src/main.c src/oc.c src/pwm.c src/servo.c src/spiflash.c src/timer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/debounce.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/oc.o ${OBJECTDIR}/src/pwm.o ${OBJECTDIR}/src/servo.o ${OBJECTDIR}/src/spiflash.o ${OBJECTDIR}/src/timer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/debounce.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/oc.o.d ${OBJECTDIR}/src/pwm.o.d ${OBJECTDIR}/src/servo.o.d ${OBJECTDIR}/src/spiflash.o.d ${OBJECTDIR}/src/timer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/debounce.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/oc.o ${OBJECTDIR}/src/pwm.o ${OBJECTDIR}/src/servo.o ${OBJECTDIR}/src/spiflash.o ${OBJECTDIR}/src/timer.o

# Source Files
SOURCEFILES=src/debounce.c src/main.c src/oc.c src/pwm.c src/servo.c src/spiflash.c src/timer.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/debounce.o: src/debounce.c  .generated_files/2d08ff8d8bc18a2c0a71e13fb56579a2e1eba5d3.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/debounce.o.d 
	@${RM} ${OBJECTDIR}/src/debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/debounce.o.d" -o ${OBJECTDIR}/src/debounce.o src/debounce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/b549d87bcc2e4c0c78366cac9785440ca54b5933.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/oc.o: src/oc.c  .generated_files/69d52502f5ad171a4771a2df1671fad84d66d89d.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/oc.o.d 
	@${RM} ${OBJECTDIR}/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/oc.o.d" -o ${OBJECTDIR}/src/oc.o src/oc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/pwm.o: src/pwm.c  .generated_files/9cb0bb91ea8bcee95a1280bfcceb32cc36c92add.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/pwm.o.d" -o ${OBJECTDIR}/src/pwm.o src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/servo.o: src/servo.c  .generated_files/ff5972eff1b53d37bfcc24a41b27038b24340d35.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/servo.o.d 
	@${RM} ${OBJECTDIR}/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/servo.o.d" -o ${OBJECTDIR}/src/servo.o src/servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/spiflash.o: src/spiflash.c  .generated_files/942871721f9a28f71380dc90589c4b045d51c865.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/spiflash.o.d" -o ${OBJECTDIR}/src/spiflash.o src/spiflash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/timer.o: src/timer.c  .generated_files/9e8f2a897ac9f95c8584adf8d03d609e6b061921.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/timer.o.d" -o ${OBJECTDIR}/src/timer.o src/timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/src/debounce.o: src/debounce.c  .generated_files/f72828b5dee308a99f232347a5ad93df21fdb44f.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/debounce.o.d 
	@${RM} ${OBJECTDIR}/src/debounce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/debounce.o.d" -o ${OBJECTDIR}/src/debounce.o src/debounce.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/5689ed10ab31570ab0869f29abce026b02a9c6d1.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/oc.o: src/oc.c  .generated_files/fa123d4d27a30c728fd50f08a87b30900d911540.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/oc.o.d 
	@${RM} ${OBJECTDIR}/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/oc.o.d" -o ${OBJECTDIR}/src/oc.o src/oc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/pwm.o: src/pwm.c  .generated_files/b357ca1fc14f7558c7074f6260d5677f99121193.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/pwm.o.d" -o ${OBJECTDIR}/src/pwm.o src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/servo.o: src/servo.c  .generated_files/44ae637d54ef6fa31abd94ecef16c3e2423f3f68.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/servo.o.d 
	@${RM} ${OBJECTDIR}/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/servo.o.d" -o ${OBJECTDIR}/src/servo.o src/servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/spiflash.o: src/spiflash.c  .generated_files/da1e2ea020cf08306f0dd459298156ecdcf98dbd.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/spiflash.o.d" -o ${OBJECTDIR}/src/spiflash.o src/spiflash.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/timer.o: src/timer.c  .generated_files/39ca63af1a29dcb333f78f5e34aea0a183e4b7a9.flag .generated_files/da8f0b1eda593248125090b0bf7478c78018b200.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -I"inc" -MP -MMD -MF "${OBJECTDIR}/src/timer.o.d" -o ${OBJECTDIR}/src/timer.o src/timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EC_ass2_servocontrol.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
