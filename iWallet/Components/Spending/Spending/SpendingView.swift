//
//  SpendingView.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import SwiftUI

struct SpendingView: View {
    
    
    var body: some View {
        
        VStack(spacing:10){
            
           
            
            HStack(spacing: 50){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrowshape.turn.up.left.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 25))
                })
                
                ButtonText(buttonLabel: "May")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                   Image(systemName: "arrowshape.turn.up.right.fill")
                    .foregroundColor(.gray)
                    .font(.system(size: 25))
                })
            }
            .padding(.bottom, 20)

            PriceSummery(tagName: "Income", tagValue: "90,130.00", tagColor: .green)
            PriceSummery(tagName: "Expense", tagValue: "15,560.00", tagColor: .red)
            
            ScrollView {
                VStack(spacing: 20) {
                    PriceCategoryView(tagName: "Travel", tagValue: "3,456.00")
                    PriceCategoryView(tagName: "Wifi", tagValue: "1,999.00")
                    PriceCategoryView(tagName: "Travel", tagValue: "3,456.00")
                    PriceCategoryView(tagName: "Wifi", tagValue: "1,999.00")
                    PriceCategoryView(tagName: "Travel", tagValue: "3,456.00")
                    PriceCategoryView(tagName: "Wifi", tagValue: "1,999.00")
                }
            }
            .frame(height: 250)
            .padding(.bottom, 20)
            
            ZStack(alignment: .topLeading) {

                RectangleView(color: .green)
                    .frame(width: 350)
                RectangleView(color: .red)
                    .frame(width: 150)
                  
            }
            .padding(.bottom, 20)

            PriceSummery(tagName: "Balance", tagValue: "78,456.00", tagColor: .blue)
                
            Spacer()
            HStack(spacing:50){
                
                NavigationLink(
                    destination: NewTransactionView(),
                    label: {
                        ButtonText(buttonLabel: "+ Income")
                    }
                )
                NavigationLink(
                    destination: NewTransactionView(),
                    label: {
                        ButtonText(buttonLabel: "+ Expense")
                    }
                )
               
               
               
            }
            .padding(.bottom, 100)
            
        }
        .navigationTitle("Spending")
        .padding([.top, .leading], 20.0)
    }
    
}

struct SpendingView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingView()
           
    }
}

struct PriceSummery: View {
    var tagName: String
    var tagValue: String
    var tagColor: Color
    var body: some View {
        HStack{
            
            Text(tagName)
                .font(.system(size: 25, weight: .semibold))
                .padding(.horizontal, 20.0)
            Spacer()
            Text(tagValue)
                .foregroundColor(tagColor)
                .font(.system(size: 25, weight: .semibold))
                .padding(.horizontal, 20.0)
            
        }
        
    }
}

struct PriceCategoryView: View {
    
    var tagName: String
    var tagValue: String
    
    var body: some View {
        HStack{
            Text(tagName)
                .font(.system(size: 20, weight: .regular))
                .padding(.horizontal, 40.0)
                .padding(.vertical, 0)
            
            Spacer()
            Text(tagValue)
                .font(.system(size: 20, weight: .regular))
                .padding(.horizontal, 20.0)
                .padding(.vertical, 0)
        }
    }
}

struct ButtonText: View {
    
    var buttonLabel: String
    
    var body: some View {
        Text(buttonLabel)
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
            .foregroundColor(.white)
            .font(.system(size: 25, weight: .semibold))
            .background(Color.gray)
            .cornerRadius(10)
    }
}

struct RectangleView: View {
    var color: Color
    
    var body: some View {
        Rectangle().frame(height: 20)
            .foregroundColor(color)
            .padding(.horizontal, 20.0)
    }
}
