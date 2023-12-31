#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css...

sassc $SASSC_OPT Settings.scss ../../Dystopia/gtk-3.0/gtk.css

#sassc $SASSC_OPT ./Variations/Settings-RO.scss ../Variations/Myopia-RO/gtk-3.0/gtk.css

#sassc $SASSC_OPT ./Variations/Settings-RT.scss ../Variations/Myopia-RT/gtk-3.0/gtk.css

#sassc $SASSC_OPT ./Variations/Settings-ST.scss ../Variations/Myopia-ST/gtk-3.0/gtk.css
