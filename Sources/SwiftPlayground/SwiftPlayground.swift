// The Swift Programming Language
// https://docs.swift.org/swift-book
//task A
func printRoomIntro() {
    print("This program calculates room area and volume.")
    print("It also finds the usable space after furniture.")
}

//task B
func printDivider() {
    print("--------")
}

//task C
func printUnitsNote() {
    print("All measurements are in metres.")
}

//task D
func printGoodbye() {
    print("Done. Thanks for using the calculator.")
}

//values
let K = 5
let H = 6


@main
struct SwiftPlayground {
    static func main() {
    printRoomIntro()
printDivider()
print("Summary here")
printDivider()
printUnitsNote()

let Hk = H + K
print("Hk is \(Hk)")

printGoodbye()
    
    }
}
