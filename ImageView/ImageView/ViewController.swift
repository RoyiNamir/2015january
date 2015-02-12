//
//  ViewController.swift
//  ImageView
//
//  Created by Elad Lavi on 2/12/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let image = UIImage(named: "ball");
    //var imageView:UIImageView;
    var imageView:UIImageView!;
    
    /*
    required init(coder aDecoder:NSCoder){
        imageView = UIImageView(image: image);
        super.init(coder: aDecoder);
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        imageView = UIImageView(frame: view.bounds);
        imageView.image = image;
        imageView.contentMode = UIViewContentMode.ScaleAspectFit;
        //imageView.center = view.center;
        imageView.frame = CGRect(x: 5, y: 10, width: 250, height: 250);
        //imageView.center = CGPoint(x: 5, y: 10);
        view.addSubview(imageView);
        //println("height: \(view.bounds.size.height) and width: \(view.bounds.size.width)");

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

