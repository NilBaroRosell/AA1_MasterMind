//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct row
{
    let number: Int
    let colors: [Color]
}

struct ContentView: View {
    var rowList: [row] = [
        row(number: 1, colors: [.red, .blue, .green, .red]),
        row(number: 2, colors: [.red, .blue, .green, .red]),
        row(number: 3, colors: [.red, .blue, .green, .red]),
        row(number: 4, colors: [.red, .blue, .green, .red]),
        row(number: 5, colors: [.red, .blue, .green, .red]),
        row(number: 6, colors: [.red, .blue, .green, .red]),
        row(number: 7, colors: [.red, .blue, .green, .red]),
        row(number: 8, colors: [.red, .blue, .green, .red]),
        row(number: 9, colors: [.red, .blue, .green, .red]),
        row(number: 10, colors: [.red, .blue, .green, .red]),
        row(number: 11, colors: [.red, .blue, .green, .red]),
        row(number: 12, colors: [.red, .blue, .green, .red]),
    ]
    var body: some View {
        VStack{
            Text("MasterMind")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
            VStack{
                List{
                    ForEach(rowList, id: \.number) { row in
                        RowView(firstColor: row.colors[0],
                                secondColor: row.colors[1],
                                thirdColor: row.colors[2],
                                fourthColor: row.colors[3]
                        )
                    }
                }
                HStack{
                    Text("Tried 2 times")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                    Button("Start", action: doNothing)
                        .padding()
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
    static var previews: some View {
        ContentView()
        
    }
}

