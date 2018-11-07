//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }
    @IBAction func cardWillFlip(_ sender: UIButton) {
        var myCardArray = [UIImage.init(named: "kingCard"), UIImage.init(named: "threeCard"), UIImage.init(named: "threeCard")]
        myCardArray = myCardArray.shuffled()
        switch sender.tag {
        case 0:
            if myCardArray[0] == UIImage.init(named: "kingCard") {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "You Win"
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    displayLabel.text = "You Lose"
                }
            
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 1:
            if myCardArray[1] == UIImage.init(named: "kingCard") {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "You Win"
            }  else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                }
        
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 2:
                if myCardArray[2] == UIImage.init(named: "kingCard") {
                    card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    displayLabel.text = "You Win"
                }  else {
                    card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    displayLabel.text = "You Lose"
                }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            
        default:
            print("Invalid Entry")
                }
        for cards in 0..<myCardArray.count {
            if myCardArray[cards] == UIImage.init(named: "kingCard") {
                if cards == 0 {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
                else if cards == 1 {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            }
               else if cards == 2 {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            }
        }
}
    
    @IBAction func newGame(_ sender: UIButton) {
        displayLabel.text = "Pick a card please"
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }

}

