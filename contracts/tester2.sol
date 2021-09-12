strategy(title- " Moving average average", oeverlay-true)

// Definitions
shortMa - sma(close, 20)
longMa - sma(close, 50)

// Logic
longSignal - crossover(shortMa, longMa)
shortMa - crossover(longMa, shortMa)

//