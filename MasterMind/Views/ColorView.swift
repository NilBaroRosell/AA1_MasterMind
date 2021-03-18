//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct  ColorView: View {
    @ObservedObject var viewModel: ViewModel

    var color: Color
        
    var body: some View{
        Button("X")
        {
            viewModel.addColor(color)
        }
        .frame(width: 45, height: 45, alignment: .center)
        .foregroundColor(color)
        .background(color)
    }
}

struct ColorView_preview: PreviewProvider {
    var viewModel = ViewModel()
    static var previews: some View {
        ColorView(viewModel: ViewModel(), color: .gray)
        
    }
}
