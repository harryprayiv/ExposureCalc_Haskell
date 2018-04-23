# ExposureCalc_Haskell

It's still wrong as hell but this is the first commit.  These are the formulas pasted raw from Swift into the Haskell functions.  

I still have to translate the syntax into proper Haskell.  At the moment, it compiles but I'm not sure how correct it actually is.  

Loving Haskell so far.  Amazingly mind-opening!  Now I need a better REPL so I can get real-time feedback on stuff.

In swift, solve for EV: log2((100*(pow(aperture!,2)))/(iSO!*shutterTime!))
solve for Aperture: (sqrt(((exp2(LV!))*(iSO!*shutterTime!))/100)*100.0)/100.0
solve for ISO: (100*((pow(aperture!, 2))) / (exp2(LV!))/shutterTime!)
solve for Shutter: shutter (100*(pow(stop, 2)) / (exp2(ev)))/iso
