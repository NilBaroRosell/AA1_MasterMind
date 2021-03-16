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
            VStack{
                List{
                    ForEach(viewModel.combinations, id: \.id)
                    {
                        combination in
                        RowView(firstColor: combination.colors[0],
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
                    Spacer()
                    Button("1") {
                        viewModel.addColor(.blue)
                    }
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.blue)
                    .background(Color.blue)
                    .padding()
                    Button("2")
                    {
                        viewModel.addColor(.red)
                    }
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.red)
                    .background(Color.red)
                    .padding()
                    Button("3")
                    {
                        viewModel.addColor(.green)
                    }
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.green)
                    .background(Color.green)
                    .padding()
                    Button("4")
                    {
                        viewModel.addColor(.yellow)
                    }
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.yellow)
                    .background(Color.yellow)
                    .padding()
                    Button("5")
                    {
                        viewModel.addColor(.purple)
                    }
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(.purple)
                    .background(Color.purple)
                    .padding()
                    Spacer()
                }
                Button("Restart")
                {
                    viewModel.Restart()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                Text(viewModel.triesString)
                .font(.title)
                .foregroundColor(.orange)
            }
        }
    }
}
extension ContentView {
    func doNothing()
    {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    var viewModel = ViewModel()
    static var previews: some View {
        ContentView(viewModel: ViewModel())
        
    }
}

