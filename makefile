include tools.mk
include graphics.mk
include wizardry.mk

# =============================
# = GENERATING EA DEFINITIONS =
# =============================

# Rule for .enums > evnum (slang for event enum)
%.evnum: %.enum
	$(ENUM_DEFS) $< $(basename $<).evnum 32

# ================
# = MAIN TARGETS =
# ================

FE8_ROM := FE8_clean.gba
HACK_ROM := dittohack.gba
MAIN_EVENT := Main.event

PORTRAIT_DMPS := $(realpath .)/Graphics/Portraits/dmp

MAIN_DEPENDS := $(shell $(EA_DEP) $(MAIN_EVENT) -I $(EA) --add-missings)

hack: $(FE8_ROM) $(MAIN_EVENT) $(MAIN_DEPENDS)
	cp -f $(FE8_ROM) $(HACK_ROM)
	$(COLORZCORE) A FE8 -input:$(MAIN_EVENT) -output:$(HACK_ROM) -W:no-redefine:no-set-symbol-macros || rm -f $(HACK_ROM)

hack-wall: $(FE8_ROM) $(MAIN_EVENT) $(PORTRAIT_DMPS) $(MAIN_DEPENDS) 
	cp -f $(FE8_ROM) $(HACK_ROM)
	$(COLORZCORE) A FE8 -input:$(MAIN_EVENT) -output:$(HACK_ROM) --build-times -W:all || rm -f $(HACK_ROM)

clean:
	@rm -rf $(PORTRAIT_DMPS)/*
	@find . -name *.lz77 -type f -delete
	@find . -name *.pal -type f -delete
	@find . -name *.4bpp -type f -delete
	@find . -name *.mapchip.dmp -type f -delete
	@find . -name *.lyn.event -type f -delete
	@find . -name *.evnum -type f -delete
