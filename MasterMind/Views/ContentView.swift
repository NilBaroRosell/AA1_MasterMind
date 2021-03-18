//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

/*struct row
 {
 let number: Int
 let colors: [Color]
 }*/

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        VStack{
            Text(viewModel.triesString)
                .font(.title)
                .foregroundColor(.orange)
            VStack{
                List{
                    ForEach(viewModel.combinations, id: \.id)
                    {
                        combination in
                        RowView(id: combination.id, firstColor: combination.colors[0],
                                secondColor: combination.colors[1],
                                thirdColor: combination.colors[2],
                                fourthColor: combination.colors[3],
                                firstAnswereColor: combination.colors[4],
                                secondAnswereColor: combination.colors[6],
                                thirdAnswereColor: combination.colors[5],
                                fourthAnswereColor: combination.colors[7]
                        )
                    }
                }
                HStack{
                    ColorView(viewModel: viewModel, color: .blue)
                    Spacer()
                    ColorView(viewModel: viewModel, color: .red)
                    Spacer()
                    ColorView(viewModel: viewModel, color: .green)
                    Spacer()
                    ColorView(viewModel: viewModel, color: .yellow)
                    Spacer()
                    ColorView(viewModel: viewModel, color: .purple)
                }
                .padding()
                HStack
                {
                    Spacer()
                    Button("  Erase  ")
                    {
                        viewModel.EraseCombination()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    Spacer()
                    Button("Publish")
                    {
                        viewModel.PublishCombination()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    Spacer()
                    Button("Restart")
                    {
                        viewModel.Restart()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    var viewModel = ViewModel()
    static var previews: some View {
        ContentView(viewModel: ViewModel())
        
    }
}

