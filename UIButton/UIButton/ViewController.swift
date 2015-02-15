//
//  ViewController.swift
//  UIButton
//
//  Created by Elad Lavi on 2/12/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var button:UIButton!;
    
    func buttonIsPressed(sender: UIButton){
        println("Button is pressed");
    }
    
    func buttonIsTapped(sender: UIButton){
        println("Button is tapped");
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let normalImage = UIImage(named: "blue_rectangle");
        let highlightedImage = UIImage(named: "red_rectangle");
        
        
        //button = UIButton.buttonWithType(UIButtonType.System) as? UIButton;
        button = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton;
        button.frame = CGRect(x: 110, y: 70, width: 100, height: 44);
        button.setTitle("Press me", forState: UIControlState.Normal);
        button.setTitle("I'm pressed", forState: UIControlState.Highlighted);
        
        button.setBackgroundImage(normalImage, forState: UIControlState.Normal);
        button.setBackgroundImage(highlightedImage, forState: UIControlState.Highlighted);

        
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: UIControlEvents.TouchDown);
        
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: UIControlEvents.TouchUpInside);
        
        view.addSubview(button);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

