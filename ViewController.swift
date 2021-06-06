//
//  ViewController.swift
//  DicySid
//
//  Created by Siddhesh Kadam on 30/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var chanceLeft: UILabel!
    @IBOutlet weak var yourScore: UILabel!
    
    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var gameOver: UILabel!
    
    
    var highScoreTotal = 0
    var yourScoreTotal = 0
    var chancesLeftTotal = 6
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    
    
    @IBAction func rollDice(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        if chancesLeftTotal > 0 {
            
            var randomNumber = Int.random(in: 0...5)
            diceImage.image = diceArray[randomNumber]
            
            randomNumber += 1
            yourScoreTotal += randomNumber
            chancesLeftTotal -= 1
            highScoreTotal += randomNumber
            
            highScore.text = String(highScoreTotal)
            yourScore.text = String(yourScoreTotal)
            chanceLeft.text = String(chancesLeftTotal)
            
            if chancesLeftTotal == 0 {
                
                gameOver.textColor = UIColor.white
                gameOver.textAlignment = .center
                gameOver.font = gameOver.font.withSize(30)
                gameOver.text = "Game Over !!"
            }
        }
        
        
        
    }
    

}

