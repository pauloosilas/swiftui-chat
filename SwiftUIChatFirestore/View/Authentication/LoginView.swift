//
//  LoginView.swift
//  SwiftUIChatFirestore
//
//  Created by Paulo on 20/08/24.
//

import SwiftUI

struct LoginView: View{
    @State private var email = ""
    @State private var password = ""
    
    var body: some View{
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 12){
                    HStack{
                        Spacer()
                    }
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                    
                    VStack(spacing: 40){
                        CustomTextField(
                            imageName: "envelope",
                            placeholderText: "Email",
                            isSecureField: false,
                            text: $email )
                        
                        CustomTextField(
                            imageName: "lock",
                            placeholderText: "Password",
                            isSecureField: true,
                            text: $password )
                                             
                    }
                    .padding([.top, .horizontal], 32)
                    
                    
                }
                .padding(.leading)
                
                HStack{
                    Spacer()
                    
                   NavigationLink(
                    destination: Text("Reset password")
                        .navigationBarBackButtonHidden(true),
                    label:{
                        Text("Forgot Password.")
                            .font(.system(size: 13, weight: .semibold))
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                   )
                }
                
                Button(action:{
                    print("hello")
                }, label:{
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                NavigationLink(
                destination: RegistrationView(),
                label:{
                    HStack{
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign Up")
                            .font(.system(size:14, weight: .semibold))
                    }
                }
                )
                .padding(.bottom, 32)
            }
        }
        .padding(.top, -56)
    }
}

#Preview {
    LoginView()
}

