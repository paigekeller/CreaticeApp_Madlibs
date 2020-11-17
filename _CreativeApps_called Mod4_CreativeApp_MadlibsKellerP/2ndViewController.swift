//
//  2ndViewController.swift
//  _CreativeApps_called Mod4_CreativeApp_MadlibsKellerP
//
//  Created by Tiger Coder on 11/10/20.
//  Copyright © 2020 clc.Paige. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var arrayOfMadlibs: [MadlibsPhrase] = []
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var storylabel: UILabel!
    @IBOutlet weak var homebtn: UIButton!
    @IBOutlet weak var phraseLabel: UILabel!
    var xmas: Bool!
    var hallo: Bool!
    var thx: Bool!
    var arrayOfStories: [Phrase] = []
    var new: Phrase!
    var old: MadlibsPhrase!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if xmas == true {
            print("xmas")
            pic1.image = UIImage(named: "candycanes")
            pic2.image = UIImage(named: "candycanes")
            storylabel.textColor = UIColor.green
              homebtn.setTitleColor(UIColor.red, for: .normal)
             arrayOfStories.append(Phrase(th: .christmas))
            phraseLabel.textColor = UIColor.red
            
        } else if hallo == true {
        pic1.image = UIImage(named: "jackolantern")
        pic2.image = UIImage(named: "jackolantern")
             storylabel.textColor = UIColor.purple
            homebtn.setTitleColor(UIColor.black, for: .normal)
             arrayOfStories.append(Phrase(th: .halloween))
            phraseLabel.textColor = UIColor.black
            
        }  else {
            pic1.image = UIImage(named: "turkey")
            pic2.image = UIImage(named: "turkey")
             storylabel.textColor = UIColor.orange
              homebtn.setTitleColor(UIColor.brown, for: .normal)
             arrayOfStories.append(Phrase(th: .thanksgiving))
            phraseLabel.textColor = UIColor.orange
        }
        
        new = arrayOfStories[arrayOfStories.count-1]
        old = arrayOfMadlibs[arrayOfMadlibs.count-1]
        
        phraseLabel.text = new.setPhrase(nArray: old.noun, aArray: old.adjective, vArray: old.verb, pArray: old.person, numArray: old.number, object: new)
        
    }
    
    @IBAction func homebtn(_ sender: UIButton) {
    print("unwinding to home")
}
}
