//
//  ViewController.swift
//  passwordGenerator
//
//  Created by Julia on 27.02.19.
//  Copyright © 2019 Tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var arrayNumber = ["1","2","3","4","5","6","7","8","9","0"]
    private var arrayabc = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    private var arraysymbol = ["!","$","%","&","@","?"]
    
    @IBOutlet weak var numberswitch: UISwitch!
    @IBOutlet weak var symbolswitch: UISwitch!
    
    @IBOutlet weak var lenghtlable: UILabel!
    @IBOutlet weak var lenghtslider: UISlider!
    
    @IBOutlet weak var password: UILabel!
    
    private var passwordstring = String()
    
    @IBAction func creat(_ sender: Any) {
        // Die length des passwords
        var passwordlenght = Int(round(lenghtslider.value))
        // password with numbers and symbols
        if (numberswitch.isOn && symbolswitch.isOn){
            
            var help = arrayabc + arrayNumber + arraysymbol + arrayNumber + arraysymbol
            var passwordstring = help[Int.random(in: 0 ..< 83)]
            passwordlenght -= 1
            while passwordlenght != 0{
                passwordstring += help[Int.random(in: 0 ..< 83)]
                passwordlenght -= 1
            }
            password.text = passwordstring
        // password with numbers
        }else if(numberswitch.isOn){
            
            var help = arrayabc + arrayNumber + arrayNumber
            passwordstring = help[Int.random(in: 0 ..< 70)]
            passwordlenght -= 1
            while passwordlenght != 0{
                passwordstring += help[Int.random(in: 0 ..< 70)]
                passwordlenght -= 1
            }
            password.text = passwordstring
        // password with symbols
        }else if(symbolswitch.isOn){
            var help = arrayabc + arraysymbol + arraysymbol
            passwordstring = help[Int.random(in: 0 ..< 63)]
            passwordlenght -= 1
            while passwordlenght != 0{
                passwordstring += help[Int.random(in: 0 ..< 63)]
                passwordlenght -= 1
            }
            password.text = passwordstring
            
        }else{
        // password only letters
            passwordstring = arrayabc[Int.random(in: 0 ..< 51)]
            passwordlenght -= 1
            while passwordlenght != 0{
                passwordstring += arrayabc[Int.random(in: 0 ..< 51)]
                passwordlenght -= 1
            }
            password.text = passwordstring
        }
        
    }
    
    @IBAction func slider(_ sender: Any) {
        lenghtlable.text = "Password lenght: \(Int(round(lenghtslider.value)))"
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
         lenghtlable.text = "Password lenght: \(Int(round(lenghtslider.value)))"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

