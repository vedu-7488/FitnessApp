//
//  HomeView.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 05/04/25.
//

import SwiftUI


struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
 
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                        .fontWeight(.bold)
                    
                    HStack(){
                        Spacer()
                        VStack() {
                            VStack(alignment: .leading ,spacing: 8){
                                Text("Calories")
                                    .foregroundStyle(.red)
                                    .font(.callout)
                                Text("\(homeViewModel.calories)")
                                    .fontWeight(.bold)
                                
                            }.padding()
                            VStack(alignment: .leading ,spacing: 8){
                                Text("Active")
                                    .foregroundStyle(.green)
                                    .font(.callout)
                                Text("\(homeViewModel.active)")
                                    .fontWeight(.bold)
                                
                            }.padding()
                            VStack(alignment: .leading ,spacing: 8){
                                Text("Stand")
                                    .foregroundStyle(.blue)
                                    .font(.callout)
                                Text("\(homeViewModel.stand)")
                                    .fontWeight(.bold)
                                
                            }
                        }
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $homeViewModel.calories, color: .red, goal: 500)
                            ProgressCircleView(progress: $homeViewModel.active, color: .green, goal: 60).padding(20)
                            ProgressCircleView(progress: $homeViewModel.stand, color: .blue, goal: 12)
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
                        ForEach(homeViewModel.mockActivity , id: \.id){ acivity in
                            ActivityCardView(activity: acivity)
                        }
                        
                        
                    }.padding(.horizontal)
                    
                    
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(10)
                                .foregroundStyle(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                        }
                        
                    }.padding(.horizontal)
                        .padding(.top)
                    LazyVStack{
                        ForEach(homeViewModel.mockWorkout , id: \.id){ workout in
                            WorkoutCardView(workouts: workout)
                        }
                    }.padding(.bottom)
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
