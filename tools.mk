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

# making sure we are using python 3
ifeq ($(shell python3 -c 'import sys; print(int(sys.version_info[0] > 2))'),1)
	export PYTHON3 := python
else
	export PYTHON3 := python3
endif

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
INSTALLPORTAITS     := $(PYTHON3) $(SCRIPT_DIR)/PortraitInstallerGenerator.py