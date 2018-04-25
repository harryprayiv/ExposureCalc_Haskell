-- Calculate EV from F-stop, ISO, and shutter speed
ev :: Double -> Double -> Double -> Double
ev n i s = logBase 2 (100 * ((n ** 2) / (i * s)))

-- Calculate F-stop from EV, ISO, and shutter speed
stop :: Double -> Double -> Double -> Double
stop e i s = sqrt ((2 ** e) * (i * s)/100.0)

-- Calculate ISO from EV, F-stop, and shutter speed
iso :: Double -> Double -> Double -> Double
iso n e s = 100 * (n ** 2) / (2 ** e) / s

-- Calculate shutter speed from EV, F-stop, and ISO
shutter :: Double -> Double -> Double -> Double
shutter n i e = (100 * (n ** 2)) / (2 ** e) / i
