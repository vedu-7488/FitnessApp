//
//  ActivityCardView.swift
//  FitnessApp
//
//  Created by Ved Prakash Mishra on 06/04/25.
//

import SwiftUI

struct Activity{
    let id : Int = UUID().hashValue
    let title : String
    let subtitle : String
    let image : String
    let tintColor : Color
    let amount : String
}

struct ActivityCardView: View {
    @State var activity :  Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack {
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 8){
                        Text(activity.title)
                            .font(.headline)
                        Text(activity.subtitle)
                            .font(.caption)
                            .foregroundColor(Color(uiColor: .systemGray))
                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                Text(activity.amount)
                    .font(.title)
                    .fontWeight(.bold).padding()
            }.padding()
            
        }
    }
}

#Preview {
    ActivityCardView(activity: Activity(title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: "6,345"))
}
