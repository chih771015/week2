enum GuessNumberGameError {

    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
        
    }
    
    
}

extension GuessNumberGameError:Error {}


extension GuessNumberGame {
    
    static var targetNumber = 10
    
    class func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
        
    }
    
}       ////這段改寫是後來加的 前面是有產生實體 後面是僅在class內做的方法


//let one = GuessNumberGame()

do{
//try one.guess(number: 20)
    try GuessNumberGame.guess(number: 10)
    try GuessNumberGame.guess(number: 20)
}catch GuessNumberGameError.wrongNumber{
    print("Wrong Number!! Guess Again !!")
}


