//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Matthew Arnold on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet var a1: UITextField!
    @IBOutlet var a2: UITextField!
    @IBOutlet var b1: UITextField!
    @IBOutlet var b2: UITextField!
    @IBOutlet var outputField: UITextField!
    
    @IBAction func scissorsButton(_ sender: UIButton) {
       outputField.text=run(input: "scissors")
        a1.text="Player: "+String(playerScore)
        print("Player: ",playerScore)
        a2.text="AI: "+String(aiScore)
            print("AI: ",aiScore)
        if (playerScore>9)||(aiScore>9) {
            b1.text=("Player favorite: "+playerFavorite())
            b2.text=("AI favorite: "+aiFavorite())
        }
   }
    @IBAction func paperButton(_ sender: UIButton) {
        outputField.text=run(input: "paper")
        a1.text="Player: "+String(playerScore)
        a2.text="AI: "+String(aiScore)
        if (playerScore>9)||(aiScore>9) {
            b1.text=("Player favorite: "+playerFavorite())
            b2.text=("AI favorite: "+aiFavorite())
        }
    }
    @IBAction func rockButton(_ sender: UIButton) {
      outputField.text=run(input: "rock")
        a1.text="Player: "+String(playerScore)
        a2.text="AI: "+String(aiScore)
        if (playerScore>9)||(aiScore>9) {
            b1.text=("Player favorite: "+playerFavorite())
            b2.text=("AI favorite: "+aiFavorite())
        }
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

