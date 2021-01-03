MAKE := make

all: linux32 linux64 win32 win64
	
linux32:
	$(MAKE) -f makefile.linux32

linux64:
	$(MAKE) -f makefile.linux64

win32:
	$(MAKE) -f makefile.win32

win64:
	$(MAKE) -f makefile.win64

	
clean:
	$(MAKE) -f makefile.linux32 clean
	$(MAKE) -f makefile.linux64 clean
	$(MAKE) -f makefile.win32 clean
	$(MAKE) -f makefile.win64 clean
