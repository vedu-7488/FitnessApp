//
//  WorkoutCardView.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 06/04/25.
//

import SwiftUI


struct WorkoutCardView: View {
    @State var workouts : Workout
    var body: some View {
        HStack{
            Image(systemName: workouts.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(workouts.tintColor)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(alignment: .leading ,spacing:16){
                HStack{
                    Text(workouts.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(workouts.duration)
                        .font(.headline)
                }
                HStack{
                    Text(workouts.date)
                        .font(.headline)
                    Spacer()
                    Text(workouts.calories)
                        .font(.headline)
                }
            }
        }.padding()
    }
}

#Preview {
    WorkoutCardView(workouts: Workout(title: "Running", image: "figure.run", tintColor: .blue, duration: "24 Min", calories: "420 kcal", date: "6 April"))
}
