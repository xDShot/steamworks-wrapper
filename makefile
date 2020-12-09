CC := g++
LIBNAME = steam_wrapper
OBJS = steam_wrapper.cpp
HEADERS = steam_wrapper.h
CFLAGS = -std=c++17 -Wall -shared -fPIC
DLIBEXT = .so
STEAMINC = -I$(STEAMWORKS_ROOT)/sdk/public/
STEAMDLL = -lsteam_api
STEAMDLLPATH = -L$(STEAMWORKS_ROOT)/sdk/redistributable_bin/linux64/
DLLNAME = $(LIBNAME)$(DLIBEXT)

all: $(DLLNAME)

$(DLLNAME): $(OBJS) $(HEADERS)
	$(CC) $(CFLAGS) $(STEAMINC) $(OBJS) -o $(DLLNAME) -Wl,$(STEAMDLLPATH),$(STEAMDLL)

clean:
	rm -rf *.o $(DLLNAME)
