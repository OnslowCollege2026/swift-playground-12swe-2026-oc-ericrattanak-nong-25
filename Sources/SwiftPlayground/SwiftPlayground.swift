// The Swift Programming Language
// https://docs.swift.org/swift-book

///  calculate total in 
/// - Parameter Total: name used to call inside of the func 
/// - Returns: the value of the sum
func total(of Total: [Int]) -> Int {
var sum = 0
for row in Total{
        sum += row
}
return sum
}
/// prints all the value in each row and counts the amount of value printed
/// - Parameter table: name used inside func
func count(of table: [[Int]]){
        var count = 0
            for row in table{
                for value in row {
                        print(value)
                                count += 1
                                    }
}
print("The amount of number printed is: \(count)")
}

//Task A
func taskA(){
        var temperature = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12],
        ]
let numOne = temperature[0]
print("The first row is: \(numOne)")
let numTwo = temperature[1][2]
print("The temperature in row2 column 3 is: \(numTwo)")
let numThree = temperature [2][0]
print("The temperature in row 3 column 1 is: \(numThree)")
let numFour = temperature[1]
var amount = numFour.count
let avg = total(of: numFour) / amount
print("The average in row 2 is: \(avg)")
    }
    /// 
    /// - Parameters: sums up the column
    ///   - matrix: name to call inside the function
    ///   - column: column number
    /// - Returns: total sum of the column
func columnTotal(in matrix: [[Int]], column: Int) -> Int { 
    guard column >= 0 && column < matrix.count else {return 0}

     return matrix.reduce(0) { total, row in
        guard column < row.count else { return total } // checks if the row have a column or not
        return total + row[column]
    }
    
}

func maxValue(in matrix: [[Double]]) -> Double? {

if matrix.isEmpty{return nil}
var maxVal: Double? = nil
for row in matrix {
        for value in row {
            if maxVal == nil || value > maxVal! {
                maxVal = value
            }
        }
    }

return maxVal

}
@main
struct SwiftPlayground {
    static func main() {

let divider = "---------------------"
//Task A
print("Task A")

    taskA()
print(divider)

//Task B
let table = [
    [2, 4, 6],
    [8, 10, 12],
    [14, 16, 18]
]
print("Task B")
print(count(of: table))

print(divider)

//Task C
print("Task C")

let newTable = [
    [3, 5, 7, 9],
    [2, 4],
    [8, 6, 1],
    [10] 
]
print("The sum of the 1st column is \(columnTotal(in: newTable, column: 0))")
print("The sum of the 2nd column is \(columnTotal(in: newTable, column: 1))")
print("The sum of the 3rd column is \(columnTotal(in: newTable, column: 2))")
print("The sum of the 4st column is \(columnTotal(in: newTable, column: 3))")

//Task D
print(divider)
print("Task D")
let readings = [
    [1.5, 3.2, 2.8],
    [7.1],
    [4.4, 6.0],
    [5.9, 8.3, 0.7, 2.2]
]
if let largest = maxValue(in: readings) {
    print("The largest value in the readings is \(largest).")
} else {
    print("The readings array is empty, so there is no maximum value.")
}
}
}
