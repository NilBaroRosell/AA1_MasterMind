//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct  RowView: View {
    var id: Int
    var firstColor: Color
    var secondColor: Color
    var thirdColor: Color
    var fourthColor: Color
    var firstAnswereColor: Color = .gray
    var secondAnswereColor: Color = .gray
    var thirdAnswereColor: Color = .gray
    var fourthAnswereColor: Color = .gray
    
    private let width: CGFloat = 35.0
    private let height: CGFloat = 35.0
    private let width2: CGFloat = 14.0
    private let height2: CGFloat = 14.0
    
    var body: some View{
        HStack{
            Text(String(id))
            .font(.title)
            .foregroundColor(.black)
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
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Circle()
                    .fill(secondAnswereColor)
                    .frame(width: self.width2, height: self.height2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
            }
            VStack
            {
                Circle()
                    .fill(thirdAnswereColor)
                    .frame(width: self.width2, height: self.height2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Circle()
                    .fill(fourthAnswereColor)
                    .frame(width: self.width2, height: self.height2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
            }
            Spacer()
        }
    }
}

struct RowView_preview: PreviewProvider {
    static var previews: some View {
        RowView(id: 0, firstColor: .red, secondColor: .red, thirdColor: .red, fourthColor: .red, firstAnswereColor: .red, secondAnswereColor: .red, thirdAnswereColor: .red, fourthAnswereColor: .red)
            
    }
}
