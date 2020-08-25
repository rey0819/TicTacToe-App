//
//  GameScreenViewController.swift
//  TicTacToe
//
//  Created by Rey Rodriguez on 8/17/19.
//  Copyright © 2019 Rey Rodriguez. All rights reserved.
//


import UIKit

class GameScreenViewController: UIViewController {
    @IBOutlet var Name1GameOutlet: UILabel!
    
    @IBOutlet var Name2GameOutlet: UILabel!
    
    @IBOutlet var WhoseTurnLabel: UILabel!
    
    @IBOutlet var TopLeftOutlet: UILabel!
    
    @IBOutlet var TopMidOutlet: UILabel!
    
    @IBOutlet var TopRightOutlet: UILabel!
    
    @IBOutlet var MidLeftOutlet: UILabel!
    
    @IBOutlet var MidMidOutlet: UILabel!
    
    @IBOutlet var MidRightOutlet: UILabel!
    
    @IBOutlet var BotLeftOutlet: UILabel!
    
    @IBOutlet var BotMidOutlet: UILabel!
    
    @IBOutlet var BotRightOutlet: UILabel!
    
    
    @IBAction func GoBackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeScreenSegue", sender: self)
    }
    
    struct MyNum{
        static var num = 1
        static var Name1Color = UIColor.blue
        static var Name2Color = UIColor.green
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Name1GameOutlet.text = HomeViewController.Myvars.Player1
        Name2GameOutlet.text = HomeViewController.Myvars.Player2
        MyNum.num = 1
        MyNum.Name1Color = Name1GameOutlet.textColor
        MyNum.Name2Color = Name2GameOutlet.textColor
        WhoseTurnLabel.text = WhoseTurnText()
        WhoseTurnLabel.textColor = WhoseTurnColor()
        
        
    }
    
    @IBAction func TopLeftButtonPressed(_ sender: Any) {
        if(TopLeftOutlet.text != "X" && TopLeftOutlet.text != "O"){
        TopLeftOutlet.text = XorO()
        TopLeftOutlet.textColor = WhoseTurnColor()
        
            if(xWon()){
                WhoseTurnLabel.text = "GAME OVER"
                WhoseTurnLabel.textColor = Name1GameOutlet.textColor
                self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
            }
            if(oWon()){
                WhoseTurnLabel.text = "GAME OVER"
                WhoseTurnLabel.textColor = Name2GameOutlet.textColor
                self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
            }
            if(isTie()){
                WhoseTurnLabel.text = "TIE GAME"
                WhoseTurnLabel.textColor = UIColor.white
                self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
            }
            else{
        
            MyNum.num = MyNum.num + 1
        
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
            }
        }
        else if(TopLeftOutlet.text == "X" || TopLeftOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func TopMidButtonPressed(_ sender: Any) {
        if(TopMidOutlet.text != "X" && TopMidOutlet.text != "O"){
        TopMidOutlet.text = XorO()
        TopMidOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(TopMidOutlet.text == "X" || TopMidOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    

    @IBAction func TopRightButtonPressed(_ sender: Any) {
        if(TopRightOutlet.text != "X" && TopRightOutlet.text != "O"){
        TopRightOutlet.text = XorO()
        TopRightOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(TopRightOutlet.text == "X" || TopRightOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    
    @IBAction func MidLeftButtonPressed(_ sender: Any) {
        if(MidLeftOutlet.text != "X" && MidLeftOutlet.text != "O"){
        MidLeftOutlet.text = XorO()
        MidLeftOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(MidLeftOutlet.text == "X" || MidLeftOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func MidMidButtonPressed(_ sender: Any) {
        if(MidMidOutlet.text != "X" && MidMidOutlet.text != "O"){
        MidMidOutlet.text = XorO()
        MidMidOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(MidMidOutlet.text == "X" || MidMidOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func MidRightButtonPressed(_ sender: Any) {
        if(MidRightOutlet.text != "X" && MidRightOutlet.text != "O"){
        MidRightOutlet.text = XorO()
        MidRightOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(MidRightOutlet.text == "X" || MidRightOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func BotLeftButtonPressed(_ sender: Any) {
        if(BotLeftOutlet.text != "X" && BotLeftOutlet.text != "O"){
        BotLeftOutlet.text = XorO()
        BotLeftOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(BotLeftOutlet.text == "X" || BotLeftOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func BotMidButtonPressed(_ sender: Any) {
        if(BotMidOutlet.text != "X" && BotMidOutlet.text != "O"){
        BotMidOutlet.text = XorO()
        BotMidOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(BotMidOutlet.text == "X" || BotMidOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    @IBAction func BotRightButtonPressed(_ sender: Any) {
        if(BotRightOutlet.text != "X" && BotRightOutlet.text != "O"){
        BotRightOutlet.text = XorO()
        BotRightOutlet.textColor = WhoseTurnColor()
        
        if(xWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name1GameOutlet.textColor
            self.performSegue(withIdentifier: "xWinScreenSegue", sender: self)
        }
        if(oWon()){
            WhoseTurnLabel.text = "GAME OVER"
            WhoseTurnLabel.textColor = Name2GameOutlet.textColor
            self.performSegue(withIdentifier: "oWinScreenSegue", sender: self)
        }
        if(isTie()){
            WhoseTurnLabel.text = "TIE GAME"
            WhoseTurnLabel.textColor = UIColor.white
            self.performSegue(withIdentifier: "TieGameSegue", sender: self)
            
        }
        else{
            
            MyNum.num = MyNum.num + 1
            
            WhoseTurnLabel.text = WhoseTurnText()
            WhoseTurnLabel.textColor = WhoseTurnColor()
        }
        }
        else if(BotRightOutlet.text == "X" || BotRightOutlet.text == "O"){
            WhoseTurnLabel.text = "This square is occupied, please pick another one"
            WhoseTurnLabel.textColor = UIColor.white
        }
    }
    
    public func xWon()->Bool{
        if(TopLeftOutlet.text == "X" && TopLeftOutlet.text==TopMidOutlet.text && TopLeftOutlet.text==TopRightOutlet.text){
            return true
        }
        if(TopLeftOutlet.text == "X" && TopLeftOutlet.text==MidLeftOutlet.text && TopLeftOutlet.text==BotLeftOutlet.text){
            return true
        }
        if(MidLeftOutlet.text == "X" && MidLeftOutlet.text==MidMidOutlet.text && MidLeftOutlet.text==MidRightOutlet.text){
            return true
        }
        if(BotLeftOutlet.text == "X" && BotLeftOutlet.text==BotMidOutlet.text && BotLeftOutlet.text==BotRightOutlet.text){
            return true
        }
        if(TopMidOutlet.text == "X" && TopMidOutlet.text==MidMidOutlet.text && TopMidOutlet.text==BotMidOutlet.text){
            return true
        }
        if(TopRightOutlet.text == "X" && TopRightOutlet.text==MidRightOutlet.text && TopRightOutlet.text==BotRightOutlet.text){
            return true
        }
        if(TopLeftOutlet.text == "X" && TopLeftOutlet.text==MidMidOutlet.text && TopLeftOutlet.text==BotRightOutlet.text){
            return true
        }
        if(BotLeftOutlet.text == "X" && BotLeftOutlet.text==MidMidOutlet.text && BotLeftOutlet.text==TopRightOutlet.text){
            return true
        }
        return false
    }
    
    public func oWon()->Bool{
        if(TopLeftOutlet.text == "O" && TopLeftOutlet.text==TopMidOutlet.text && TopLeftOutlet.text==TopRightOutlet.text){
            return true
        }
        if(TopLeftOutlet.text == "O" && TopLeftOutlet.text==MidLeftOutlet.text && TopLeftOutlet.text==BotLeftOutlet.text){
            return true
        }
        if(MidLeftOutlet.text == "O" && MidLeftOutlet.text==MidMidOutlet.text && MidLeftOutlet.text==MidRightOutlet.text){
            return true
        }
        if(BotLeftOutlet.text == "O" && BotLeftOutlet.text==BotMidOutlet.text && BotLeftOutlet.text==BotRightOutlet.text){
            return true
        }
        if(TopMidOutlet.text == "O" && TopMidOutlet.text==MidMidOutlet.text && TopMidOutlet.text==BotMidOutlet.text){
            return true
        }
        if(TopRightOutlet.text == "O" && TopRightOutlet.text==MidRightOutlet.text && TopRightOutlet.text==BotRightOutlet.text){
            return true
        }
        if(TopLeftOutlet.text == "O" && TopLeftOutlet.text==MidMidOutlet.text && TopLeftOutlet.text==BotRightOutlet.text){
            return true
        }
        if(BotLeftOutlet.text == "O" && BotLeftOutlet.text==MidMidOutlet.text && BotLeftOutlet.text==TopRightOutlet.text){
            return true
        }
        return false
    }
    
    
    
    
    public func isTie()->Bool{
        if(MyNum.num == 9){
            return true
        }
        return false
    }
}
