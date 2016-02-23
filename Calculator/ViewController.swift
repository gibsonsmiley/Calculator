//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var resultLabel = UILabel()
    var buttons: [UIButton] = []
    var button0 = UIButton()
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    var button5 = UIButton()
    var button6 = UIButton()
    var button7 = UIButton()
    var button8 = UIButton()
    var button9 = UIButton()
    var mulButton = UIButton()
    var divButton = UIButton()
    var pluButton = UIButton()
    var subButton = UIButton()
    var equButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createNumberButtons()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createNumberButtons() {
//        buttons.append(button0)
//        buttons.append(button1)
//        buttons.append(button2)
//        buttons.append(button3)
//        buttons.append(button4)
//        buttons.append(button5)
//        buttons.append(button6)
//        buttons.append(button7)
//        buttons.append(button8)
//        buttons.append(button9)
        buttons.append(mulButton)
        buttons.append(divButton)
        buttons.append(pluButton)
        buttons.append(subButton)
        buttons.append(equButton)
        
        

        
        for var i = 0; i<10; i++ {
            var space = 0
            let button = UIButton(frame: CGRect(x: 0, y: 400, width: 50, height: 50))
            space = space + 8
            button.setTitle(String(i), forState: .Normal)
            button.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)
            buttons.append(button)
            button.backgroundColor = .purpleColor()
            button.setTitleColor(.whiteColor(), forState: .Normal)
            button.layer.cornerRadius = 8
            
            mulButton.setTitle("*", forState: .Normal)
            
            
            view.addSubview(button)
        }
    }
    
    func createConstraints() {
        buttons[0].translatesAutoresizingMaskIntoConstraints = false
        buttons[1].translatesAutoresizingMaskIntoConstraints = false
        buttons[2].translatesAutoresizingMaskIntoConstraints = false
        buttons[3].translatesAutoresizingMaskIntoConstraints = false
        buttons[4].translatesAutoresizingMaskIntoConstraints = false
        buttons[5].translatesAutoresizingMaskIntoConstraints = false
        buttons[6].translatesAutoresizingMaskIntoConstraints = false
        buttons[7].translatesAutoresizingMaskIntoConstraints = false
        buttons[8].translatesAutoresizingMaskIntoConstraints = false
        buttons[9].translatesAutoresizingMaskIntoConstraints = false
        buttons[10].translatesAutoresizingMaskIntoConstraints = false
        mulButton.translatesAutoresizingMaskIntoConstraints = false
        divButton.translatesAutoresizingMaskIntoConstraints = false
        subButton.translatesAutoresizingMaskIntoConstraints = false
        pluButton.translatesAutoresizingMaskIntoConstraints = false
        equButton.translatesAutoresizingMaskIntoConstraints = false
        
        
//        Leading Constraints
        var constraints = NSLayoutConstraint(item: buttons[0], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
        view.addConstraint(constraints)
        constraints = NSLayoutConstraint(item: buttons[0], attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        view.addConstraint(constraints)
        constraints = NSLayoutConstraint(item: buttons[0], attribute: .Top, relatedBy: .Equal, toItem: buttons[1], attribute: .Bottom, multiplier: 1.0, constant: 0)
        view.addConstraint(constraints)
        constraints = NSLayoutConstraint(item: buttons[0], attribute: .Trailing, relatedBy: .Equal, toItem: equButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[1], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 1.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[2], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 2.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[3], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 3.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[4], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 4.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[5], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 5.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[6], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 6.0)
//        view.addConstraint(constraints)
//         constraints = NSLayoutConstraint(item: buttons[7], attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 100.0)
//        view.addConstraint(constraints)
        
        
        
        
        
        
    }
}