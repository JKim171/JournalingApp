//
//  DailyTab.swift
//  JournalingApp
//
//  Created by Jeremy on 7/3/24.
//

import SwiftUI

struct DailyTab: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 10){
                Text("DAILY TASKS:")
                    .font(.largeTitle)
                    .background(Color.blue.opacity(0.2))
                
                @State var a1: String = ""
                @State var a2: String = ""
                @State var a3: String = ""
                @State var mood: Float = 0
                
                askQuestion(question: "How was your day?", ans: $a1)
                askQuestion(question: "What's been on your mind the most?", ans: $a2)
                askQuestion(question: "Who've you talked to?", ans: $a3)
                
                
                Text("Mood Rating: \(mood, specifier: "%.0f")")
                    .padding()
                HStack{
                    Text("0")
                    Slider(value: $mood, in: 0...10, step: 1)
                    Text("10")
                }
                
                
            }.padding()
                .toolbar {
                    ToolbarItem{
                        Button {
                            print("Settings")
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
    
    func askQuestion(question: String, ans: Binding<String>) -> some View {
        VStack{
            //Text("\(question)")
            TextField("\(question)", text: ans)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.gray.opacity(0.1))
        }
    }
    
}

#Preview {
    DailyTab()
}
