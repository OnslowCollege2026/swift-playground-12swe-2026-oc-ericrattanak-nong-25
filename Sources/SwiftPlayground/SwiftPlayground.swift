// The Swift Programming Language
// https://docs.swift.org/swift-book

func print(board: [[String]]) {
    board.forEach { line in
        print("\(line[0]) | \(line[1]) | \(line[2] )")
        print("--+---+--")
    }
}


    func askForPosition(board: [[String]]) -> [Int] {
        while true {

        print("Please enter the row number 1-3: ")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! - 1

        print("Please enter the column number 1-3: ")
        let userInput2 = readLine()!
        let columnNumber = Int(userInput2)! - 1

        if board[rowNumber][columnNumber] == "." {
            return [rowNumber, columnNumber]
        }
    }
}

@main
struct SwiftPlayground {
    static func main() {
        var board = [
            [".", ".", "."],  //row 0
            [".", ".", "."],  //row 1
            [".", ".", "."],  // row 2
        ]
        print(board: board)

        //ask user move

        var player = "O"
while true{
        let position = askForPosition(board: board)
    board[position[0]][position[1]] = player
    if player == "O"{
        player = "X"
    }else{
        player = "O"
    }
    print(board:board)
}





        // //first move 0 in mid
        // board[1][1] = "O"
        // print(board:board)
        // //second move X in top left
        // board[0][0] = "X"
        // print(board:board)
        // //third move O top right
        // board[0][2] = "O"
        // print(board:board)
        // //Fourth move x bottom left
        // board[2][0] = "X"
        // print(board:board)
        // //fifth move O middle left
        // board[1][0] = "O"
        // print(board:board)
        // //sixth move X middle right
        // board[1][2] = "X"
        // print(board:board)
        // //seventh move O bottom middle
        // board[2][1] = "O"
        // print(board:board)
        // //eight move X bottom right
        // board[2][2] = "X"
        // print(board:board)
        // // final move O top middle
        // board[0][1] = "O"
        // print(board:board)

    }

}
