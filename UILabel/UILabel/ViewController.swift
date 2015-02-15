//
//  ViewController.swift
//  UILabel
//
//  Created by Elad Lavi on 2/12/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label:UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRect(x: view.bounds.width-100, y: 100, width: 100, height: 70));
        //label.text = "Swift is not that bad at all. it is actually fun!";
        label.text = "היי מה קורה ? הכל בסדר?";
        label.adjustsFontSizeToFitWidth = true;
        //label.numberOfLines = 3;
        //label.lineBreakMode = NSLineBreakMode.ByWordWrapping;
        //label.font = UIFont.boldSystemFontOfSize(14);
        view.addSubview(label);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

