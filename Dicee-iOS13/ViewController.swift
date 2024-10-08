//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//  Finish by Aisha Suanbekova
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    let dices: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonToRoll(_ sender: Any) {
        diceImageChanger()
    }
    
    func diceImageChanger(){
           if let leftDice = dices.randomElement(), let rightDice = dices.randomElement() {
                       diceLeft.image = UIImage(named: leftDice)
                       diceRight.image = UIImage(named: rightDice)
                   } else {
                       print("No dice images found.")
                   }
       }
    
    //bonus.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceImageChanger()
    }

}

