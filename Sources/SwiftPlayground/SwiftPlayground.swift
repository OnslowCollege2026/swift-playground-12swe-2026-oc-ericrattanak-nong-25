// The Swift Programming Language
// https://docs.swift.org/swift-book

//values

let divider = "---------------"

//boundaries 
let maxEggStock = 1000
let minEggStock = 0
let minEggStockMinus1 = -1

//array
let menu = ["Add eggs", "Sell eggs", "Show current stock", "show total egg sold", "exit"]

func menulist(){
    var hi = true
    var returnValue = -1
while hi{ 
    

print("==== Egg Shop ====")
menu.enumerated().forEach{index,menu in

print("      \(index + 1 ) \(menu)")


}   
print(divider)
print("Please enter a number:")
print(divider)
guard let userinput = readLine(),let number = Int(userinput), number > 0, number < 6 else {
    print(divider)
    print("Invalid input")
    print(divider)
    return menulist()
}
    returnValue = number
    return returnValue
if returnValue == 5 {
    let hi = false

} 
}
}
@main



struct SwiftPlayground {

    static func main() {

menulist()

    }
}
