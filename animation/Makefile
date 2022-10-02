LIBOFFICE := libreoffice
LOFLAGS := --headless --convert-to pdf

LY := lilypond

default: all

.PHONY:
all: appendix score parts

.PHONY:
appendix:
	@ $(LIBOFFICE) $(LOFLAGS) animation-appendix.odt

.PHONY:
score:
	@ $(LY) animation.ly

.PHONY:
parts: fl-tr-recorder fl-snd-cembalo cembalo flutes harp recorders synth

.PHONY:
fl-tr-recorder:
	@ $(LY) animation_fl-tr+recorder.ly

.PHONY:
fl-snd-cembalo:
	@ $(LY) animation_fl-snd-cembalo.ly

.PHONY:
fl-snd-cembalo-synth:
	@ $(LY) fl-snd-cembalo-synth.ly

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
