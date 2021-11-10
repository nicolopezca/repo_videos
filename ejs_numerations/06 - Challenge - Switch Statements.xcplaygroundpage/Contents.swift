//: [⇐ Previous: 05 - More Switch Statements](@previous)
//: ## Episode 06: Challenge - Switch Statements

/*:
 ## Challenge 1
 - Write a switch statement that switches on a tuple containing a `String` and an `Int`. The `String` is a name, and the `Int` is an age.
 - Use the cases below (or make up your own), and binding with `let` syntax, to assign the the name, followed by the life stage related to the age, to a `String` constant.
 
 For example, for the author of these challenges, you'd assign "Matt is an adult." to your constant.
 
 * 0-2 years: Infant
 * 3-12 years: Child
 * 13-19 years: Teenager
 * 20-39: Adult
 * 40-60: Middle aged
 * 61+: Elderly
*/
let lifeStage : String

switch ("Nombre", 36) {
case (let name, 0...2):
    lifeStage = "\(name) is an Infant"
case (let name, 3...12):
    lifeStage = "\(name) is a Child"
case (let name, 13...19):
    lifeStage = "\(name) is a Teenager"
case (let name, 20...39):
    lifeStage = "\(name) is an Adult"
case (let name, 40...60):
    lifeStage = "\(name) is a Middle aged"
case (let name, 61...):
    lifeStage = "\(name) is an Elderly"
default:
    lifeStage = "No hay rango"
    
}



/*:
 ## Challenge 2
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after making a set of movements.
 - Create a `Direction` enumeration with cases for `north`, `south`, `east`, and `west`.
 - Write a function that takes a `Direction` array and returns a tuple of two Ints representing the character's location after all of the movements.
 - Assume the character starts at (0, 0)
 
 Example: A series of movements like [.north, .west, .west] would return a location of (-2, 1)
*/

enum Direction {
    case north
    case south
    case east
    case west
}
func location (for movimientos: [Direction]) -> (x: Int, y: Int){
    movimientos.reduce(into: (x: 0, y: 0)) { (location, movimiento) in
        switch movimiento {
        case .north:
            location.x += 1
        case .south:
            location.x -= 1
        case .east:
            location.y += 1
        case .west:
            location.y -= 1
        }
    }
    return (x,y) // No se que poner para que salga el -1,2 de arriba
    //return (location.x, location.y) Tampoco me devuelve nada
}
location(for: [.east,.east,.south])



//: [⇒ Next: 07 - Associated Values](@next)
