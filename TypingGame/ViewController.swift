//
//  ViewController.swift
//  TypingGame
//
//  Created by Daniel Washington Ignacio on 26/05/21.
//


/*
 You're in the midst of creating a typing game.

 Create a function that takes in two arrays: the array of user-typed words, and the array of correctly-typed words and outputs an array containing 1s (correctly-typed words) and -1s (incorrectly-typed words).

 Inputs:
 User-typed Array: ["cat", "blue", "skt", "umbrells", "paddy"]
 Correct Array: ["cat", "blue", "sky", "umbrella", "paddy"]

 Output: [1, 1, -1, -1, 1]
 Examples

 correctStream(
   ["it", "is", "find"],
   ["it", "is", "fine"]
 ) ➞ [1, 1, -1]

 correctStream(
   ["april", "showrs", "bring", "may", "flowers"],
   ["april", "showers", "bring", "may", "flowers"]
 ) ➞ [1, -1, 1, 1, 1]
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(correctStream(["cat", "blue", "skt", "umbrells", "paddy"], ["cat", "blue", "sky", "umbrella", "paddy"]))
    }

    func correctStream(_ user: [String], _ correct: [String]) -> [Int] {
        var correctArray: [Int] = []
        let size: Int = user.count
        for m in 0...size-1{
            if user[m] == correct[m]{
                correctArray.append(1)
            }else{
                correctArray.append(-1)
            }
            
        }
        return correctArray
    }
    
    

}

