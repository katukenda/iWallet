//
//  Categoriesview.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import SwiftUI




struct  Categoriesview: View {
    
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .yellow
        UISegmentedControl.appearance().setTitleTextAttributes( [.foregroundColor : UIColor.black], for: .selected)
    }
    
    @State private var selectedView: selectedViewNumber = .one
    
    var body: some View {
        
      
            VStack{
                
                Picker("Choose a View", selection: $selectedView){
                    ForEach(selectedViewNumber.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(0)
                Spacer()
                ChoseeView(selectedView: selectedView)
               Spacer()
                NavigationLink(
                    destination: AddNewCategoryView(),
                    label: {
                        ButtonText(buttonLabel: "+ Add")
                    }
                )
            }
            
            .padding(0)
            
            
        }
        
    }
    



enum selectedViewNumber: String, CaseIterable {
    case one = "Income"
    case two = "Expense"
    
}


struct ChoseeView: View {
    
    var selectedView: selectedViewNumber
    var body: some View{
        switch selectedView {
        case .one:
            IncomeCategoryView()
        case .two:
            ExpenseCategoryView()
        }
    }
    
}


struct IncomeCategoryView: View {
    var body: some View {
        Text("This is Income view")
    }
}

struct ExpenseCategoryView: View {
    var body: some View {
        Text("This is Expense view")
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        Categoriesview()
    }
}
