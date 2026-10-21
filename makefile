include tools.mk
include graphics.mk
include wizardry.mk

# =============================
# = GENERATING EA DEFINITIONS =
# =============================

# Rule for .enums > evnum (enum event)
%.evnum: %.enum
	$(ENUM_DEFS) $< $(basename $<).evnum 32

# ===================
# = TEXT PROCESSING =
# ===================

TEXT_DIR 	 	 := $(realpath .)/Text
TEXT_DEFINITIONS := $(TEXT_DIR)/Definitions.event
TEXT_INSTALLER	 := $(TEXT_DIR)/Installer.event
TEXT_MAIN		 := $(TEXT_DIR)/Main.txt
TEXT_DEPENDS	 := $(shell $(EA_DEP) $(TEXT_MAIN) --add-missings)

$(TEXT_INSTALLER) $(TEXT_DEFINITIONS): $(TEXT_MAIN) $(TEXT_DEPENDS)
	cd $(TEXT_DIR) && $(TEXT_PROCESS) $(notdir $(TEXT_MAIN)) --installer $(notdir $(TEXT_INSTALLER)) --definitions $(notdir $(TEXT_DEFINITIONS)) --parser-exe $(PARSEFILE)

# =======================
# = MAP DATA PROCESSING =
# =======================

%.event %_data.dmp: %.tmx
	$(TMX2EA) $< > /dev/null

# For tileset config compression.
%.lz77: %.mapchip
	$(COMPRESS) $< > $@

# ================
# = MAIN TARGETS =
# ================

FE8_ROM  	 := FE8_clean.gba
HACK_ROM	 := dittohack.gba

MAIN_EVENT 	 := Main.event

MAIN_DEPENDS := $(shell $(EA_DEP) $(MAIN_EVENT) -I $(EA) --add-missings)

DIR_DEPENDS  := $(PORTRAIT_DMPS) $(BATTLE_PLATFORM_DMPS)

hack: $(FE8_ROM) $(MAIN_EVENT) $(DIR_DEPENDS) $(TEXT_INSTALLER) $(MAIN_DEPENDS)
	@cp -f $(FE8_ROM) $(HACK_ROM)
	$(COLORZCORE) A FE8 -input:$(MAIN_EVENT) -output:$(HACK_ROM) -W:no-redefine:no-set-symbol-macros || rm -f $(HACK_ROM)

clean:
	@rm -rf $(DIR_DEPENDS)
	@rm -f $(TEXT_DIR)/Installer.event $(TEXT_DIR)/Definitions.event
	@rm -rf $(TEXT_DIR)/.TextEntries
	@find . -name *.dmp -type f -delete
	@find . -name *.lz77 -type f -delete
	@find . -name *.pal -type f -delete
	@find . -name *.4bpp -type f -delete
	@find . -name *.mapchip.dmp -type f -delete
	@find . -name *.lyn.event -type f -delete
	@find . -name *.evnum -type f -delete
