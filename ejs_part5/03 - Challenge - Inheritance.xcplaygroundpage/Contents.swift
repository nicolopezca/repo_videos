//: [⇐ Previous: 02 - Inheritance](@previous)
//: ## Episode 03: Challenge - Inheritance

/*:
## Challenge 1 - Building a Class Heirarchy
Create a class named `Animal` that has…
1. a function named `speak()` that does nothing.
 
Create two `Animal` subclasses...
1. `WildAnimal` that...
  - has an `isPoisonous` property, that is a `Bool`
  - has an initializer that takes `isPoisonous` as a parameter
2. `Pet` that...
  - has a stored property named `name`, that is a `String`
  - has an initializer that takes `name` as a parameter
  - has a `play()` method that prints out a message
  - overrides `speak()` - It should print out a message

Create one subclass of your choice of `WildAnimal` or `Pet`. It should do at least one of the following:
 - override `speak()`
 - override `play()`
 - Add a new computed property
 - Add a new method
*/
class Animal {
    func speak() {
    }
}

class WildAnimal: Animal {
    let isPoisonous: Bool
    init(isPoisonous: Bool) {
        self.isPoisonous = isPoisonous
    }
}

class WildFish: WildAnimal{
    override func speak() {
        print("Blup, Blup")
    }
}

class Pet: Animal {
    let name: String
    init(name: String) {
        self.name = name
    }
    func play() { print("Pet me") }
    override func speak() {
        print("WOF, MIAU, MU")
    }
}
/*:
## Challenge 2 - Casting
- Create at least one instance of each class from the first challenge.
- Create an array that contains all of the instances.
- Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
- Call the function with each of your instances using a loop or whatever other method you'd like!
*/
let frog = Animal()
let lion = WildAnimal(isPoisonous: false)
let shark = WildFish(isPoisonous: false)
let dog = Pet(name: "KAI")
let zoo = [frog, lion, shark, dog]

func animals(for animal: Animal) {
    if let animal = animal as? WildAnimal {
        switch animal {
        case let fish as WildFish:
            print("That´s a big fish")
            fish.speak()
        default:
            if animal.isPoisonous { print("Danger! It´s Poisonous") }
            print("It´s adorable")
            return
        }
    }
    if let pet = animal as? Pet {
        print("Hi, my name is \(pet.name)")
        return
    }
    print("I am a normal animal")
}

zoo.forEach(animals(for:))
//: [⇒ Next: 04 - Initializers](@next)
