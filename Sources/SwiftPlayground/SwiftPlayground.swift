// The Swift Programming Language
// https://docs.swift.org/swift-book

//task A
func roomVolume() -> Double {
    return 5.5
    // return volume using stored constants
}
    //task B
func printArea(length: Double, width: Double) {
    let area = length*width
    print("Area: \(area)m²")
    
    // calculate and print area
}
    //task C
func area(length: Double, width: Double) -> Double {
    return length*width
    // return area
}
    //task D
func volume5(length: Double, width: Double, height: Double) -> Double {
    return length*width*height
    // return volume
}

@main
struct SwiftPlayground {
    static func main() {
        //task A
    let volume = roomVolume()
    print("volume: \(volume)m³")
        //task B
    printArea(length: 5.5, width: 2.5)
        //task C
    let area = area(length: 2.5, width: 2.5)
    print("Area 2: \(area)m²")
        //task D
    let volume1 = volume5(length: 5.1, width: 2.1, height: 3.1)
    print("Volume 2: \(volume1)m³")
    
    }
}
