// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
    //constant
    let sTier = 250.0
    let aTier = 100.0
    let bTier = 50.0
    let cTier = 25.0
    let dTier = 10.0
    let minValue = 0

    let rankLabels = ["F Tier", "D Tier", "C Tier", "B Tier", "A Tier", "S Tier"]

    func rankIndex(from amount: Double) -> Int {
        if amount >= sTier { return 5 } // Should be S
        if amount >= aTier { return 4} // Should be A
        if amount >= bTier  { return 3 }
        if amount >= cTier  { return 2 }
        if amount >= dTier  { return 1 }
        return 0 // Should be F
    }
    func addPreMadeGuests(to guestList: inout [[String]]) {
        // Pre-made guests to help you test.
        guestList.append(["Rich Richard", "500.0"])
        guestList.append(["Broke Bob", "2.0"])
    }

    func printTierList(_ guestList: [[String]]) {
        print("\n--- BROKEN PARTY TIER LIST ---")

        let sortedList = guestList.sorted { lhs, rhs in
            let lhsAmount = Double(lhs[1]) ?? 0
            let rhsAmount = Double(rhs[1]) ?? 0
            let lhsRank = rankIndex(from: lhsAmount)
            let rhsRank = rankIndex(from: rhsAmount)

            if lhsRank != rhsRank {
                return lhsRank >= rhsRank
            }

            return lhs[0] >= rhs[0]
        }

        for guest in sortedList {
            let amount = Double(guest[1]) ?? 0
            let rank = rankLabels[rankIndex(from: amount)]
            print("[\(rank)] \(guest[0]) | $\(guest[1])")
        }
    }
@main
struct SwiftPlayground {
    static func main() {
     

    var guestList: [[String]] = []
    addPreMadeGuests(to: &guestList)
    var isRunning = true

    while isRunning {
        print("\nEnter Name (or 'done'): ", terminator: "")
        let nameInput = readLine()!

        if nameInput == ""{
            print("Invalid input")
            return 
            
        }

        if nameInput.lowercased() == "done" {
            isRunning = false
            break
        }

        print("Enter Amount: ", terminator: "")
        let amountInput = readLine()!
        let amount = Double(amountInput)!

        guestList.append([nameInput, String(amount)])
        print("Added \(nameInput). Amount: \(amount)")
    }

    printTierList(guestList)
    }
}
