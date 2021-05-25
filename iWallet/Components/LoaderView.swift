//
//  LoaderView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import SwiftUI
struct LoaderView: View {
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            MainView()
            if isLoading {
                
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing)

                        .ignoresSafeArea()
                        .opacity(0.95)                }
                
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .scaleEffect(3)
            }
        }
        .onAppear { startFakeNetworkCall() }
    }
    
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
            isLoading = false
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
        
    }
}
