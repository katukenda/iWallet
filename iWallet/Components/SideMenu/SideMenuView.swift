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
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self){ option in
                    NavigationLink(
                        
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
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
