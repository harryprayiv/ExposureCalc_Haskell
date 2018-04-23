# ExposureCalc_Haskell

In Haskell, Camera exposure settings can be broken down into four equations
solve for EV: logBase 2 (100 * ((n ** 2) / (i * s)))
solve for Aperture: (sqrt (((2 ** e) * (i * s))/100) * 100.0)/100.0
solve for ISO: 100 * (n ** 2) / (2 ** e)/ s
solve for Shutter: (100 * (n ** 2)) / (2 ** e) / i
