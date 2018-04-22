
stop :: Double -> Double
stop f = f * f

shutter :: Double -> Double
shutter s = 1 / s

iso :: Double -> Double
iso i = i / 100

ev :: Double -> Double
ev e = logBase e 2

-- Define evCalc (not entirely correct yet)
evCalc :: Double -> Double -> Double -> Double
evCalc iso shutter stop = logBase 2((stop)/(iso*shutter))
-- in swift: log2((100*(pow(aperture!,2)))/(iSO!*shutterTime!))
--__________________________________________________
--quick test of function
eValue = evCalc (stop 2.8) (iso 320.0) (shutter 48.0)

-- Define stopCalc
stopCalc :: Double -> Double -> Double -> Double
stopCalc iso shutter ev = undefined
--in swift (sqrt(((exp2(LV!))*(iSO!*shutterTime!))/100)*100.0)/100.0

-- Define isoCalc
isoCalc :: Double -> Double -> Double -> Double
isoCalc stop shutter ev = undefined
-- in swft (100*((pow(aperture!, 2))) / (exp2(LV!))/shutterTime!)

-- Define shutterCalc
shutterCalc :: Double -> Double -> Double -> Double
shutterCalc stop iso ev = undefined
-- in swift (100*(pow(stop, 2)) / (exp2(ev)))/iso
