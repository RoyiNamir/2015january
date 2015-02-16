//
//  Board.swift
//  TicTacToe
//
//  Created by Elad Lavi on 2/16/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation;

enum Status{
    case X;
    case O;
    case Clear;
}
enum MoveResult{
    case ValidMove;
    case InvalidMove;
    case Victory;
    case Draw;
}


class Board {
    private var gameBoard:[Status]!;
    private var isX:Bool!;
    init(){
        gameBoard = [Status]();
        isX = true;
        for i in 1...9{
            gameBoard.append(Status.Clear);
        }
    }
    
    func move(cell:Int)->MoveResult{
        if(cell<1 || cell>9){
            return MoveResult.InvalidMove;
        }
        if(gameBoard[cell-1] == Status.Clear){
            gameBoard[cell-1] = isX! ? Status.X : Status.O;
            isX = !isX!;
            //TODO: check for victory
            return MoveResult.ValidMove;
        }
        return MoveResult.InvalidMove;
        
    }
    func isXturn()->Bool{
        return isX!;
    }
    
}
