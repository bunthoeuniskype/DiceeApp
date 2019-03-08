//
//  ViewController.swift
//  Dicee
//
//  Created by Admin on 3/8/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var random1 : Int = 0
    var random2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pollDice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionRoll(_ sender: Any) {
        pollDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        pollDice()
    }
    
    func pollDice(){
        random1 = Int(arc4random_uniform(6))
        random2 = Int(arc4random_uniform(6))
        dice1.image = UIImage(named: diceArray[random1])
        dice2.image = UIImage(named: diceArray[random2])
    }
    
}

