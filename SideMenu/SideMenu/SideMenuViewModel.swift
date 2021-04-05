//
//  SideMenuViewModel.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case list
    case bookmarks
    case message
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .list: return "List"
        case .bookmarks: return "Bookmarks"
        case .message: return "Message"
            
        }
    }
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .list: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .message: return "bubble.left"
    }
}
    
}
