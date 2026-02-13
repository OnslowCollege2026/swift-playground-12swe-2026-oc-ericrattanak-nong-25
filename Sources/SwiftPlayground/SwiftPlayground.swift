// The Swift Programming Language
// https://docs.swift.org/swift-book

//Task A
/// Calculates room area
/// - Parameters: 
///   -   Area: Area in m²
///   - length: Length in m
///   -  width: Width in m
/// - Returns: Calculated room area in m²
func roomArea(length: Double, width: Double) -> Double {
    return length * width
}

//Task B
/// 
/// - Parameters:
///   - length: Length in m
///   - width:  Width in m
///   - height: Height in m
/// - Returns:  Volume in m³
func roomVolume(length: Double, width: Double, height: Double) -> Double {
    return length * width * height
}
//Task C
///  checks if volume is smaller than 60
/// - Parameter volume: Volume in m³
/// - Returns: True if Volume is smaller than 60
func isRoomSmall(volume: Double) -> Bool {
    return volume < 60
}
//Task D
/// Calculate height after percentage reduction
/// - Parameters:
///   - original: Original height in m
///   - reductionPercent: perfect of reduction in %
/// - Returns: calculated height in m
func reducedHeight(original: Double, reductionPercent: Double) -> Double {
    let multiplier = (100.0 - reductionPercent) / 100.0
    return original * multiplier
}

@main
struct SwiftPlayground {
    static func main() {


    }
}
