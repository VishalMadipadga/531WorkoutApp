//
//  ViewController.swift
//  531WorkoutApp
//
//  Created by Vishal on 7/18/18.
//  Copyright © 2018 Vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
   
    @IBOutlet weak var squatWeek1: UILabel!
    @IBOutlet weak var squatWeek2: UILabel!
    @IBOutlet weak var squatWeek3: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    
    @IBOutlet weak var benchWeek1: UILabel!
    @IBOutlet weak var benchWeek2: UILabel!
    @IBOutlet weak var benchWeek3: UILabel!
    
    
    var squat:Float = 0
    var TM:Float = 0.9
    
    var bench:Float = 0
    var benchTM:Float = 0.9
    
    var deadlift:Float = 0
    var deadliftTM:Float = 0.9
    
    var press:Float = 0
    var pressTM:Float = 0.9
    
    var week11:Int = 0
    var week12:Int = 0
    var week13:Int = 0
    var week21:Int = 0
    var week22:Int = 0
    var week23:Int = 0
    var week31:Int = 0
    var week32:Int = 0
    var week33:Int = 0
    
    var sixtyfive:Float = 0.65
    var seventy:Float = 0.70
    var seventyfive:Float = 0.75
    var eighty:Float = 0.80
    var eightyfive:Float = 0.85
    var ninety:Float = 0.90
    var ninetyfive:Float = 0.95
    
    
    @IBOutlet weak var SquatMax: UITextField!
    
    @IBOutlet weak var SquatTM: UITextField!
    
    @IBOutlet weak var squat65: UITextField!
    @IBOutlet weak var squat75: UITextField!
    @IBOutlet weak var squat85: UITextField!
    @IBOutlet weak var squat70: UITextField!
    @IBOutlet weak var squat80: UITextField!
    @IBOutlet weak var squat90: UITextField!
    @IBOutlet weak var squat752: UITextField!
    @IBOutlet weak var squat852: UITextField!
    @IBOutlet weak var squat952: UITextField!
    
    
    @IBAction func calculateSquat(_ sender: UIButton){
        
        if let text = SquatMax.text, !text.isEmpty{
        SquatMax.resignFirstResponder()
       let squat: Float? = Float(SquatMax.text!)
        var finalSquat:Int = Int(TM*squat!)
        finalSquat = roundToFive(x: Double(finalSquat))
        SquatTM.text = String(finalSquat)
        week11 = Int(TM*squat!*sixtyfive)
        week11 = roundToFive(x: Double(week11))
        
        week12 = Int(TM*squat!*seventyfive)
        week12 = roundToFive(x: Double(week12))
        
        week13 = Int(TM*squat!*eightyfive)
        week13 = roundToFive(x: Double(week13))
        
        week21 = Int(TM*squat!*seventy)
        week21 = roundToFive(x: Double(week21))
        
        week22 = Int(TM*squat!*eighty)
        week22 = roundToFive(x: Double(week22))
        
        week23 = Int(TM*squat!*ninety)
        week23 = roundToFive(x: Double(week23))
        
        week31 = Int(TM*squat!*seventyfive)
        week31 = roundToFive(x: Double(week31))
        
        week32 = Int(TM*squat!*eightyfive)
        week32 = roundToFive(x: Double(week32))
        
        week33 = Int(TM*squat!*ninetyfive)
        week33 = roundToFive(x: Double(week33))
        
        squat65.text = String(week11)
        squat75.text = String(week12)
        squat85.text = String(week13)
        squat70.text = String(week21)
        squat80.text = String(week22)
        squat90.text = String(week23)
        squat752.text = String(week31)
        squat852.text = String(week32)
        squat952.text = String(week33)
        
        /*squatWeek1.isHidden = false
        squatWeek2.isHidden = false
        squatWeek3.isHidden = false*/
        }
        else{
            let alertController = UIAlertController(title: "Error", message:
                "Please Enter a 1 Rep Max", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBOutlet weak var BenchMax: UITextField!
    
    @IBOutlet weak var BenchTM: UITextField!
    @IBOutlet weak var bench65: UITextField!
    @IBOutlet weak var bench952: UITextField!
    @IBOutlet weak var bench852: UITextField!
    @IBOutlet weak var bench752: UITextField!
    @IBOutlet weak var bench90: UITextField!
    @IBOutlet weak var bench80: UITextField!
    @IBOutlet weak var bench70: UITextField!
    @IBOutlet weak var bench85: UITextField!
    @IBOutlet weak var bench75: UITextField!
    
    @IBAction func calculateBench(_ sender: UIButton) {
        if let text = BenchMax.text, !text.isEmpty
        {
        BenchMax.resignFirstResponder()
        let bench: Float? = Float(BenchMax.text!)
        
        var finalbench:Int = Int(TM*bench!)
        finalbench = roundToFive(x: Double(finalbench))
        BenchTM.text = String(finalbench)
        week11 = Int(TM*bench!*sixtyfive)
        week11 = roundToFive(x: Double(week11))
        
        week12 = Int(TM*bench!*seventyfive)
        week12 = roundToFive(x: Double(week12))
        
        week13 = Int(TM*bench!*eightyfive)
        week13 = roundToFive(x: Double(week13))
        
        week21 = Int(TM*bench!*seventy)
        week21 = roundToFive(x: Double(week21))
        
        week22 = Int(TM*bench!*eighty)
        week22 = roundToFive(x: Double(week22))
        
        week23 = Int(TM*bench!*ninety)
        week23 = roundToFive(x: Double(week23))
        
        week31 = Int(TM*bench!*seventyfive)
        week31 = roundToFive(x: Double(week31))
        
        week32 = Int(TM*bench!*eightyfive)
        week32 = roundToFive(x: Double(week32))
        
        week33 = Int(TM*bench!*ninetyfive)
        week33 = roundToFive(x: Double(week33))
        
        bench65.text = String(week11)
        bench75.text = String(week12)
        bench85.text = String(week13)
        bench70.text = String(week21)
        bench80.text = String(week22)
        bench90.text = String(week23)
        bench752.text = String(week31)
        bench852.text = String(week32)
        bench952.text = String(week33)
        }
        
        else{
            let alertController = UIAlertController(title: "Error", message:
                "Please Enter a 1 Rep Max", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @IBOutlet weak var DeadliftMax: UITextField!
    
    @IBOutlet weak var DeadliftTM: UITextField!
    
    @IBOutlet weak var deadlift952: UITextField!
    @IBOutlet weak var deadlift852: UITextField!
    @IBOutlet weak var deadlift752: UITextField!
    @IBOutlet weak var deadlift90: UITextField!
    @IBOutlet weak var deadlift80: UITextField!
    @IBOutlet weak var deadlift70: UITextField!
    @IBOutlet weak var deadlift85: UITextField!
    @IBOutlet weak var deadlift75: UITextField!
    @IBOutlet weak var deadlift65: UITextField!
    @IBAction func calculateDeadlift(_ sender: UIButton) {
        
       if let text = DeadliftMax.text, !text.isEmpty
       {
        DeadliftMax.resignFirstResponder()
        let deadlift: Float? = Float(DeadliftMax.text!)
        
        var finaldeadlift:Int = Int(TM*deadlift!)
        finaldeadlift = roundToFive(x: Double(finaldeadlift))
        DeadliftTM.text = String(finaldeadlift)
        week11 = Int(TM*deadlift!*sixtyfive)
        week11 = roundToFive(x: Double(week11))
        
        week12 = Int(TM*deadlift!*seventyfive)
        week12 = roundToFive(x: Double(week12))
        
        week13 = Int(TM*deadlift!*eightyfive)
        week13 = roundToFive(x: Double(week13))
        
        week21 = Int(TM*deadlift!*seventy)
        week21 = roundToFive(x: Double(week21))
        
        week22 = Int(TM*deadlift!*eighty)
        week22 = roundToFive(x: Double(week22))
        
        week23 = Int(TM*deadlift!*ninety)
        week23 = roundToFive(x: Double(week23))
        
        week31 = Int(TM*deadlift!*seventyfive)
        week31 = roundToFive(x: Double(week31))
        
        week32 = Int(TM*deadlift!*eightyfive)
        week32 = roundToFive(x: Double(week32))
        
        week33 = Int(TM*deadlift!*ninetyfive)
        week33 = roundToFive(x: Double(week33))
        
        deadlift65.text = String(week11)
        deadlift75.text = String(week12)
        deadlift85.text = String(week13)
        deadlift70.text = String(week21)
        deadlift80.text = String(week22)
        deadlift90.text = String(week23)
        deadlift752.text = String(week31)
        deadlift852.text = String(week32)
        deadlift952.text = String(week33)
        }
       else{
        let alertController = UIAlertController(title: "Error", message:
            "Please Enter a 1 Rep Max", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    
    @IBOutlet weak var PressMax: UITextField!
    
    @IBOutlet weak var PressTM: UITextField!
    
    @IBOutlet weak var press952: UITextField!
    @IBOutlet weak var press852: UITextField!
    @IBOutlet weak var press752: UITextField!
    @IBOutlet weak var press90: UITextField!
    @IBOutlet weak var press80: UITextField!
    @IBOutlet weak var press70: UITextField!
    @IBOutlet weak var press85: UITextField!
    @IBOutlet weak var press75: UITextField!
    @IBOutlet weak var press65: UITextField!
    @IBAction func calculatePress(_ sender: UIButton) {
        
        if let text = PressMax.text, !text.isEmpty
        {
        PressMax.resignFirstResponder()
        let press: Float? = Float(PressMax.text!)
        
        var finalpress:Int = Int(TM*press!)
        finalpress = roundToFive(x: Double(finalpress))
        PressTM.text = String(finalpress)
        week11 = Int(TM*press!*sixtyfive)
        week11 = roundToFive(x: Double(week11))
        
        week12 = Int(TM*press!*seventyfive)
        week12 = roundToFive(x: Double(week12))
        
        week13 = Int(TM*press!*eightyfive)
        week13 = roundToFive(x: Double(week13))
        
        week21 = Int(TM*press!*seventy)
        week21 = roundToFive(x: Double(week21))
        
        week22 = Int(TM*press!*eighty)
        week22 = roundToFive(x: Double(week22))
        
        week23 = Int(TM*press!*ninety)
        week23 = roundToFive(x: Double(week23))
        
        week31 = Int(TM*press!*seventyfive)
        week31 = roundToFive(x: Double(week31))
        
        week32 = Int(TM*press!*eightyfive)
        week32 = roundToFive(x: Double(week32))
        
        week33 = Int(TM*press!*ninetyfive)
        week33 = roundToFive(x: Double(week33))
        
        press65.text = String(week11)
        press75.text = String(week12)
        press85.text = String(week13)
        press70.text = String(week21)
        press80.text = String(week22)
        press90.text = String(week23)
        press752.text = String(week31)
        press852.text = String(week32)
        press952.text = String(week33)
        }
        
        else{
            let alertController = UIAlertController(title: "Error", message:
                "Please Enter a 1 Rep Max", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func howtosquat(_ sender: UIButton) {
        openUrl(urlStr: "https://www.youtube.com/watch?v=vmNPOjaGrVE")
    }
    
    @IBAction func howtobench(_ sender: UIButton) {
        openUrl(urlStr: "https://www.youtube.com/watch?v=sSXDYMy1f6c")
    }
    
    @IBAction func howtodeadlift(_ sender: UIButton) {
        openUrl(urlStr: "https://www.youtube.com/watch?v=wYREQkVtvEc")
        
    }
    
    @IBAction func howtopress(_ sender: UIButton) {
        openUrl(urlStr: "https://www.youtube.com/watch?v=eNFXEEdfQp4")
        
    }
    
  
    
    @IBAction func squatInstructions(_ sender: UIButton) {
        performSegue(withIdentifier: "instructions", sender: self)
       
           }
    
    @IBAction func benchInstructions(_ sender: UIButton) {
         performSegue(withIdentifier: "instructionss", sender: self)
    }
    
    @IBAction func deadliftInstructions(_ sender: UIButton) {
         performSegue(withIdentifier: "instructionsss", sender: self)
    }
    
    @IBAction func pressInstructions(_ sender: UIButton) {
        performSegue(withIdentifier: "instructionssss", sender: self)
    }
    
    
    @IBAction func exit(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func explanation(_ sender: UIButton) {
        openUrl(urlStr: "https://www.youtube.com/watch?v=34LJX-arUo8")
    }
    
    @IBAction func Maxcalc(_ sender: UIButton) {
        openUrl(urlStr: "https://exrx.net/Calculators/OneRepMax")
    }
    
    @IBAction func sample(_ sender: UIButton) {
        
        openUrl(urlStr: "https://www.reddit.com/r/Fitness/wiki/531-beginners")
    }
    
    
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.openURL(url as URL)
        }
        
    }
    
    func roundToFive(x : Double) -> Int {
        return 5 * Int(round(x / 5.0))
    }

    
    
}

