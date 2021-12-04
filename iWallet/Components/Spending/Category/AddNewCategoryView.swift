//
//  AddNewCatedoryView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-28.
//

import SwiftUI

struct AddNewCategoryView: View {
    @State private var category_name = ""
    @State private var color = ""
    @State private var icon = ""
    
    
    var body: some View {
            
            NavigationView{
                
                Form {
                    Section(header: Text("Category Details")) {
                        HStack{
                            Text("Name")
                            
                            TextField("Name", text: $category_name)
                        }
                        
                        HStack{
                            Text("Color")
                            
                            TextField("Color", text: $color)
                        }
                        HStack{
                            Text("Icon")
                            
                            TextField("Icon", text: $icon)
                        }
                        
                        
                        
                    }
                    
                }
                .navigationBarTitle("New Category", displayMode: .inline)
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

struct AddNewCatedoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCategoryView()
    }
}
