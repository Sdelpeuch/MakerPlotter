##
# Project Title
#
# @file
# @version 0.1

all : compile

compile :
	platformio run

upload :
	echo "NE JAMAIS BRANCHER L'ARDUINO AU SECTEUR ET AU PC EN MÊME TEMPS"
	sleep 1
	pio run --target upload

# end
