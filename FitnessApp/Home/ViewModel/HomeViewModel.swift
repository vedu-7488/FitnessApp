//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 06/04/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
     var calories: Int = 123
     var active : Int = 34
     var stand : Int = 8
    
    var mockActivity = [
        Activity(title: "Running", subtitle: "10km", image: "figure.walk", tintColor: .blue, amount: "100"),
        Activity(title: "Cycling", subtitle: "20km", image: "figure.walk", tintColor: .orange, amount: "200"),
        
        Activity(title: "Stretching", subtitle: "30min", image: "figure.walk", tintColor: .purple, amount: "500"),
        Activity(title: "Walking", subtitle: "1km", image: "figure.run", tintColor: .pink, amount: "600"),
        
    ]
    
    var mockWorkout = [
        Workout(title: "Running", image: "figure.run", tintColor: .green, duration: "20min", calories: "232 kcal", date: "4 April"),
        Workout(title: "Cycling", image: "figure.run", tintColor: .red, duration: "20min", calories: "232 kcal", date: "4 April"),
        Workout(title: "Stretching", image: "figure.run", tintColor: .blue, duration: "20min", calories: "232 kcal", date: "4 April"),
        Workout(title: "Walking", image: "figure.run", tintColor: .teal, duration: "20min", calories: "232 kcal", date: "4 April")
    ]
    
}
