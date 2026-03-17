import UIKit

//function
func name(a: Int, b: Int) -> Int{
    
    return a + b
}

//Two common uses of return:
//1. Early exit
//2. Returning a value from a function or method

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //method
    func name(a: Int, b: Int) -> Int{
        
        return a + b
    }
}

func generateRandomNumber() -> Int{
    return Int.random(in: 1 ... 100)
}

generateRandomNumber()

//Unwrapping
let name: String? = "John"
//1. Forced Unwrapping
//let display1 = name!
//print(display1)

//2. Optional binding
if let display2 = name{
    print(display2)
}else{
    print("Guest")
}

//3. Nil-Colescing: provide a default value
let display3 = name ?? "Guest"
print(display3)


//Challenge tasks 2-4
//2.
func currencySymbol(for country: String) -> String?{
    
    switch country{
    case "US":
        return "$"
    case "DE":
        return "€"
    case "KR":
        return "₩"
    case "JP":
        return "¥"
    default:
        return nil
    }
}

if let cs = currencySymbol(for: "KR"){
    print(cs)
}else{
    print("Not Found")
}

//3.
let input: String? = "42.5"

//a. Forced Unwrapping
let num1 = Double(input!)!
print("1. Forced Unwrapping - \(num1)")

//b. Optional Binding
if let input, let num2 = Double(input){
    print("Optional Binding - \(num2)")
}else{
    print("Invalid Input")
}


//c. Nil-Coalescing
let num3 = Double(input ?? "0") ?? 0.0

//4.
let nickname: String? = "SwiftCoder"

//a. Forced Unwrapping - Crashes
//let num4 = Double(nickname!)!
//print("1. Forced Unwrapping - \(num4)")

//b. Optional Binding
if let nickname, let num5 = Double(nickname){
    print("Optional Binding - \(num5)")
}else{
    print("Invalid Input")
}


//c. Nil-Coalescing
let num6 = Double(nickname ?? "0") ?? 0.0
