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
    
    var mockActivity = [
        Activity(title: "Running", subtitle: "10km", image: "figure.walk", tintColor: .blue, amount: "100"),
        Activity(title: "Cycling", subtitle: "20km", image: "figure.walk", tintColor: .orange, amount: "200"),
        
        Activity(title: "Stretching", subtitle: "30min", image: "figure.walk", tintColor: .purple, amount: "500"),
        Activity(title: "Walking", subtitle: "1km", image: "figure.run", tintColor: .pink, amount: "600"),
        
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("Welcome")
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
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                    Button {
                        print("Shom more")
                    } label: {
                        Text("Show more")
                            .padding(10)
                            .foregroundStyle(.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }

                }.padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing : 20), count: 2)) {
                    ForEach(mockActivity , id: \.id){ acivity in
                        ActivityCardView(activity: acivity)
                    }
                    
                    
                }.padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
