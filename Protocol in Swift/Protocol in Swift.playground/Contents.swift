protocol PoliceMan {
    func arrestCriminals()
}

protocol PersonalInformation {
    var age: Int { get }
    var height:Double { get }
    var weight:Double { get }
}
struct Person: PoliceMan, PersonalInformation {
    let name: String
    let toolMan: ToolMan
    var age: Int
    var height: Double
    var weight: Double
    func arrestCriminals(){}

}
protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    
    func fixComputer(){}

}

let personSteven = Person(name: "Steven", toolMan: Engineer(), age: 30, height: 190, weight: 60.4)


