//
//  ActivityModel.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 06/04/25.
//

import Foundation
import SwiftUI
struct Activity{
    let id : Int = UUID().hashValue
    let title : String
    let subtitle : String
    let image : String
    let tintColor : Color
    let amount : String
}

struct Workout{
    let id : Int = UUID().hashValue
    let title : String
    let image : String
    let tintColor : Color
    let duration : String
    let calories : String
    let date : String
}
