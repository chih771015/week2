//
//  ViewController.swift
//  FunFacts
//
//  Created by 姜旦旦 on 2019/1/18.
//  Copyright © 2019 姜旦旦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var aa: String? //判斷用
    var bb: String? //判斷用
    var cc: UIColor? //判斷用
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var assignmentLabel: UILabel!
    @IBOutlet weak var funFactButtom: UIButton!
    
    
    
    let factProvider = FactProvider()
    let assignmentProvider = AssignmentProvider()
    let colorProvider = BackgroundColorProvider()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
      //  funFactLabel.text = factProvider.randomFact()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showFact() {
       
        
        repeat{
            funFactLabel.text = factProvider.randomFact()
        }while aa == funFactLabel.text
        
        aa = funFactLabel.text
        /**
        若與上一個字串相同則持續隨機到不同為止
        **/
        repeat{
            assignmentLabel.text = assignmentProvider.randomAssignment()
        }while bb == assignmentLabel.text
        
        
        bb = assignmentLabel.text
        /**
         若與上一個字串相同則持續隨機到不同為止
         **/
        
        var randomColor = colorProvider.randomColor()
        
        while cc == randomColor{
            randomColor = colorProvider.randomColor()
        }
        /**
         若與上一個顏色相同則持續隨機到不同為止
         **/
        
        
        view.backgroundColor = randomColor
        //funFactButtom.tintColor = randomColor ///Can't working. I will figure out what's happened
        funFactButtom.setTitleColor(randomColor, for: []) //替代方案
        
        cc = view.backgroundColor
        
    } 
    
}

