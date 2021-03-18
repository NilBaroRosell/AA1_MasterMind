//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject
{
    var solution: Combination
    @Published var combinations: [Combination]
    @Published var triesString: String
    var tries: Int
    var exactPlace: Int
    var wrongPlace: Int
    var gameEnded: Bool
    
    init() {
        self.combinations = [Combination(id: 1, colors: [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray])]
        self.tries = 1
        self.triesString = "Welcome to MasterMind"
        solution = Combination(id: 0, colors:[.black, .black, .black, .black])
        exactPlace = 0
        wrongPlace = 0
        gameEnded = false
        GetRandomSolution()
    }
    
    func addColor(_ color : Color)
    {
        if(self.tries <= 12)
        {
            if self.combinations[self.tries - 1].colors[2] != .gray
            {
                self.combinations[self.tries - 1].colors[3] = color
            }
            else if self.combinations[self.tries - 1].colors[1] != .gray
            {
                self.combinations[self.tries - 1].colors[2] = color
            }
            else if self.combinations[self.tries - 1].colors[0] != .gray
            {
                self.combinations[self.tries - 1].colors[1] = color
            }
            else
            {
                self.combinations[self.tries - 1].colors[0] = color
            }
        }
    }
    
    func Restart()
    {
        self.combinations = [Combination(id: 1, colors: [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray])]
        self.tries = 1
        self.triesString = "Welcome to MasterMind"
        gameEnded = false
        GetRandomSolution()
    }
    
    func EraseCombination()
    {
        for i in 0...7
        {
            self.combinations[self.tries - 1].colors[i] = .gray
        }
    }
    
    func PublishCombination()
    {
        if(self.combinations[self.tries - 1].colors[3] != .gray)
        {
            CalculateResult()
            if(!gameEnded)
            {
                self.combinations.append(Combination(id: self.combinations[self.tries - 1].id + 1, colors: [.gray, .gray, .gray, .gray, .gray, .gray, .gray, .gray ]))
                self.tries += 1
            }
        }
    }
    
    func CalculateResult()
    {
        exactPlace = 0
        wrongPlace = 0
        var combination = Combination(id:0, colors:[self.combinations[self.tries - 1].colors[0], self.combinations[self.tries - 1].colors[1], self.combinations[self.tries - 1].colors[2], self.combinations[self.tries - 1].colors[3]])
        var solutionCheck = Combination(id:0, colors:[self.solution.colors[0], self.solution.colors[1], self.solution.colors[2], self.solution.colors[3]])
        for i in 0...3
        {
            if combination.colors[i] == solutionCheck.colors[i]
            {
                exactPlace += 1
                combination.colors[i] = .gray
                solutionCheck.colors[i] = .black
            }
        }
        for i in 0...3
        {
            for j in 0...3
            {
                if(i != j)
                {
                    if combination.colors[i] == solutionCheck.colors[j]
                    {
                        wrongPlace += 1
                        combination.colors[i] = .gray
                        solutionCheck.colors[j] = .black
                    }
                }
            }
        }
        
        if(exactPlace != 0)
        {
            for i in 1...exactPlace
            {
                self.combinations[self.tries - 1].colors[3+i] = .red
            }
        }
        
        if(wrongPlace != 0)
        {
            for i in 1...wrongPlace
            {
                self.combinations[self.tries - 1].colors[3+i+self.exactPlace] = .white
            }
        }
        if exactPlace == 4
        {
            self.triesString = "Congratulations! You have won with " + String(self.tries) + " tries"
            gameEnded = true
        }
        else if self.tries >= 12
        {
            self.triesString = "You ran out of tries"
            gameEnded = true
        }
    }
    
    func GetRandomSolution()
    {
        var randomNum = 0
        for i in 0...3
        {
            randomNum = Int.random(in: 1...5)
            switch randomNum {
            case 1:
                self.solution.colors[i] = .blue
                break
            case 2:
                self.solution.colors[i] = .red
                break
            case 3:
                self.solution.colors[i] = .green
                break
            case 4:
                self.solution.colors[i] = .yellow
                break
            case 5:
                self.solution.colors[i] = .purple
                break
            default:
                break
            }
        }
    }
}
