//
//  SideMenu.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-24.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        NavigationView{
            
            ZStack{
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeView()
                    
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 30 :0 , y: isShowing ? 44 : 0)                    .offset(x: isShowing ? 300 : 0, y: 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading:
                                            Button(action: {
                                                withAnimation(.spring()){
                                                    isShowing.toggle()
                                                }
                                            },
                                            label: {
                                                Image(systemName: "list.bullet")
                                                    .foregroundColor(.black)
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
        HomePageView()
            .preferredColorScheme(.light)
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color(.white)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationBarItems(leading: Button(action: {
            print("Show Menue")
        }
        , label: {
            Image(systemName: "list.bullet")
                .foregroundColor(.black)
        }))
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
    }
}
