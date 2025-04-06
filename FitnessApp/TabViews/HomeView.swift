//
//  HomeView.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 05/04/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active : Int = 34
    @State var stand : Int = 8
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Text("Welcome to Fitness")
                    .font(.largeTitle)
                    .padding()
                    .fontWeight(.bold)
                
                HStack{
                    Spacer()
                    VStack {
                        VStack(alignment: .leading ,spacing: 8){
                            Text("Calories")
                                .foregroundStyle(.red)
                                .font(.callout)
                            Text("2000 kcal")
                                .fontWeight(.bold)
                            
                        }.padding()
                        VStack(alignment: .leading ,spacing: 8){
                            Text("Active")
                                .foregroundStyle(.green)
                                .font(.callout)
                            Text("52 min")
                                .fontWeight(.bold)
                            
                        }.padding()
                        VStack(alignment: .leading ,spacing: 8){
                            Text("Stand")
                                .foregroundStyle(.blue)
                                .font(.callout)
                            Text("8 hrs")
                                .fontWeight(.bold)
                            
                        }
                    }
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, color: .red, goal: 500)
                        ProgressCircleView(progress: $active, color: .green, goal: 60).padding(20)
                        ProgressCircleView(progress: $stand, color: .blue, goal: 12)
                            .padding(40)
                       
                    }.padding(.horizontal)
                    Spacer()//vbnm,
                }.padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
