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
ifeq "$(wildcard nbproject/Makefile-local-WiFIRE_EF_252MHz.mk)" "nbproject/Makefile-local-WiFIRE_EF_252MHz.mk"
include nbproject/Makefile-local-WiFIRE_EF_252MHz.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=WiFIRE_EF_252MHz
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

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../main.c ../crt0MZ.S ../pic32_init_cache.S ../pic32_init_tlb_ebi_sqi.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/crt0MZ.o ${OBJECTDIR}/_ext/1472/pic32_init_cache.o ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/crt0MZ.o.d ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/crt0MZ.o ${OBJECTDIR}/_ext/1472/pic32_init_cache.o ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o

# Source Files
SOURCEFILES=../main.c ../crt0MZ.S ../pic32_init_cache.S ../pic32_init_tlb_ebi_sqi.S


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
Device=PIC32MZ2048EFH144
ProjectDir="D:\Users\tsui\Desktop\hestia\chipKIT-digiboot\source\chipKIT-Bootloaders.X"
ConfName=WiFIRE_EF_252MHz
ImagePath="dist\WiFIRE_EF_252MHz\${IMAGE_TYPE}\chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\WiFIRE_EF_252MHz\${IMAGE_TYPE}"
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
	${MAKE}  -f nbproject/Makefile-WiFIRE_EF_252MHz.mk dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy /Y /B dist\${ConfName}\production\chipKIT-Bootloaders.X.production.hex ..\..\BootloadersCurrent-hex\chipKIT-WiFire-EF-252MHZ.hex]"
	@copy /Y /B dist\${ConfName}\production\chipKIT-Bootloaders.X.production.hex ..\..\BootloadersCurrent-hex\chipKIT-WiFire-EF-252MHZ.hex
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MZ2048EFH144
MP_LINKER_FILE_OPTION=,--script="..\MZ-boot-linkerscript.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/crt0MZ.o: ../crt0MZ.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o.ok ${OBJECTDIR}/_ext/1472/crt0MZ.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crt0MZ.o.d" "${OBJECTDIR}/_ext/1472/crt0MZ.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/crt0MZ.o.d"  -o ${OBJECTDIR}/_ext/1472/crt0MZ.o ../crt0MZ.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/crt0MZ.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
${OBJECTDIR}/_ext/1472/pic32_init_cache.o: ../pic32_init_cache.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.ok ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d" "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d"  -o ${OBJECTDIR}/_ext/1472/pic32_init_cache.o ../pic32_init_cache.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/pic32_init_cache.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o: ../pic32_init_tlb_ebi_sqi.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.ok ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d" "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d"  -o ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o ../pic32_init_tlb_ebi_sqi.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
else
${OBJECTDIR}/_ext/1472/crt0MZ.o: ../crt0MZ.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o 
	@${RM} ${OBJECTDIR}/_ext/1472/crt0MZ.o.ok ${OBJECTDIR}/_ext/1472/crt0MZ.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crt0MZ.o.d" "${OBJECTDIR}/_ext/1472/crt0MZ.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/crt0MZ.o.d"  -o ${OBJECTDIR}/_ext/1472/crt0MZ.o ../crt0MZ.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/crt0MZ.o.asm.d",--gdwarf-2,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
${OBJECTDIR}/_ext/1472/pic32_init_cache.o: ../pic32_init_cache.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.ok ${OBJECTDIR}/_ext/1472/pic32_init_cache.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d" "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/pic32_init_cache.o.d"  -o ${OBJECTDIR}/_ext/1472/pic32_init_cache.o ../pic32_init_cache.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/pic32_init_cache.o.asm.d",--gdwarf-2,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o: ../pic32_init_tlb_ebi_sqi.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o 
	@${RM} ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.ok ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d" "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.d"  -o ${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o ../pic32_init_tlb_ebi_sqi.S  -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/pic32_init_tlb_ebi_sqi.o.asm.d",--gdwarf-2,-I".." -DPIC32MZ -DINIT_MMU_MZ_FIXED -DINIT_SSX -DINIT_L1_CACHE -DINIT_DSPR2 -DPIC32_SRS_SET_COUNT=8 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-float -O2 -D_BOARD_CHIPKIT_WIFIRE_EF_252MHZ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-float -O2 -D_BOARD_CHIPKIT_WIFIRE_EF_252MHZ -I".." -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../MZ-boot-linkerscript.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -nostdlib -nostartfiles -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/MX7cK.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-Os,
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../MZ-boot-linkerscript.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -nostdlib -nostartfiles -mno-float -o dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_WiFIRE_EF_252MHz=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../../Program Files (x86)/Microchip/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/MX7cK.X.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-Os,
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/chipKIT-Bootloaders.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/WiFIRE_EF_252MHz
	${RM} -r dist/WiFIRE_EF_252MHz

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
