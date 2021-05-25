//
//  SpendingMainView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import SwiftUI

struct SpendingMainView: View {
    var body: some View {
        TabView {
                   SpendingView()
                        .tabItem {
                            Image(systemName: "dollarsign.square.fill")
                            Text("Spending")
                        }
                   TransactionView()
                        .tabItem {
                            Image(systemName: "newspaper")
                            Text("Transactions")
                        }
                    
                   Categoriesview()
                        .tabItem {
                            Image(systemName: "note.text.badge.plus")
                            Text("Categories")
                        }
            AnalysisView()
                 .tabItem {
                     Image(systemName: "function")
                     Text("Analysis")
                 }
                }
    }
}

struct SpendingMainView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingMainView()
    }
}
