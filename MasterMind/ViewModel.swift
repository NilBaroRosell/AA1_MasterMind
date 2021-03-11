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
    
    init() {
        self.combinations = [Combination(id: 1, colors: [.gray, .gray, .gray, .gray])]
        self.tries = 1
        self.triesString = String(self.tries) + " tries"
        solution = Combination(id: 0, colors:[.gray, .gray, .gray, .gray])
    }
    
    func addColor(_ color : Color)
    {
        if self.combinations[self.tries - 1].colors[3] != .gray
        {
            self.combinations.append(Combination(id: self.combinations[self.tries - 1].id + 1, colors: [color, .gray, .gray, .gray ]))
        }
        else if self.combinations[self.tries - 1].colors[2] != .gray
        {
            self.combinations[self.tries - 1].colors[3] = color
            CalculateResult()
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
    
    func CalculateResult()
    {
        
    }
}
