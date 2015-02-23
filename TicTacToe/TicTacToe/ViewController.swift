//
//  ViewController.swift
//  TicTacToe
//
//  Created by Elad Lavi on 2/16/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var board:Board!;
    var buttons:[UIButton]!;
    var xImage:UIImage!;
    var oImage:UIImage!;
    var appTitle:UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        let leftMargin = 20;
        let topMargin = 150;
        let spacing = 120;
        var background = UIImage(named: "board");
        xImage = UIImage(named: "X");
        oImage = UIImage(named: "O");
        
        var backgroundView = UIImageView(image: background!);
        backgroundView.frame = CGRect(x: 0, y: CGFloat(topMargin), width: view.frame.width, height: CGFloat(spacing*3));
        view.addSubview(backgroundView);
        appTitle = UILabel(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: 50));

        appTitle.text = "Tic Tac Toe";
        appTitle.font = UIFont.boldSystemFontOfSize(30);
        appTitle.textAlignment = NSTextAlignment.Center;
        view.addSubview(appTitle);
        buttons = [UIButton]();
        board = Board();
        
        var x:Int = leftMargin;
        var y:Int = topMargin;
        for i in 1...9{
            var button:UIButton!=UIButton.buttonWithType(UIButtonType.System) as? UIButton;
            //button.setTitle("\(i)", forState: UIControlState.Normal);
            button.frame = CGRect(x: x, y: y, width: 100, height: 100);
            x += spacing;
            if i%3==0{
                x = leftMargin;
                y +=  spacing;
            }
            //button.setBackgroundImage(UIImage(named: "red_rectangle"), forState: UIControlState.Normal);
            button.titleLabel?.font = UIFont.boldSystemFontOfSize(25);
            button.tag = i; //so when button is clicked we can realize which button was clicked.
            button.addTarget(self, action: "btnClicked:", forControlEvents: UIControlEvents.TouchUpInside);
            
            view.addSubview(button);
            buttons.append(button);
            
            
            
        }
    }
    
    func btnClicked(sender: UIButton){
        //println("button \(sender.tag) was clicked");
        var result = board.move(sender.tag);
        if(result==MoveResult.ValidMove || result==MoveResult.Victory){
            //sender.setTitle(board.isXturn() ? "O" : "X", forState: UIControlState.Normal);
            sender.setBackgroundImage(board.isXturn() ? oImage : xImage, forState: UIControlState.Normal)
            if(result == MoveResult.Victory){
                //println("we have a winner!");
                appTitle.text = "we have a winner!";
            }else{
                var t:Character = board.isXturn() ? "X" : "O";
                appTitle.text = "it is \(t) turn";
            }
        }else if(result==MoveResult.InvalidMove){
            //println("ilegal move");
            appTitle.text = "ilegal move...";
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

