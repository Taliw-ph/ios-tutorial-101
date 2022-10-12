import UIKit

var greeting = "Hello, playground"

var variable = "ABC"
// scala -> var
let constant = 12
// scala -> val

if (constant > 0 || variable == "ABC") && variable != "" {
    print("More than zero")
} else if constant < 0 {
    print("Less than zero")
}
    
func calculate() {
}

func calculate(x: Int, y: Int) {
    x + y
}

calculate(x: 2, y: 3)

func calculateA(x: Int, y: Int) -> String {
    let result = x + y
    return "\(result)"
}

calculateA(x: 2, y: 3)

var fruits: [String] = []
fruits = ["Apple", "Orange", "Mango", "Grape"]
fruits.append("Banana")
fruits.remove(at: 2)
print(fruits)

fruits.filter { item in
    return item != "Mango"
}

print(fruits)

let newFruit = fruits.map { item in
    return "Fruit: \(item)"
}

print(fruits)
print(newFruit)

var redFruits: [String] = []
fruits.forEach { item in
    if item == "Orange" || item == "Strawberry" {
        return redFruits.append(item)
    }
}

print(redFruits)

var yellowFruits: [String] = []
for item in fruits {
    if item.contains("Banana") {
        yellowFruits.append(item)
    }
}

print(yellowFruits)

class A {
    let id: Int = 0
    private var name: String = ""
    
    func setName(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return self.name
    }
}

class Vehicle {
    let id: Int
    let name: String
    
    init(name: String) {
        self.id = Int.random(in: 0...20)
        self.name = name
    }
    
    func drive() {
        print("\(name): driving")
    }
}

class Car: Vehicle {
    let wheelsCount: Int
    let doorsCount: Int
    
    init(name: String, wheelsCount: Int, doorsCount: Int) {
        self.wheelsCount = wheelsCount
        self.doorsCount = doorsCount
        super.init(name: name)
    }
}

//class Motorcycle: Vehicle {
//    let wheelsCount: Int
//    let doorsCount: Int
//}

//let classA = A()
//let classB = classA
//print(classA.getName())
//
//classA.setName(name: "Taliw")
//
//classB.getName()
//
//var toyota = Vehicle(id: 1, name: "Toyota")
//var honda = toyota

//print(toyota)
//toyota.name = "Toyota Series 1"
//print(toyota)
//
//print(honda)
//honda.name = "Honda"
//print(honda)

var car1 = Vehicle(name: "Honda")

var honda = Car(name: "Hodna", wheelsCount: 1, doorsCount: 2)

print(honda.name)
honda.drive()
print(honda.wheelsCount)
