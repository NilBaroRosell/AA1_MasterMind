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
    
    private let width: CGFloat = 35.0
    private let height: CGFloat = 35.0
    
    var body: some View{
        HStack{
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
        }
    }
}

struct RowView_preview: PreviewProvider {
    static var previews: some View {
        RowView(firstColor: .red, secondColor: .red, thirdColor: .red, fourthColor: .red)
            
    }
}
