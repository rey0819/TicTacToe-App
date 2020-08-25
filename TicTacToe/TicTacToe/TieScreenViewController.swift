//
//  TieScreenViewController.swift
//  TicTacToe
//
//  Created by Rey Rodriguez on 8/18/19.
//  Copyright © 2019 Rey Rodriguez. All rights reserved.
//

import UIKit

class TieScreenViewController: UIViewController {
    
    @IBAction func GoHome(_ sender: Any) {
    self.performSegue(withIdentifier: "GoHomeSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
