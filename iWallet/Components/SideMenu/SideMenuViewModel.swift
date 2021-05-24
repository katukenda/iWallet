//
//  SideMenuViewModel.swift
//  iWallet
//
//  Created by Janitha Katukenda on 2021-05-25.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case list
    case setting
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .list: return "List"
        case .setting : return "Setting"
            
        }
    }
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .list: return "list.bullet"
        case .setting : return "bell"
            
        }
    }
}
