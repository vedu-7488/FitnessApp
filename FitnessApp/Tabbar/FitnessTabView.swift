//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 05/04/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.green]
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag( "Home" )
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }

    }
}

#Preview {
    FitnessTabView()
}
