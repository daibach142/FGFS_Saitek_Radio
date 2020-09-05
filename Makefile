
# Simple makefile
#
SaitekRadioPanel: 
	$(error Run ./configure first)


PHONY: install clean uninstall

install:
	cp SaitekRadioPanel /usr/games
	cp StartPanel /usr/games
	cp demouseify /usr/games
	cp *.xml /usr/share/games/flightgear/Protocol
	mkdir -p ~/.fgfs/Nasal
	cp -r *.nas ~/.fgfs/Nasal

clean:
	rm SaitekRadioPanel StartPanel

uninstall:
	-pkill -9 SaitekRadioPanel
	-rm /usr/games/SaitekRadioPanel
	-rm /usr/games/StartPanel
	-rm /usr/games/demouseify
	-rm /usr/share/games/flightgear/Protocol/saitek_[io]*.xml
	-rm ~/.fgfs/Nasal/Saitek.nas






