//
//  NewTransactionView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-26.
//

import SwiftUI

struct NewTransactionView: View {
    @State private var category = ""
    @State private var amount = ""
    @State private var date = Date()
    @State private var note = ""
    
    var body: some View {
       
        NavigationView{
            Form {
                Section(header: Text("Transaction Detils")) {
                    TextField("Amount", text: $amount)
                    TextField("Category", text: $category)
                    DatePicker("Date", selection : $date, displayedComponents: .date)
                }
                
                Section(header: Text("Optional Details")) {
                    TextField("Note", text: $note)
                }
            }
            .navigationBarTitle("New Transaction", displayMode: .inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button{
                    
                    } label: {
                         Text("Clear")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Save")
                    })
                }
            }
        
        }
        
    }
}
struct NewTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        NewTransactionView()
    }
}
    
