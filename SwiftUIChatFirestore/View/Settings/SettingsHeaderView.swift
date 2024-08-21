//
//  SettingsHeaderView.swift
//  SwiftUIChatFirestore
//
//  Created by Paulo on 21/08/24.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack{
            Image("homiranha")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Eddie Brock")
                
                Text("Available")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                
            }
            
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}
