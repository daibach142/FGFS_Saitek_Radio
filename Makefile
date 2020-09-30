#
# Simple makefile
#
SaitekRadioPanel: 
	$(error Run ./configure first)


PHONY: install clean uninstall help

help:
	@echo "     'make help'      produces this text."
	@echo "     'make'           with no options make the Radio Panel."
	@echo "'sudo make install'   moves all files to their locations."     
	@echo "'sudo make uninstall' removes all installed files."
	@echo "     'make clean'     removes some generated files."

install:
	cp SaitekRadioPanel /usr/games
	cp StartPanel /usr/games
	cp *.xml /usr/share/games/flightgear/Protocol
	mkdir -p ~/.fgfs/Nasal
	cp -r *.nas ~/.fgfs/Nasal
	cp 55-saitekradiopanel.conf /usr/share/X11/xorg.conf.d
	cp 55-saitek.rules /etc/udev/rules.d
	udevadm control --reload

clean:
	rm SaitekRadioPanel StartPanel

uninstall:
	-pkill -9 SaitekRadioPanel
	-rm /usr/games/SaitekRadioPanel
	-rm /usr/games/StartPanel
	-rm /usr/share/games/flightgear/Protocol/saitek_[io]*.xml
	-rm ~/.fgfs/Nasal/Saitek.nas
	-rm /usr/share/X11/xorg.conf.d/55-saitekradiopanel.conf
	-rm /etc/udev/rules.d/55-saitek.rules
	udevadm control --reload






