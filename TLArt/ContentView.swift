//
//  ContentView.swift
//  TLArt
//
//  Created by KEVIN EVANS on 7/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var imageNumber = 1
    
    var body: some View {
        VStack {
            Image("card" + String(imageNumber))
                .resizable()
            .scaledToFit()
            .padding()
            
            Button(action: {
                if imageNumber == 4 {
                    imageNumber = 1
                } else {
                    imageNumber += 1
                }
            }, label: {
                Text("Next")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
