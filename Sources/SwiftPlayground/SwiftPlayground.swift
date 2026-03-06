// The Swift Programming Language
// https://docs.swift.org/swift-book

func total(of Total: [Int]) -> Int {
var sum = 0
for row in Total{
        sum += row
}
return sum
}

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
func columnTotal(in table: [[Int]], column: Int){
    
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

}
}
