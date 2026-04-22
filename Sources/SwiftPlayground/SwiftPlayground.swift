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
        let vocabulary: [[String]] = [
            ["Hello", "こんにちは", "さようなら", "ありがとう", "こんばんは"],
            ["goodbye", "さようなら", "こんにちは", "ありがとう", "こんばんは"],
            ["thank you", "ありがとう", "さようなら", "こんにちは", "こんばんは"],
            ["good evening", "こんばんは", "こんにちは", "さようなら", "ありがとう"],
            ["yes", "はい", "こんばんは", "さようなら", "ありがとう"],
        ]

        var counter = 0
        var score = 0

        // The indices of the question that the user got wrong
        var incorrectindicies: [Int] = []

        while counter < vocabulary.count {
            let englishWord = vocabulary[counter][0]
            let correctWord = vocabulary[counter][1]
            let allAnswers = vocabulary[counter].dropFirst().shuffled()

            print("Please translate \(englishWord)")
            allAnswers.forEach { answer in
                print("-\(answer)")
            }
            if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {

                score = score + 1
                
                print("Congrats, \(correctWord) is correct.")

            } else {
                incorrectindicies.append(counter)
                print("Sorry, \(correctWord) is the correct answer.")
            }
counter = counter + 1


            while incorrectindicies.count > 0 {
                let index = incorrectindicies[0]
                let englishWord = vocabulary[index][0]
                let correctWord = vocabulary[index][1]
                let allAnswers = vocabulary[index].dropFirst(1).shuffled()

                print("please translate \(englishWord)")
                allAnswers.forEach { answer in
                    print("- \(answer)")
                }
                if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
                    incorrectindicies.removeFirst()
                    print("Yes, \(correctWord) is correct.")
                } else {
                    print("sorry! the correct answer is \(correctWord)")
                }
            }

        }

print("You have a score of \(score)/\(vocabulary)")
if Double(score) >= Double(vocabulary.count/2){
    print("Congratulations!")
}else{
    print("Try again next time.")
    
}
    }
}
