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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [UIButton]();
        board = Board();
        let leftMargin = 20;
        let topMargin = 50;
        let spacing = 120;
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
            button.setBackgroundImage(UIImage(named: "red_rectangle"), forState: UIControlState.Normal);
            button.titleLabel?.font = UIFont.boldSystemFontOfSize(25);
            button.tag = i;
            button.addTarget(self, action: "btnClicked:", forControlEvents: UIControlEvents.TouchUpInside);
            
            view.addSubview(button);
            buttons.append(button);
            
            
            
        }
    }
    
    func btnClicked(sender: UIButton){
        println("button \(sender.tag) was clicked");
        var result = board.move(sender.tag);
        if(result==MoveResult.ValidMove || result==MoveResult.Victory){
            sender.setTitle(board.isXturn() ? "O" : "X", forState: UIControlState.Normal);
            if(result == MoveResult.Victory){
                println("we have a winner!");
            }
        }else if(result==MoveResult.InvalidMove){
            println("ilegal move");
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

