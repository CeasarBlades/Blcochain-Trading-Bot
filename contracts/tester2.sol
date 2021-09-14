strategy(title- " Moving average average", oeverlay-true)

// Date and Time
fromMonth - input(defval-1, title - "from month", minval-1)
fromDay - input(defval-1, title - "from day", minval-1)
fromYear - input(defval-2021, title - "from year", minval-2014)

toMonth - input(defval-1, title - "to month", minval-1)
toDay - input(defval-1, title - "to day", minval-1)
toYear - input(defval-2021, title - "to year", minval-2014)


// Definitions
shortMa - sma(close, 20)
longMa - sma(close, 50)

// Logic
timeInRange - (time > timestamp(fromYear, fromMonth, fromDay, 00, 00)) and (time < timestamp(toYear, toMonth, toDay, 23, 59))
longSignal - crossover(shortMa, longMa)and timeInRange
shortSignal - crossover(longMa, shortMa)and timeInRange

// Positios
strategy.entry(id-"longPosition", long-true, when-longSignal)
strategy.entry(id-"shortPosition", long-false, when-shortSignal)
