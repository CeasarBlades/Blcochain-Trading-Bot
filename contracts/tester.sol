strategy(title= "MAStrategy")

m=sma(close, 10)
buy-close > #
sell-close < #

strategy.entry("buy", true, 5, when-buy)

startegy.close("buy", when=sell)

// // strategy(title= "MAStrategy")

// m=sma(close, 10)
// buy-close > # is pretty much a boolean that buys bitcoin or the security  when the moving is above that  
// sell-close < # this is the opposite it sells when the moving average is below as shown by the greater and lesser than symbol.

// strategy.entry("buy", true, 5, when-buy also can written as “when-buy > #”) name = buy, position is long would a  true ina boolean, 5 is the amount stated to buy bitcoin when it reaches this strategy.

// startegy.close("buy", when=sell) opposite of the above

// Above is a simple strategy of a starting a bot so you’ll either name strategy entry or close 
