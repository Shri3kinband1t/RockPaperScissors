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
public var playerPicks=[""]
public var aiPicks=[""]
func aiPick()->String{
    switch (Int.random(in: 0...2)) {
    case 0:
      
        return("rock")
    case 1:

        return("paper")
    default:
       
        return("scissors")
    }
    
}
func playerFavorite()->String{
    var rockPicks=0,paperPicks=0,scissorPicks=0
    for playerPick in playerPicks {
        switch playerPick {
        case "rock":
            rockPicks+=1
        case "paper":
            paperPicks+=1
        case "scissors":
            scissorPicks+=1
        default:
           scissorPicks+=0
        }
    }
    print("1 ",rockPicks," ",paperPicks," ",scissorPicks)
    if (rockPicks>paperPicks)&&(rockPicks>scissorPicks) {
        return "rock"
    } else if (rockPicks<paperPicks)&&(paperPicks>scissorPicks) {
        return "paper"
    } else if (rockPicks<scissorPicks)&&(paperPicks<scissorPicks) {
            return "scissors"
    } else {
        return("")
    }
}
func aiFavorite()->String{
    var rockPicks=0,paperPicks=0,scissorPicks=0
    for aiPick in aiPicks {
        switch aiPick {
        case "rock":
            rockPicks+=1
        case "paper":
            paperPicks+=1
        case "scissors":
            scissorPicks+=1
        default:
           scissorPicks+=0
        }
    }
    print("2 ",rockPicks," ",paperPicks," ",scissorPicks)
    if (rockPicks>paperPicks)&&(rockPicks>scissorPicks) {
        return "rock"
    } else if (rockPicks<paperPicks)&&(paperPicks>scissorPicks) {
        return "paper"
    } else if (rockPicks<scissorPicks)&&(paperPicks<scissorPicks) {
            return "scissors"
    } else {
        return("")
    }
}
func run(input:String)->String {
    print("running")
    return compareTurns(player: input, ai: aiPick())
}
func compareTurns(player:String,ai:String)->String{
    playerPicks.append(player)
    aiPicks.append(ai)
    if (player=="rock")&&(ai=="scissors") {
        playerScore+=1
        return "You win"
    }else if (player=="rock")&&(ai=="paper") {
        aiScore+=1
        return "You lose"
    }else if (player=="scissors")&&(ai=="rock") {
        aiScore+=1
        return "You lose"
    }else if (player=="scissors")&&(ai=="paper") {
        playerScore+=1
        return "You win"
    }else if (player=="paper")&&(ai=="scissors") {
        aiScore+=1
        return "You lose"
    } else if (player=="paper")&&(ai=="rock") {
        aiScore+=1
        return "You lose"
    } else {
        return "Tie"
    }
}
