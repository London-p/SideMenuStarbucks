//
//  SideMenuView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            HStack{
                VStack {
                    SideMenuHeaderView(isShowing: $isShowing)
                    ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                        NavigationLink(
                            destination: Text(option.title),
                            label: {
                                SideMenuOptionView(viewModel: option)
                            })
                    }
                    Spacer()
            }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

