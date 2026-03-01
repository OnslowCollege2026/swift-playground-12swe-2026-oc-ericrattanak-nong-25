// The Swift Programming Language
// https://docs.swift.org/swift-book

//values
let divider = "---------------"
let numForAddEggs = 1
let numForSellEggs = 2
let numForCurrentStock = 3
let numForTotalEggSold = 4
let numForExit = 5

//boundaries
let maxEggStock = 1000
let minEggStock = 0
let minValue = 0
let maxList = 6

//array
let menu = ["Add eggs", "Sell eggs", "Show current stock", "show total egg sold", "exit"]

/// prints the menu
/// loops back if incorrect input
func menulist() {
    var returnValue = -1
    var H = true
    var eggsInStock = 0
    var eggsSold = 0
    while H {

        print("==== Egg Shop ====")
        menu.enumerated().forEach { index, menu in

            print("  \(index + 1 ). \(menu)")

        }
        print(divider)
        print("Please enter a number:")
        print(divider)
        guard let userinput = readLine(), let number = Int(userinput), number > minValue,
            number < maxList
        else {
            print(divider)
            print("Invalid input")
            print(divider)
            return menulist()
        }
        returnValue = number

        if returnValue == numForExit {  //exits
            H = false
        }
        if returnValue == numForAddEggs {  //adds stock
            eggsInStock = addEggs(currentstock: eggsInStock)
            print("The current stock is: \(eggsInStock) eggs")
        }
        if returnValue == numForSellEggs {  //sells eggs
            let eggsAfterselling = sellEggs(currentstock: eggsInStock)
            eggsInStock = eggsAfterselling.eggsInStock
            eggsSold += eggsAfterselling.eggSold1
            print("The current stock is: \(eggsInStock) eggs")
        }
        if returnValue == numForCurrentStock {  //show current stock
            print("We currently have \(eggsInStock) eggs in stock")

        }
        if returnValue == numForTotalEggSold {
            print("Total egg sold is: \(eggsSold)")
            

        }
    }
}
/// adds egg
/// - Parameter currentstock: current eggs in stock
/// - Returns: new stock if the input is correct
func addEggs(currentstock: Int) -> Int {
    var eggsAdded = 0
    var eggsInStock = currentstock
    print("Enter the amount added")
    guard let userInput = readLine(), let amount = Int(userInput), amount > minValue,
        eggsInStock + amount <= maxEggStock
    else {
        print("Error")
        return eggsInStock
    }
    eggsAdded = amount
    return eggsInStock + eggsAdded
}
/// eggs sold
/// - Parameter currentstock: eggs in stock
/// - Returns: returns stock after selling eggs if input is correct
func sellEggs(currentstock: Int) -> (eggsInStock: Int, eggSold1: Int) {
    var eggsSold1 = 0
    var eggsInStock = currentstock
    print("Enter the amount sold")
    guard let userInput = readLine(), let amount = Int(userInput), amount >= minValue,
        eggsInStock - amount >= minEggStock
    else {
        print("Error")
        return (eggsInStock, 0)
    }
    eggsSold1 = amount
    eggsInStock -= eggsSold1

    return (eggsInStock, eggsSold1)
}

@main

struct SwiftPlayground {

    static func main() {

        menulist()

    }
}
