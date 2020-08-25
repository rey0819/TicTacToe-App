//
//  HomeViewController.swift
//  TicTacToe
//
//  Created by Rey Rodriguez on 8/17/19.
//  Copyright © 2019 Rey Rodriguez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {
    struct Myvars{
        static var Player1 = ""
        static var Player2 = ""
    }
    @IBOutlet var Name1Outlet: UITextField!
    @IBOutlet var Name2Outlet: UITextField!
 
    @IBAction func Name1test(_ sender: Any) {
        Myvars.Player1 = Name1Outlet.text!
        Name1Outlet.resignFirstResponder()
    }
    
    @IBAction func Name2test(_ sender: Any) {
        Myvars.Player2 = Name2Outlet.text!
        Name2Outlet.resignFirstResponder()
    }
   
    
    @IBAction func PlayGameButton(_ sender: Any) {
        self.performSegue(withIdentifier: "GameScreenSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

