-- Define evCalc
ev :: Double -> Double -> Double -> Double
ev n i s = logBase 2 (100 * ((n ** 2) / (i * s)))

-- Define stopCalc
stop :: Double -> Double -> Double -> Double
stop e i s = (sqrt (((2 ** (e)) * (i * s))/100) * 100.0)/100.0

-- Define isoCalc
iso :: Double -> Double -> Double -> Double
iso n e s = (100 * (n ** 2) / (2 ** e)/ s)

-- Define shutterCalc
--shutter :: Double -> Double -> Double -> Double
--shutter n t = logBase 2 (100 * (n / ())))

ev 6.531972647421807 100.0 (1/48)
stop 11 100 (1/48)
iso 6.531972647421807 11.0 (1/48)
