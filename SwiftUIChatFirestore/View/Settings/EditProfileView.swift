//
//  EditProfileView.swift
//  SwiftUIChatFirestore
//
//  Created by Paulo on 23/08/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Piter Parker"
    var body: some View {
        ZStack{
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 44){
                
                VStack {
                    HStack{
                        VStack {
                            Image("homiranha")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                            
                            Button(action:{
                                print("change profile")
                            },label:{
                                Text("Edit")
                            })
                        }
                        .padding(.top)
                        
                        Text("Enter yout name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    Divider()
                        .padding(.horizontal)
                    
                    TextField("", text: $fullname)
                        .padding(8)
                    
                }
                .background(Color.white)
                
                VStack(alignment: .leading){
                    Text("Status")
                        .padding()
                        .foregroundColor(.gray)
                    
                    NavigationLink(
                        destination: Text("Edit Status"),
                        label:{
                            HStack{
                                Text("At the movies")
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                        }
                    )
                    
                    
        
                }
                Spacer()
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        
    }
}

#Preview {
    EditProfileView()
}
