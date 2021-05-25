//
//  SideMenuViewModel.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case spending
    case deposits
    case stock
    case cripto
    case propertyRenting
    case settings
    case terms
    
    
    var title: String {
        switch self {
        case .spending: return "Spending"
        case .deposits: return "Deposits"
        case .stock: return "Stock"
        case .cripto: return "Cripto"
        case .propertyRenting: return "Property Renting"
        case .settings: return "Settings"
        case .terms: return "Terms $ conditions"
       
            
        }
    }
    var imageName: String {
        switch self {
        case .spending: return "dollarsign.square.fill"
        case .deposits: return "banknote.fill"
        case .stock: return "bag.fill.badge.plus"
        case .cripto: return "bitcoinsign.circle.fill"
        case .propertyRenting: return "house.fill"
        case .settings: return "gear"
        case .terms: return "questionmark.circle"
       
            
        }
    }
}
