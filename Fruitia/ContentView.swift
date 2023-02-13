//
//  ContentView.swift
//  Fruitia
//
//  Created by Elijah Armande on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
        .font((.custom("RougeScript-Regular", size: 36)))
    }

     
    /* Finding Font Name
        init() {
            for familyName in UIFont.familyNames {
                print(familyName)

                for fontName in UIFont.fontNames(forFamilyName: familyName) {
                    print("--\(fontName)")
                }
            }
        }
    */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
