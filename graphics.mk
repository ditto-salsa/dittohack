# =======================
# = GRAPHICS PROCESSING =
# =======================

# thanks contro really awesome args you have here
GRITLZ77ARGS		:= -gu 16 -gzl -gB 4 -p! -m! -ft bin -fh!
GRIT8BPPLZ77ARGS	:= -gu 16 -gzl -gB 8 -p! -m! -ft bin -fh!
GRIT4BPPARGS		:= -gu 16 -gB 4 -p! -m! -ft bin -fh!
GRIT2BPPARGS		:= -gu 16 -gb -gB 2 -p! -m! -ft bin -fh!
GRITPALETTEARGS		:= -g! -m! -p -ft bin -fh!
GRIT10PALETTEARGS	:= -g! -m! -p -pe 160 -ft bin -fh!

%.4bpp: %.png
	cd $(dir $@) && $(GRIT) $< $(GRIT4BPPARGS)
	@mv $(basename $<).img.bin $@

%.8bpp.lz77: %.png
	cd $(dir $<) && $(GRIT) $< $(GRIT8BPPLZ77ARGS)
	@mv $(basename $<).img.bin $@

%.fontchar: %.png
	cd $(dir $<) && $(GRIT) $< $(GRIT2BPPARGS)
	@mv $(basename $<).img.bin $@

%.lz77: %.png
	cd $(dir $<) && $(GRIT) $(notdir $<) $(GRITLZ77ARGS)
	@mv $(basename $<).img.bin $@

%.4bpp: %.png
	cd $(dir $<) && $(GRIT) $< $(GRIT4BPPARGS)
	@mv $(basename $<).img.bin $@

%.pal: %.png
	cd $(dir $<) && $(GRIT) $(notdir $<) $(GRITPALETTEARGS)
	@head -c 32 $(basename $<).pal.bin > $@
	@rm $(basename $<).pal.bin

$(PORTRAIT_DMPS):
	mkdir $@

%.portrait.event: ../img/%.png $(PORTRAIT_DMPS)
	$(PORTRAITFORMATTER) $<
	@mv $(basename $<)_mug.dmp $(dir $@)
	@mv $(basename $<)_minimug.dmp $(dir $@)
	@mv $(basename $<)_frames.dmp $(dir $@)
	@mv $(basename $<)_palette.dmp $(dir $@)
	$(INSTALLPORTRAITS) $< --output $@
