//
//  SignInView.swift
//  Fruitia
//
//  Created by Elijah Armande on 2/7/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 170)
                    .padding(.bottom, -50)
                    .padding(.top, -20)
                
                Text("Fruitia")
                    .font((.custom("RougeScript-Regular", size: 64)))
                
            }
            .padding(.bottom, 5)
            
            
            
            //Spacer()
            
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .frame(width: 275, height: 35)
                    .cornerRadius(10)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .frame(width: 275, height: 35)
                    .cornerRadius(10)
                    .padding(.bottom, 5)
                
                // Add Remember me Button
                
                HStack {
                    Button {
                        // cod eot
                    } label: {
                        Text("")
                            .frame(width: 15, height: 15)
                            .background(Color.black)
                            .opacity(0.1)
                            .cornerRadius(5)
                    }
                    
                    
                    Text("Remember me?")
                        .font(.system(size: 11))
                        .font(.title3)
                        .fontWeight(.regular)
                    
                }
                .padding(.trailing, 165)
                
                
                
                
                Button {
                    // cod eot
                } label: {
                    Text("Log in")
                        .frame(width: 275, height: 50)
                        .background(Color("color-1"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                .padding()
                
                HStack {
                    Text("Forgot your login details?")
                        .font(.system(size: 9))
                    
                    Button {
                        // Action
                    } label: {
                        Text("Get help signing in")
                            .font(.system(size: 9))
                            .foregroundColor(Color("color-1"))
                    }
                    
                    
                }
                
                HStack {
                    Rectangle()
                        .fill(Color("or"))
                        .frame(width: 125, height: 1)
                    
                    Text("or")
                        .foregroundColor(Color("or"))
                    
                    Rectangle()
                        .fill(Color("or"))
                        .frame(width: 125, height: 1)
                    
                    
                }
                .padding(.bottom, 5)
                
                //MARK: FACEBOOK LOGIN
                
                Button(action: {
                     // DO SOMETHING
                        }) {
                            ZStack {
                                Image("fb-logo").renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .accessibility(label: Text("Sign in with Google"))
                                    .frame(width: 15, height: 15)
                                    .padding(.trailing, 153)
                                Spacer()
                                Text("Sign in with Facebook")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                        }
                        .padding()
                        .cornerRadius(16)
                        .background(Color("fb-blue"))
                       
                        .frame(width: 250, height: 30)
                        .cornerRadius(10)
//END
                
                
                
                
                
                
                
                
//                HStack {
//                    Button {
//                        // Action
//                    } label: {
//                        // add Hstack into the label for image
//                        Text("Continue with Facebook")
//                            .font(.system(size: 12))
//                            .frame(width: 250, height: 30)
//                            .background(Color("fb-blue"))
//                            .foregroundColor(.white)
//                            .cornerRadius(10)
//                    }
//                }
//                .padding()
                
                //MARK: INSTAGRAM LOGIN
                
                //                HStack {
                //                    Button {
                //                        // Action
                //                    } label: {
                //                        // add Hstack into the label for image
                //                        Text("Continue with Google")
                //                            .foregroundColor(.black)
                //                            .font(.system(size: 12))
                //                        //.padding(.top, 35)
                //                            .overlay(
                //                                RoundedRectangle(cornerRadius: 10)
                //                                    .stroke(.black, lineWidth: 1)
                //                                    .frame(width: 250, height: 30)
                //
                //
                //                            )
                //                            .padding(.bottom, 30)
                //
                //                    }
                //                }
                
                Button(action: {
                    // do nothing
                }) {
                    ZStack() {
                        Image("google-logo").renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .accessibility(label: Text("Sign in with Google"))
                            .frame(width: 15, height: 15)
                            .padding(.trailing, 153)
                        
                        Spacer()
                        Text("Sign in with Google")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                    }
                    
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 250, height: 30)
                    
                    
                )
                .padding(.bottom, 30)
                
                
                
                HStack {
                    Text("Need an account?")
                        .font(.system(size: 9))
                    
                    Button {
                        // Action
                    } label: {
                        Text("CREATE AN ACCOUNT")
                            .font(.system(size: 9))
                            .foregroundColor(Color("color-1"))
                    }
                    
                    
                }
                
            }
            
            Spacer()
            
        }
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
