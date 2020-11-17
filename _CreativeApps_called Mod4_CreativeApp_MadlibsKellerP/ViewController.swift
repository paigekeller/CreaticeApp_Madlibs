//
//  ViewController.swift
//  _CreativeApps_called Mod4_CreativeApp_MadlibsKellerP
//
//  Created by Tiger Coder on 11/10/20.
//  Copyright © 2020 clc.Paige. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var option: UISegmentedControl!
    var arrayOfMadlibs: [MadlibsPhrase] = []
    let alert = UIAlertController(title: "ERROR", message: "Empty Textbox", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
    var rand: Int = 0
    @IBOutlet weak var n1label: UILabel!
    @IBOutlet weak var n2label: UILabel!
    @IBOutlet weak var n3label: UILabel!
    @IBOutlet weak var v1label: UILabel!
    @IBOutlet weak var v2label: UILabel!
    @IBOutlet weak var v3label: UILabel!
    @IBOutlet weak var a1label: UILabel!
    @IBOutlet weak var a2label: UILabel!
    @IBOutlet weak var p1label: UILabel!
    @IBOutlet weak var p2label: UILabel!
    @IBOutlet weak var num1label: UILabel!
    
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var verb3: UITextField!
    @IBOutlet weak var adjective1: UITextField!
    @IBOutlet weak var adjective2: UITextField!
    @IBOutlet weak var person1: UITextField!
    @IBOutlet weak var person2: UITextField!
    @IBOutlet weak var num1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.addAction(okAction)
        //rand = Int.random(in:1...3)
        print(rand)
        // Do any additional setup after loading the view.
    }

    @IBAction func gobtn(_ sender: UIButton) {
    rand = Int.random(in:1...3)
        if isText() == false {
            
            present(alert, animated: true, completion: nil)
        } else {
        if option.selectedSegmentIndex == 0 {
        
            arrayOfMadlibs.append(MadlibsPhrase(num: Int(num1.text!)!, n1: noun1.text!, a1: adjective1.text!, a2: adjective2.text!, v1: verb1.text!, v2: verb2.text!, v3: verb3.text!, p1: person1.text!, p2: person2.text!))
           
        } else if option.selectedSegmentIndex == 1 {
            
            arrayOfMadlibs.append(MadlibsPhrase(n1: noun1.text!, n2: noun2.text!, a1: adjective1.text!, a2: adjective2.text!, v1: verb1.text!, v2: verb2.text!))
            

        } else if option.selectedSegmentIndex == 2 {
            
            arrayOfMadlibs.append(MadlibsPhrase(n1: noun1.text!, n2: noun2.text!, n3: noun3.text!, a1: adjective1.text!, p1: person1.text!, p2: person2.text!))
            
        } else {
            if rand == 1 {
                 arrayOfMadlibs.append(MadlibsPhrase(num: Int(num1.text!)!, n1: noun1.text!, a1: adjective1.text!, a2: adjective2.text!, v1: verb1.text!, v2: verb2.text!, v3: verb3.text!, p1: person1.text!, p2: person2.text!))
            } else if rand == 2 {
                arrayOfMadlibs.append(MadlibsPhrase(n1: noun1.text!, n2: noun2.text!, a1: adjective1.text!, a2: adjective2.text!, v1: verb1.text!, v2: verb2.text!))
            } else if rand == 3{
                arrayOfMadlibs.append(MadlibsPhrase(n1: noun1.text!, n2: noun2.text!, n3: noun3.text!, a1: adjective1.text!, p1: person1.text!, p2: person2.text!))
            }
            
            
            }
        
          performSegue(withIdentifier: "toSVC", sender: nil)
    }
    }
    
    @IBAction func themeAction(_ sender: UISegmentedControl) {
         person2.text = ""
         person1.text = ""
         verb3.text = ""
         verb2.text = ""
         verb1.text = ""
         adjective2.text = ""
         adjective1.text = ""
         noun3.text = ""
         noun2.text = ""
         noun1.text = ""
         num1.text = ""
        if sender.selectedSegmentIndex == 0 {
            num1.isHidden = false
            noun1.isHidden = false
            noun2.isHidden = true
            noun3.isHidden = true
            adjective1.isHidden = false
            adjective2.isHidden = false
            verb1.isHidden = false
            verb2.isHidden = false
            verb3.isHidden = false
            person1.isHidden = false
            person2.isHidden = false

            num1label.isHidden = false
            n1label.isHidden = false
            n2label.isHidden = true
            n3label.isHidden = true
            a1label.isHidden = false
            a2label.isHidden = false
            v1label.isHidden = false
            v2label.isHidden = false
            v3label.isHidden = false
            p1label.isHidden = false
            p2label.isHidden = false
            
        } else if sender.selectedSegmentIndex == 1 {
            
            num1.isHidden = true
            noun1.isHidden = false
            noun2.isHidden = false
            noun3.isHidden = true
            adjective1.isHidden = false
            adjective2.isHidden = false
            verb1.isHidden = false
            verb2.isHidden = false
            verb3.isHidden = true
            person1.isHidden = true
            person2.isHidden = true
            
            num1label.isHidden = true
            n1label.isHidden = false
            n2label.isHidden = false
            n3label.isHidden = true
            a1label.isHidden = false
            a2label.isHidden = false
            v1label.isHidden = false
            v2label.isHidden = false
            v3label.isHidden = true
            p1label.isHidden = true
            p2label.isHidden = true
        } else if option.selectedSegmentIndex == 2{
            
            num1.isHidden = true
            noun1.isHidden = false
            noun2.isHidden = false
            noun3.isHidden = false
            adjective1.isHidden = false
            adjective2.isHidden = true
            verb1.isHidden = true
            verb2.isHidden = true
            verb3.isHidden = true
            person1.isHidden = false
            person2.isHidden = false
            
            num1label.isHidden = true
            n1label.isHidden = false
            n2label.isHidden = false
            n3label.isHidden = false
            a1label.isHidden = false
            a2label.isHidden = true
            v1label.isHidden = true
            v2label.isHidden = true
            v3label.isHidden = true
            p1label.isHidden = false
            p2label.isHidden = false
        } else if option.selectedSegmentIndex == 3{
                    num1.isHidden = false
                     noun1.isHidden = false
                     noun2.isHidden = false
                     noun3.isHidden = false
                     adjective1.isHidden = false
                     adjective2.isHidden = false
                     verb1.isHidden = false
                     verb2.isHidden = false
                     verb3.isHidden = false
                     person1.isHidden = false
                     person2.isHidden = false
                     
                     num1label.isHidden = false
                     n1label.isHidden = false
                     n2label.isHidden = false
                     n3label.isHidden = false
                     a1label.isHidden = false
                     a2label.isHidden = false
                     v1label.isHidden = false
                     v2label.isHidden = false
                     v3label.isHidden = false
                     p1label.isHidden = false
                     p2label.isHidden = false
            
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondViewController
        vc.arrayOfMadlibs = self.arrayOfMadlibs
        
        if option.selectedSegmentIndex ==  0 {
            print(option.selectedSegmentIndex)
            vc.xmas = true; vc.hallo = false; vc.thx = false }
        else if option.selectedSegmentIndex ==  1 {
            vc.xmas = false; vc.hallo = true; vc.thx = false}
        else if option.selectedSegmentIndex ==  2 { vc.xmas = false; vc.hallo = false; vc.thx = true
        } else if option.selectedSegmentIndex == 3{
            if rand == 1{
                vc.xmas = true; vc.hallo = false; vc.thx = false 
            }else if rand == 2 {
                  vc.xmas = false; vc.hallo = true; vc.thx = false
             }else if rand == 3{
                vc.xmas = false; vc.hallo = false; vc.thx = true
            }
        }
        
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue ) {
           print("unwinding to first vc")
                person2.text = ""
                person1.text = ""
                verb3.text = ""
                verb2.text = ""
                verb1.text = ""
                adjective2.text = ""
                adjective1.text = ""
                noun3.text = ""
                noun2.text = ""
                noun1.text = ""
                num1.text = ""
    }
    

    func isText() -> Bool
{
    
    if option.selectedSegmentIndex == 0 {
    if noun1.text == "" {
        return false
    } else if verb1.text == "" {
        return false
    } else if verb2.text == "" {
        return false
    } else if verb3.text == "" {
        return false
    } else if adjective1.text == "" {
        return false
    } else if adjective2.text == "" {
        return false
    } else if person1.text == "" {
        return false
    } else if person2.text == "" {
        return false
    } else if num1.text == "" {
        return false
    }
    return true
    }else if option.selectedSegmentIndex == 1{

            if noun1.text == "" {
            return false
        } else if noun2.text == "" {
           return false
        } else if verb1.text == "" {
            return false
        } else if verb2.text == "" {
            return false
        } else if adjective1.text == "" {
            return false
        } else if adjective2.text == "" {
            return false
        }
        return true
        } else {
        if noun1.text == "" {
            return false
        } else if noun2.text == "" {
           return false
        } else if noun3.text == "" {
            return false
        } else if adjective1.text == "" {
            return false
        } else if person1.text == "" {
            return false
        } else if person2.text == "" {
            return false
        }
        return true
    }
}
    
    
    
}
    


