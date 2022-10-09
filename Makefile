SOURCE_DIR := src

GENERATED_FILES = src/*.pdf src/*.midi

all: score

.PHONY:
score:
	$(MAKE) -C $(SOURCE_DIR)


.PHONY:
clean:
	rm $(GENERATED_FILES) 



