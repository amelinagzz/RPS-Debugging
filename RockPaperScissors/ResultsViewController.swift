//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var userSelection : GameOption!
    let randomOption = GameOption.init()
    
    @IBOutlet weak var playagainBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBtnMessage()
        updateLabel()
    }
    
    func showOponentChoice(){
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
    }
    
    func updateLabel(){
        if userSelection == randomOption{
            resultLabel.text = "It's a tie"
            resultLabel.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        }else{
            if(randomOption == userSelection.weakness){
                resultLabel.text = "You lose"
                resultLabel.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            }else{
                resultLabel.text = "You win"
                resultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            }
        }
    }
    
    func updateBtnMessage(){
        if resultLabel.textColor == UIColor.blue {
            playagainBtn.setTitle("Break the tie", for:.normal)
        }else if resultLabel.textColor == UIColor.red {
            playagainBtn.setTitle("Rematch", for:.normal)
        }else{
            playagainBtn.titleLabel?.text = "Try winning again"
        }
    }
    
    @IBAction func goToStart(_ sender: Any) {
        self.navigationController!.dismiss(animated: true, completion: nil)
    }
    
}
