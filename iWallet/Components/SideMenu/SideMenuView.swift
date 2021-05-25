//
//  SideMenuView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 200)
                
                
                ScrollView {
                    VStack(spacing: 20) {
                
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Spending", labelImage:"dollarsign.square.fill")
                    }
                )
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Deposits", labelImage:"banknote.fill")
                    }
                )
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Stock", labelImage:"bag.fill.badge.plus")
                    }
                )
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Cripto", labelImage:"bitcoinsign.circle.fill")
                    }
                )
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Property Renting", labelImage:"house.fill")
                    }
                )
                NavigationLink(
                    destination: SpendingMainView(),
                    label: {
                        NavLabel(labalName: "Settings", labelImage:"gear")
                    }
                )
                        
                    }
                }
                //.frame(height: 150)

                Spacer()
            }
            .navigationBarHidden(true)
        }
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

struct NavLabel: View {
    
    var labalName: String
    var labelImage: String
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: labelImage)
                .frame(width: 24, height: 24)
            Text(labalName)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }.foregroundColor(.white)
        .padding()
    }
}
