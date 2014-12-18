//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Junior Samaroo on 2014-12-16.
//  Copyright (c) 2014 Junior Samaroo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.age = 3
        myTiger.name = "Tigger"
        myTiger.breed = "Trini"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        myTigers.append(myTiger)
        
        var mySecondTiger = Tiger()
        mySecondTiger.age = 3
        mySecondTiger.name = "Tigger"
        mySecondTiger.breed = "Trini"
        mySecondTiger.image = UIImage(named: "Lion.jpg")
        
        var myThirdTiger = Tiger()
        myThirdTiger.age = 3
        myThirdTiger.name = "Tigger"
        myThirdTiger.breed = "Trini"
        myThirdTiger.image = UIImage(named: "LionCub2.jpeg")
        
        var myFourthTiger = Tiger()
        myFourthTiger.age = 3
        myFourthTiger.name = "Tigger"
        myFourthTiger.breed = "Trini"
        myFourthTiger.image = UIImage(named: "LionCub1.jpg")
        
        myTigers += [mySecondTiger, myThirdTiger,myFourthTiger]

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myBarButtonItemPressed(sender: UIBarButtonItem) {
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tiger = myTigers[randomIndex]
        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
            }, completion: { (finished: Bool) -> () in
        })
    }
    

}

