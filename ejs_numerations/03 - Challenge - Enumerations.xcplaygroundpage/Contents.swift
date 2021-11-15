//: [⇐ Previous: 02 - Enumerations](@previous)
//: ## Episode 03: Challenge - Enumerations

/*:
 ## Challenge 1
 Another handy use case for an enumeration is storing a specific set of strings you need to use!
 - Create a "Suit" enumeration with a `String` raw value type
 - Make a case for each string used to create an `Image` in the code below. (Watch for misspellings!)
 - Replace each use of a string with the raw value of an enumeration case
*/
enum Suit: String {
    case heart
    case club
    case spade
    case diamond
}
/*:
 ## Challenge 2
 Integer raw values don’t have to be in an incremental order! Coins are a good use case.
 
 - Create an enumeration called "Coin" and add cases for different types of coins.
 - Create an array called `coinPurse` that contains coins. Add an assortment of pennies, nickels, dimes, and quarters (or whatever coins you used!) to it.
*/
enum Coin: Double {
    case pennies = 0.01
    case dimes = 0.50
    case euro = 1.00
    case twoEuros = 2.00
}
let coinPurse: [Coin] = [.pennies, .pennies, .dimes, .twoEuros, .euro, .twoEuros]
/*:
 ## Bonus Challenge!
 Try using `reduce` to figure out how much money is in your coin purse.
 Remember to use the `rawValue` property!
*/
let money = coinPurse.reduce(0.0) { (result, coin) -> Double in
    result + coin.rawValue
}
money
//: [⇒ Next: 04 - Switch Statements](@next)
