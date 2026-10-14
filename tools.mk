# ====================
# = TOOL DEFINITIONS =
# ====================

# windows check!
ifeq ($(OS),Windows_NT)
	EXE := .exe
else
	EXE :=
endif

# making sure devkitARM exists and is set up
ifeq ($(strip $(DEVKITARM)),)
	$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

# including devkitARM tool definitions
include $(DEVKITARM)/base_tools

# Python variable for this evil language
PYTHON              := python3

# EA
EA 					:= $(realpath .)/Tools/EventAssembler
COLORZCORE			:= $(EA)/ColorzCore$(EXE)

SCRIPT_DIR          := $(realpath .)/Tools/Scripts

# Other tools
LYN 				:= $(realpath .)/Tools/lyn$(EXE)
EA_DEP 				:= $(realpath .)/Tools/ea-dep$(EXE)
ENUM_DEFS 			:= $(realpath .)/Tools/enum-defs/enum-defs$(EXE)
GRIT 				:= $(DEVKITPRO)/tools/bin/grit$(EXE)
PARSEFILE 			:= $(EA)/Tools/ParseFile$(EXE)
COMPRESS 			:= $(EA)/Tools/compress$(EXE)
PORTRAITFORMATTER 	:= $(EA)/Tools/PortraitFormatter$(EXE)
PORTRAITS2DMP       := $(PYTHON) $(SCRIPT_DIR)/portraits2dmp.py
TEXT_PROCESS		:= $(PYTHON) $(SCRIPT_DIR)/text-process-classic.py