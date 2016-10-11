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
ifeq "$(wildcard nbproject/Makefile-local-MX4_USB.mk)" "nbproject/Makefile-local-MX4_USB.mk"
include nbproject/Makefile-local-MX4_USB.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MX4_USB
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../crt0.S ../cdcacm.c ../usb.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/crt0.o ${OBJECTDIR}/_ext/1472/cdcacm.o ${OBJECTDIR}/_ext/1472/usb.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/crt0.o.d ${OBJECTDIR}/_ext/1472/cdcacm.o.d ${OBJECTDIR}/_ext/1472/usb.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/crt0.o ${OBJECTDIR}/_ext/1472/cdcacm.o ${OBJECTDIR}/_ext/1472/usb.o

# Source Files
SOURCEFILES=../main.c ../crt0.S ../cdcacm.c ../usb.c


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

# The following macros may be used in the pre and post step lines
Device=PIC32MX460F512L
ProjectDir="D:\Projects\chipKIT-digiboot\source\chipKIT-Bootloaders.X"
ConfName=MX4_USB
ImagePath="dist\MX4_USB\${IMAGE_TYPE}\chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\MX4_USB\${IMAGE_TYPE}"
ImageName="chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-MX4_USB.mk dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy /Y /B dist\${ConfName}\production\chipKIT-Bootloaders.X.production.hex ..\..\BootloadersCurrent-hex\Cerebot-32MX4-USB.hex]"
	@copy /Y /B dist\${ConfName}\production\chipKIT-Bootloaders.X.production.hex ..\..\BootloadersCurrent-hex\Cerebot-32MX4-USB.hex
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=,--script="..\MX3-7-boot-linkerscript.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/crt0.o: ../crt0.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o.ok ${OBJECTDIR}/_ext/1472/crt0.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crt0.o.d" "${OBJECTDIR}/_ext/1472/crt0.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/crt0.o.d"  -o ${OBJECTDIR}/_ext/1472/crt0.o ../crt0.S  -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/crt0.o.asm.d",--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,-I".."
	
else
${OBJECTDIR}/_ext/1472/crt0.o: ../crt0.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0.o.ok ${OBJECTDIR}/_ext/1472/crt0.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crt0.o.d" "${OBJECTDIR}/_ext/1472/crt0.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/crt0.o.d"  -o ${OBJECTDIR}/_ext/1472/crt0.o ../crt0.S  -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/crt0.o.asm.d",--gdwarf-2,-I".."
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/cdcacm.o: ../cdcacm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/cdcacm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/cdcacm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/cdcacm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/cdcacm.o.d" -o ${OBJECTDIR}/_ext/1472/cdcacm.o ../cdcacm.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/usb.o: ../usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/usb.o.d" -o ${OBJECTDIR}/_ext/1472/usb.o ../usb.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/cdcacm.o: ../cdcacm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/cdcacm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/cdcacm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/cdcacm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/cdcacm.o.d" -o ${OBJECTDIR}/_ext/1472/cdcacm.o ../cdcacm.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/usb.o: ../usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mips16 -mno-float -Os -D_BOARD_CEREBOT_32MX4_USB_ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/usb.o.d" -o ${OBJECTDIR}/_ext/1472/usb.o ../usb.c    -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../MX3-7-boot-linkerscript.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION) -nostdlib -nostartfiles -mips16 -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/MX7cK.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-Os
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../MX3-7-boot-linkerscript.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -nostdlib -nostartfiles -mips16 -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MX4_USB=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/MX7cK.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-Os
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/MX4_USB
	${RM} -r dist/MX4_USB

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif