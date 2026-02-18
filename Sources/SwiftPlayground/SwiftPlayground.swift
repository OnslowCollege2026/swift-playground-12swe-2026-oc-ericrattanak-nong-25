// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
//task A
        if true {
    let note = "Inside"
    // print inside the block
    print(note)
    
}
//cannot be printed outside cuz if loop is private

// Task B
func status1 (){
var status = ""

if true {
let status = 5
print(status)
    // assign a value here
}
print(status)
// print status here
    
}




//task C

func showArea() {
 var area = 0
 let width = 5 
 let length = 2

area = width * length

print(area)
   // declare three constants
    // calculate area and print it
}

 // cannot print outside of scope

// try to print the area here

//Task D
let isLarge = false

if isLarge  {
    let isLarge = ("hi")
    print(isLarge)
    
    // declare a label and print it
} else {

    let h = ("wut")
    print(h)
    
    // declare a label and print it
}

// try to print label here

}
}