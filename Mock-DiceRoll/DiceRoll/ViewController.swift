//
//  ViewController.swift
//  DiceRoll
//
//  Created by Eliana Han on 10/27/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
//    var leftDiceNum = 1
//    var rightDiceNum = 5
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        //imageliteral
////        diceImageOne.image = #imageLiteral(resourceName: "DiceTwo")
////        diceImageTwo.image = #imageLiteral(resourceName: "DiceFive")
//    }

    @IBAction func rollBtnPressed(_ sender: UIButton) {
       // print("Button got tapped")
//        diceImageOne.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageTwo.image = #imageLiteral(resourceName: "DiceThree")
        diceImageOne.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
            
            //leftDiceNum += 1
        
        diceImageTwo.image = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
        
            //rightDiceNum -= 1
        
        //Int.random(in: 0...5)
    }
    
}

