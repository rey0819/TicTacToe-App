//
//  WhoseTurn.swift
//  TicTacToe
//
//  Created by Rey Rodriguez on 8/17/19.
//  Copyright © 2019 Rey Rodriguez. All rights reserved.
//

import UIKit

public func WhoseTurnText()-> String{
    let number = GameScreenViewController.MyNum.num
    if(number%2 == 0){
        return HomeViewController.Myvars.Player2 + " make a move"
    }
    if(number%2 != 0){
        return HomeViewController.Myvars.Player1 + " make a move"
    }
    return ""
}

public func XorO()-> String{
    let number = GameScreenViewController.MyNum.num
    if(number%2 == 0){
        return "O"
    }
    if(number%2 != 0){
        return "X"
    }
    return ""
}

public func WhoseTurnColor()-> UIColor{
    let number = GameScreenViewController.MyNum.num
 
    if(number%2 == 0){
        return GameScreenViewController.MyNum.Name2Color
    }
    if(number%2 != 0){
        return GameScreenViewController.MyNum.Name1Color
    }
    return UIColor.white
}


