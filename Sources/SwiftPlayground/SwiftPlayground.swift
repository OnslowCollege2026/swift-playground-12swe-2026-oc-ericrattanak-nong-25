// Constants
let maxKumaraStock = 50.0
let minValue = 0.1

//storage

/// Add kumara to current stock
/// - Parameter currentstock: the current stock in kg
/// - Returns: total of old stock + added amount with a limit of 50 kg in total
func addStock(currentStock: Double) -> Double {
    var kumaraAdded = 0.0
    var kumaraInStock = currentStock
    print("Enter the amount added (in kg):", terminator: " ")
    guard let userInput = readLine(), let amount = Double(userInput), amount > minValue,
        kumaraInStock + amount <= maxKumaraStock
    else {
        print("Error")
        return kumaraInStock
    }
    kumaraAdded = amount
    print("Added \(amount) Kg")
    return kumaraInStock + kumaraAdded
}
/// sell kumara
/// - Parameter currentStock: current stock in kg
/// - Returns: total stock - amount sold with a min of 0.1kg per sales.
func sell(currentStock: Double) -> (kumaraInStock: Double, kumaraSold: Double) {

    var kumaraInStock = currentStock
    var kumaraSold = 0.0
    print("Please enter the amount sold (in kg):", terminator: " ")

    guard let userInput = readLine(), let amount = Double(userInput), amount >= minValue,
        amount <= kumaraInStock, kumaraInStock - amount >= 0

    else {
        print("Error")

        return (kumaraInStock, 0)
    }

    kumaraSold = amount
    kumaraInStock -= kumaraSold

    print("weight of kumara sold is \(amount)kg")
    return (kumaraInStock, kumaraSold)

}

@main

struct SwiftPlayground {

    static func main() {

        // containers
        let menu = [
            "Add stock", "View current stock ", "sell kumara", "View previous sales records",
            "show summary", "exit",
        ]

        var sales: [Double] = []
        var bags: [Double] = []

        //constant
        let numForAddStock = 1
        let numForViewCurrent = 2
        let numForSell = 3
        let numForPrevSales = 4
        let numForSummary = 5
        let numForExit = 6
        let costPerKilo = 3.0
        let costPerBag = 0.20
        var kumarSold2 = 0.0
        var bagsused = 0.0
        var maxBags = 5000.0
        let maxWeightPerBag = 5.0
        let maxList = menu.count
        let minList = 1
        let divider = "-----------------"
        //variables
        var newStock = 0.0
        print("Welcome to the kumara stall")
        while true {
            var kumaraCost = 0.0
            var bagCost = 0.0
            var answer = 0
            var kumaraSold1 = 0.0
            var minBag = 0.0
            var totalBagCost = 0.0
            var totalKumaraCost = 0.0
            menu.enumerated().forEach { index, menu in
                print("\(index + 1). \(menu)")

            }
            print("Please select one of the options above:", terminator: " ")
            guard let userInput = readLine(), let number = Int(userInput), number >= minList,
                number <= maxList
            else {  // loops until the user picks a valid choice
                print("Invalid input")
                print("Please choose again.")

                continue
            }

            answer = number
            if answer == numForAddStock {  //adds stock and print the new stock
                newStock = addStock(currentStock: newStock)
                print(divider)
            }
            if answer == numForViewCurrent {  // prints the current stock
                print("The current stock is \(newStock) kg")
                print(divider)
            }
            if answer == numForSell {  //minus the amount bought from the current stock and adds the amount bought into an array.
                let newStock1 = sell(currentStock: newStock)
                newStock = newStock1.kumaraInStock
                kumaraSold1 = newStock1.kumaraSold
                if kumaraSold1 <= minValue, kumaraSold1 > newStock {

                    print("invalid input")
                    continue
                }
                if kumaraSold1 >= minValue, kumaraSold1 <= newStock {
                    sales.append(kumaraSold1)
                    minBag = kumaraSold1 / maxWeightPerBag
                    print(divider)
                    print("Please enter the amount of bags (5kg max per bag):", terminator: " ")
                    while true {  //ask for the amount of bags used, loops till the amount of bags used are enough for the weight bought.
                        guard let userInput = readLine(), let bagUsed = Double(userInput),
                            bagUsed < maxBags, bagUsed >= minBag
                        else {
                            print("Error")
                            print("Please try again:", terminator: " ")

                            continue
                        }
                        if bagUsed >= minBag {  //checks if the amount of bags used is valid
                            bags.append(bagUsed)
                            //calculate the costs
                            kumaraCost = kumaraSold1 * costPerKilo
                            bagCost = bagUsed * costPerBag
                            let totalCost = kumaraCost + bagCost
                            //print statement for each cost
                            print("The cost for the kumara is \(kumaraCost)")

                            print("The cost for the bag is \(bagCost)")

                            print("The cost for this purchase is \(totalCost)$")
                            print(divider)

                            maxBags -= bagUsed
                            bagsused += bagUsed
                            kumarSold2 += kumaraSold1

                            break
                        }
                    }

                }
                if answer == numForPrevSales {  // prints the sales record
                    sales.enumerated().forEach { index, sales in
                        print("\(index + 1). \(sales) Kg.")

                    }

                    print(divider)
                }
                if answer == numForSummary {  // prints a sales summary for the owner
                    bags.forEach { bags in  //calculate total cost of bags

                        totalBagCost += bags * costPerBag
                    }
                    sales.forEach { sales in  // calculates total cost of kumara

                        totalKumaraCost += sales * costPerKilo
                    }
                    print("The total kumara made from kumara is \(totalKumaraCost)$")
                    print("The total made from bags is \(totalBagCost)$")

                    // calculates avg weight per bag
                    let summary = kumarSold2 / bagsused
                    print("The Weight per bag is \(summary)kg")

                }

                if answer == numForExit {
                    //ends the program
                    break
                }

            }

        }

    }
}
