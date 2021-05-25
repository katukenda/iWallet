//
//  SideMenu.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-24.
//

import SwiftUI

struct MainView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView{
           
            
            ZStack{
                
                Color(.systemBackground)
                    .ignoresSafeArea()
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeItemsView()
                
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 :0 , y: isShowing ? 200 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading:
                                            Button(action: {
                                                withAnimation(.spring()){
                                                    isShowing.toggle()
                                                }
                                            },
                                            label: {
                                                Image(systemName: "list.bullet")
                                                  
                                                    
                                            }))
                    .navigationTitle("Home")
                   
            }
            .onAppear{
                isShowing = false
            }
            
        }
        
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
           
    }
}

