SRCS = candump.c

OBJS = out/hyt_can

# for arm
# LIBS += -lvpu -lipu -lrt

INC += -I./

CFLAGS 	+= -Wall -Wstrict-prototypes -Wno-trigraphs -O2 \
	  	   -fno-strict-aliasing -fno-common -lpthread

$(OBJS): $(SRCS)
	mkdir -p ./out
	$(VERBOSE) $(CC) -g $(INC) $(CFLAGS) $^ $(LIBS) -o $@

# arm-linux-gnueabihf-g++ -g $(INC) $^ $(LIBS) -o $@
# $(VERBOSE) $(CC) -g $(INC) $(CFLAGS) $^ $(LIBS) -o $@

all: $(OBJS)

.PHONY: clean
clean:
	rm -rf out
