//
//  SideMenuHandleView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Button(action:  { isShowing.toggle() }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading){
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 16)
                
                Text("Janitha Prashad")
                    .font(.system(size: 24, weight: .semibold))
                Text("katueknda@icloud.com")
                    .font(.system(size: 14, weight: .semibold))
                    .padding(.bottom, 10)
                
                HStack(spacing: 12){
                    HStack(spacing: 4){
                        Text("1,234,234")
                            .foregroundColor(.green)
                            .bold()
                        Text("Income")
                    }
                    HStack(spacing: 4){
                        
                        Text("13,345")
                            .foregroundColor(.red)
                            .bold()
                        Text("Expence")
                        
                    }
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHandleView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true ))
    }
}
