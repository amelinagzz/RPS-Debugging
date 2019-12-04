//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultsViewController
        switch segue.identifier {
        case "rockSelected":
            vc?.userSelection = GameOption.rock
        case "paperSelected":
            vc?.userSelection = GameOption.paper
        case "scissorsSelected":
            vc?.userSelection = GameOption.scissors
        default:
            break
        }
    }
    
}
