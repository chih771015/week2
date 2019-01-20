enum Gender {

    case male
    
    case female
    
    case underfined
    
}


class Animal {
    
    let gender: Gender = .underfined
    
    func eat() {
        print("I eat everything")
    }
    
    
    
}

var b = Animal()
b.eat()
b.gender


class Tiger: Animal {

    override func eat() {
        print("I eat meat")
    }
    

}
class Elephant: Animal {
    override func eat() {
        print("I eat tree bark")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass")
    }
    
    
}

let tiger = Tiger()
let elephant = Elephant()
let horse = Horse()
tiger.eat()
elephant.eat()
horse.eat()


class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
    
}

let zoo = Zoo(weeklyHot: Tiger())
zoo.weeklyHot
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot
zoo.weeklyHot = horse
zoo.weeklyHot

