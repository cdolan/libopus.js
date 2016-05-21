#!/bin/sh
EMCONFIGURE=	emconfigure
EMMAKE=		emmake
EMCC=		emcc
EMCFLAGS=	-s EXPORTED_FUNCTIONS=@$(PWD)/export_symbols.json

OPUS_SRC=	opus
OPUS_CONFIGURE=	$(OPUS_SRC)/configure
OPUS_MAKEFILE=	$(OPUS_SRC)/Makefile
OPUS_LIB=	$(OPUS_SRC)/.libs/libopus.dylib
OPUS_JS=	libopus.js

all: $(OPUS_JS)

$(OPUS_JS): $(OPUS_LIB)
	$(EMCC) $(EMCFLAGS) $(OPUS_LIB) -o $@

$(OPUS_LIB): $(OPUS_MAKEFILE)
	cd $(OPUS_SRC) && $(EMMAKE) make

$(OPUS_MAKEFILE): $(OPUS_CONFIGURE)
	cd $(OPUS_SRC) && $(EMCONFIGURE) ./configure CFLAGS="-O3" --disable-extra-programs

$(OPUS_CONFIGURE):
	cd $(OPUS_SRC) && ./autogen.sh
