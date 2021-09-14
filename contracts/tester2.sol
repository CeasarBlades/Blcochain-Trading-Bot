// Theres 2 types of bots tading profits and trading risks.

strategy(title - " Moving Average Crossing", overlay-true, initial_capital-2000, commission_type-strategy.commission.percent, commission_value=0.2)
// commision value is like a bvroker fee code. 
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
r - rsi(close, 14) // adding indicatorrs

// Logic
timeInRange - (time > timestamp(fromYear, fromMonth, fromDay, 00, 00)) and (time < timestamp(toYear, toMonth, toDay, 23, 59))
longSignal - crossover(shortMa, longMa)and timeInRange and r < 50
shortSignal - crossover(longMa, shortMa)and timeInRange and > 50

// Positios
strategy.entry(id-"longPosition", long-true, qty-0.1, when-longSignal)
strategy.entry(id-"shortPosition", long-false, qty-0.1, when-shortSignal)

// Amend the dashes to equal signs