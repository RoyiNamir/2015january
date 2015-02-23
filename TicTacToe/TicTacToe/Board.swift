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
            if checkForVictory() {
                return MoveResult.Victory;
            }else{
                return MoveResult.ValidMove;
            }
        }
        return MoveResult.InvalidMove;
        
    }
    func isXturn()->Bool{
        return isX!;
    }
    
    private func checkForVictory()->Bool{
        for i in 0...2{
            if(gameBoard[i] == gameBoard[i+3] && gameBoard[i] == gameBoard[i+6] && gameBoard[i] != Status.Clear){
                return true;
            }
            var row = i * 3;
            if(gameBoard[row] == gameBoard[row+1] && gameBoard[row] == gameBoard[row+2] && gameBoard[row] != Status.Clear){
                return true;
            }
        }
        
        var diagonal1 = gameBoard[0] == gameBoard[4] && gameBoard[0] == gameBoard[8] && gameBoard[0] != Status.Clear;
        var diagonal2 = gameBoard[2] == gameBoard[4] && gameBoard[2] == gameBoard[6] && gameBoard[2] != Status.Clear;
        if(diagonal1 || diagonal2){
            return true;
        }
        
        
        return false;
    }
    
}
