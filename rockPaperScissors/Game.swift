//
//  Game.swift
//  rockPaperScissors
//
//  Created by Matthew Arnold on 11/16/22.
//

//can we study what people pick and guess better? individual profiles?
import Foundation
public var playerScore=0
public var aiScore=0
public var playerR=0
public var playerP=0
public var playerS=0
public var aiR=0
public var aiP=0
public var aiS=0
func aiPick()->String{
    switch (Int.random(in: 0...2)) {
    case 0:
      aiR+=1
        return("rock")
    case 1:
        aiP+=1
        return("paper")
    default:
       aiS+=1
        return("scissors")
    }
    
}
func run(input:String)->String {
    print("running")
    return compareTurns(player: input, ai: aiPick())
}
func compareTurns(player:String,ai:String)->String{
   
    if (player=="rock")&&(ai=="scissors") {
        playerScore+=1
        playerR+=1
        return "You win"
    }else if (player=="rock")&&(ai=="paper") {
        playerR+=1
        aiScore+=1
        return "You lose"
    }else if (player=="scissors")&&(ai=="rock") {
        playerS+=1
        aiScore+=1
        return "You lose"
    }else if (player=="scissors")&&(ai=="paper") {
        playerS+=1
        playerScore+=1
        return "You win"
    }else if (player=="paper")&&(ai=="scissors") {
        playerP+=1
        aiScore+=1
        return "You lose"
    } else if (player=="paper")&&(ai=="rock") {
        playerP+=1
        aiScore+=1
        return "You lose"
    } else {
        switch player {
        case "rock":
            playerR+=1
        case "paper":
            playerP+=1
        case "scissors":
            playerS+=1
        default:
            playerR+=0
        }
        return "Tie"
    }
}
