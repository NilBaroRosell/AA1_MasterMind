//
//  InitView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct InitView: View {
    var body: some View{
        Button("Start", action: doNothing)
            .foregroundColor(.white)
            .padding()
            .background(Color.orange)
    }
}

extension InitView {
    func doNothing()
    {
        
    }
}
