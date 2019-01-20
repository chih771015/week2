import UIKit

var str = "Hello, playground"

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice(for price:Int) -> String {
        switch self {
        case .oil92: print("Oil92 price is $\(price) each liter"); return "Oil92 price is $\(price) each liter"
        case .oil95: print("Oil95 price is $\(price) each liter"); return "Oil95 price is $\(price) each liter"
        case .oil98: print("Oil98 price is $\(price) each liter"); return "Oil92 price is $\(price) each liter"
        }
    
    }
    
}

Gasoline.oil92.rawValue
Gasoline.oil92.getPrice(for: 25)
Gasoline.oil95.getPrice(for: 30)
Gasoline.oil98.getPrice(for: 33)

enum Gasoline2 {
    
    case oil92(Int)
    case oil95(Int)
    case oil98(Int)
    
    func getPrice() -> String {
        switch self {
        case .oil92(let price): print("Oil92 price is $\(price) each liter"); return "Oil92 price is $\(price) each liter"
        case .oil95(let price): print("Oil95 price is $\(price) each liter"); return "Oil95 price is $\(price) each liter"
        case .oil98(let price): print("Oil98 price is $\(price) each liter"); return "Oil92 price is $\(price) each liter"
        }
        
    }
    
    
}

Gasoline2.oil92(50).getPrice()
Gasoline2.oil95(399).getPrice()
Gasoline2.oil98(200).getPrice()






