LIBOFFICE := libreoffice
LOFLAGS := --headless --convert-to pdf

LY := lilypond

default: all

.PHONY:
all: mccartney_animation appendix score parts


.PHONY:
mccartney_animation: mccartney_animation.tex appendix score parts
	@ xelatex mccartney_animation.tex 

.PHONY:
appendix:
	@ $(LIBOFFICE) $(LOFLAGS) animation-appendix.odt

.PHONY:
score:
	@ $(LY) animation.ly

.PHONY:
parts: cembalo flutes harp recorders synth


.PHONY:
cembalo:
	@ $(LY) animation_part-cembalo.ly

.PHONY:
harp:
	@ $(LY) animation_part-harp.ly
.PHONY:
flutes:
	@ $(LY) animation_part-flutes.ly

.PHONY:
recorders:
	@ $(LY) animation_part-recorders.ly

.PHONY:
synth:
	@ $(LY) animation_part-synth.ly


.PHONY:
clean:
	@ rm *.pdf *.mid
