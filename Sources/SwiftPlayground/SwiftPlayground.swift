// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
@main
struct SwiftPlayground {
    static func main() {
     //Const and var
    /// the vocabulary to test user on
    /// each inner array contains the english word, the correct answer in the target language
    /// and three incorrect answer
    let vocabulary = [
        ["Hello","こんにちは", "さようなら","ありがとう","こんばんは"],
        ["goodbye","さようなら","こんにちは", "ありがとう","こんばんは"],
        ["thank you","ありがとう","さようなら","こんにちは","こんばんは"],
        ["good evening","こんばんは","こんにちは","さようなら","ありがとう"],
        ["yes","はい","こんばんは","さようなら","ありがとう"]
    ]
    var q1 = vocabulary[0]
    var q2 = vocabulary[1]
    var q3 = vocabulary[2]
    var q4 = vocabulary[3]
    var q5 = vocabulary[4]
// The indices of the question that the user got wrong
    var incorrectindicies: [Int] = []
//number of question user got wrong first time
    var incorrectCount = 0
//number of question user got right
    var count = 6
 //Loop until all question are asked
    while count < vocabulary.count{


    }
    print(q1.shuffled())
    
    
 //show question

    //present all possible answer

    //check if user guess is correct
    //if not, make a note to ask the question later.
    }
}
