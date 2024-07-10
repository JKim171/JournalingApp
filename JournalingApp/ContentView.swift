//
//  ContentView.swift
//  JournalingApp
//
//  Created by Jonathan Kim on 6/26/24.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        TabView{
            DailyTab()
                .tabItem{
                    Image(systemName: "chart.bar")
                    Text("Daily")
                }
        }
        
        
        }
    }




#Preview {
    ContentView()
}
