//
//  HomeItemsView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import SwiftUI

struct HomeItemsView: View {
    
    
    var body: some View {
        ZStack{
            
            Color(.systemBackground)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
      
        .navigationBarItems(leading: Button(action: {
            print("Show Menue")
        }
        , label: {
            //Image(systemName: "list.bullet")
               
        }))
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
    }
}

struct HomeItemsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeItemsView()
    }
}
