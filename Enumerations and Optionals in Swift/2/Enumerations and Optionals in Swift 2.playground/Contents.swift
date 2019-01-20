import UIKit

class Pet {
    
    let name: String
    init(name: String) {
        self.name = name
    }
}


class People {
    var pet:Pet?
    init(pet:Pet?) {
        self.pet = pet
    }
    
    func upwrap() {
        guard pet != nil else{
          print("No pet!")
            return
        }
        print ("I have pet \(pet!.name)")
        return
    }
    
    func upwrapIf() {
        if pet != nil{
            print("I have pet \(pet!.name)")
        }
        else{
            print("No pet!")
        }
    }
}



let bb = People(pet:Pet(name: "Baily") )
bb.upwrap()
let cc = People(pet: nil)
cc.upwrap()
bb.upwrapIf()
cc.upwrapIf()


func outSideUpwrap(people:People) {
    guard let aa = people.pet?.name else{
        print("No pet!")
        return
    }
    print ("I have pet \(people.pet!.name)")
    return
    
}


func outSideUpwrapIf(people:People) {
    if let aa = people.pet?.name {
        print ("I have pet \(people.pet!.name)")
    }
    else{
        print("No pet!")
    }
    
}

outSideUpwrap(people: bb)
outSideUpwrap(people: cc)
outSideUpwrapIf(people: bb)
outSideUpwrapIf(people: cc)
