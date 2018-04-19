
stop ::  Double -> Double
stop f = (f **)

ev :: Double -> Double
ev e = logBase e 2

iso ::  Double -> Double
iso i = (i/100)

shutter ::  Double -> Double
shutter x = (x/48)

-- Define evCalc
evCalc :: Double -> Double -> Double -> Double
evCalc stop iso shutter = logBase 2((100*(pow(stop,2)))/(iso*shutter))

-- Define stopCalc
stopCalc :: Double -> Double -> Double -> Double
stopCalc iso shutter ev = (sqrt(((exp2(ev))*(iso*shutter))/100)*100.0)/100.0

-- Define isoCalc
isoCalc :: Double -> Double -> Double -> Double
isoCalc stop shutter ev = (100*((pow(stop, 2))) / (exp2(ev))/shutter)

-- Define shutterCalc
shutterCalc :: Double -> Double -> Double -> Double
shutterCalc stop iso ev = (100*(pow(stop, 2)) / (exp2(ev)))/iso
