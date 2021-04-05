//
//  ContentView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Starbucks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
            ContentView( )
            
        }
    }


struct HomeView: View {
    var body: some View {
        
            ZStack {
                Color.white
                ScrollView {
                    VStack {
                        HStack{
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "3")
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "4")
                            Spacer()
            }.padding()
                        HStack{
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "5")
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "6")
                            Spacer()
            }.padding()
                        HStack{
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "7")
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "4")
                            Spacer()
                        }.padding()
                        HStack{
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "3")
                            Spacer()
                            CoffeContainerView(coffe: "Frapp", image: "4")
                            Spacer()
            }.padding()

                    }
                    
                }.padding()
                }
                
            
    
    
    


            


        
        
        
}
}
