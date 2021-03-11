//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct  RowView: View {
    var firstColor: Color
    var secondColor: Color
    var thirdColor: Color
    var fourthColor: Color
    private let firstAnswereColor: Color = .gray
    private let secondAnswereColor: Color = .gray
    private let thirdAnswereColor: Color = .gray
    private let fourthAnswereColor: Color = .gray
    
    private let width: CGFloat = 35.0
    private let height: CGFloat = 35.0
    private let width2: CGFloat = 14.0
    private let height2: CGFloat = 14.0
    
    var body: some View{
        HStack{
            Spacer()
            Circle()
                .fill(firstColor)
                .frame(width: self.width, height: self.height)
            Circle()
                .fill(secondColor)
                .frame(width: self.width, height: self.height)
            Circle()
                .fill(thirdColor)
                .frame(width: self.width, height: self.height)
            Circle()
                .fill(fourthColor)
                .frame(width: self.width, height: self.height)
            Spacer()
            VStack
            {
                Circle()
                    .fill(firstAnswereColor)
                    .frame(width: self.width2, height: self.height2)
                Circle()
                    .fill(secondAnswereColor)
                    .frame(width: self.width2, height: self.height2)
            }
            VStack
            {
                Circle()
                    .fill(thirdAnswereColor)
                    .frame(width: self.width2, height: self.height2)
                Circle()
                    .fill(fourthAnswereColor)
                    .frame(width: self.width2, height: self.height2)
            }
            Spacer()
        }
    }
}

struct RowView_preview: PreviewProvider {
    static var previews: some View {
        RowView(firstColor: .red, secondColor: .red, thirdColor: .red, fourthColor: .red)
            
    }
}
