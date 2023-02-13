//
//  SplashScreen.swift
//  Fruitia
//
//  Created by Elijah Armande on 2/3/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            SignInView() // change to logInView
        } else {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 420)
                    
                    
                Spacer()
                Spacer()
                
                Text("Fruitia")
                    .font((.custom("RougeScript-Regular", size: 64)))
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
