//
//  ContentView.swift
//  TLArt
//
//  Created by KEVIN EVANS on 7/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var imageNumber = 1
    private var text = ["Space Dream Fantasy", "Blue Delight", "Crystal Blue Persuasion", "Heaven's Dream", "Orange Blossom Special", "The Phoenix", "Waltz of the Flowers"]
    
    var body: some View {
        VStack {
            
            Text("The Art of Teresa Lederer")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            Image("card" + String(imageNumber))
                .resizable()
            .scaledToFit()
            .padding()
            
            Text(text[imageNumber - 1])
                .font(.headline)
                .padding()
            
            HStack(alignment: .bottom) {
                
                Button(action: {
                    if imageNumber == 1 {
                        imageNumber = 7
                    } else {
                        imageNumber -= 1
                    }
                }, label: {
                    VStack {
                        Text("Back")
                        Image(systemName: "arrow.left.circle.fill")
                    }
                })
                
                Button(action: {
                    if imageNumber == 7 {
                        imageNumber = 1
                    } else {
                        imageNumber += 1
                    }
                }, label: {
                    VStack {
                        Text("Forward")
                        Image(systemName: "arrow.right.circle.fill")
                    }
                })
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
