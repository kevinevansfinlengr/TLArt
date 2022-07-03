//
//  TextView.swift
//  TLArt
//
//  Created by KEVIN EVANS on 7/3/22.
//

import SwiftUI

struct TextView: View {
    
    var text = ["Space Dream Fantasy - this painting is really really nice", "Blue-ish thingy which is also really nice"]
    
    var body: some View {
        Text("\(text[0])")
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
