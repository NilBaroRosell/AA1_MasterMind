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
    /*var rowList: [row] = [
        row(number: 1, colors: [.gray, .gray, .gray, .gray]),
        row(number: 2, colors: [.gray, .gray, .gray, .gray]),
        row(number: 3, colors: [.gray, .gray, .gray, .gray]),
        row(number: 4, colors: [.gray, .gray, .gray, .gray]),
        row(number: 5, colors: [.gray, .gray, .gray, .gray]),
        row(number: 6, colors: [.gray, .gray, .gray, .gray]),
        row(number: 7, colors: [.gray, .gray, .gray, .gray]),
        row(number: 8, colors: [.gray, .gray, .gray, .gray]),
        row(number: 9, colors: [.gray, .gray, .gray, .gray]),
        row(number: 10, colors: [.gray, .gray, .gray, .gray]),
        row(number: 11, colors: [.gray, .gray, .gray, .gray]),
        row(number: 12, colors: [.gray, .gray, .gray, .gray]),
    ]*/
    var body: some View {
        VStack{
            Text("MasterMind")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
            VStack{
                List{
                    ForEach(viewModel.combinations, id: \.id)
                    {
                        combination in
                        RowView(firstColor: combination.colors[0],
                                secondColor: combination.colors[1],
                                thirdColor: combination.colors[2],
                                fourthColor: combination.colors[3]
                        )
                    }
                    
                    HStack{
                        Spacer()
                        Button("1111111") {
                            viewModel.addColor(.blue)
                        }
                            .foregroundColor(.blue)
                            .background(Color.blue)
                        Button("222222")
                        {
                            //viewModel.addColor(.red)
                        }
                            .foregroundColor(.red)
                            .background(Color.red)
                        Button("333333")
                        {
                            //viewModel.addColor(.green)
                        }
                            .foregroundColor(.green)
                            .background(Color.green)
                        Button("444444")
                        {
                            //viewModel.addColor(.yellow)
                        }
                            .foregroundColor(.yellow)
                            .background(Color.yellow)
                        Button("555555")
                        {
                            //viewModel.addColor(.purple)
                        }
                            .foregroundColor(.purple)
                            .background(Color.purple)
                        Spacer()
                    }
                    HStack
                    {
                        Spacer()
                        Text(viewModel.triesString)
                            .font(.title)
                            .foregroundColor(.orange)
                            .padding()
                            .background(Color.white)
                        Spacer()
                        Button("Restart", action: doNothing)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                        Spacer()
                    }
                }
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

