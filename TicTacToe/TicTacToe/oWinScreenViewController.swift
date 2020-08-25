//
//  oWinScreenViewController.swift
//  TicTacToe
//
//  Created by Rey Rodriguez on 8/18/19.
//  Copyright © 2019 Rey Rodriguez. All rights reserved.
//

import UIKit

class oWinScreenViewController: UIViewController {
    
    @IBOutlet var WinLabel: UILabel!
    
    @IBAction func RestartButton(_ sender: Any) {
        self.performSegue(withIdentifier: "GoHomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        WinLabel.text = HomeViewController.Myvars.Player2 + " has won the game!"
        WinLabel.textColor = GameScreenViewController.MyNum.Name2Color
    }
}
