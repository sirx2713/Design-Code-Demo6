//
//  ProfileView.swift
//  Design Code Demo
//
//  Created by Chris Ching on 2021-07-28.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        ZStack (alignment: .leading) {
            
            Color("background-gray")
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Text("Profile Analytics")
                    .font(.title)
                Text("@codewithchris")
                    .font(.subheadline)
                
                Spacer()
                
                Text("Basic Stats")
                    .font(.subheadline)
                
                let colSize = GridItem(.flexible(), spacing: 15, alignment: .center)
                
                LazyVGrid(columns: Array(repeating: colSize, count: 3),
                          content: {

                            // Cards
                            MetricCard(number: "12,193", caption: "Follower Count", icon: "profile-metric-icon-follows")
                            MetricCard(number: "193", caption: "Total Posts", icon: "profile-metric-icon-posts")
                            MetricCard(number: "2,193", caption: "Engagement Rate", icon: "profile-metric-icon-engagement")
                            
                })
                
                Text("In the Last 30 Days")
                    .font(.subheadline)
                    .padding(.top, 20)
                
                LazyVGrid(columns: Array(repeating: colSize, count: 3),
                          content: {

                            // Cards
                            MetricCard(number: "12,193", caption: "Total Likes", icon: "profile-metric-icon-like")
                            MetricCard(number: "193", caption: "Total Comments", icon: "profile-metric-icon-comment")
                            MetricCard(number: "3:30 PM", caption: "Usual Time of Posting", icon: "profile-metric-icon-day")
                            
                })
                
                LazyVGrid(columns: Array(repeating: colSize, count: 3),
                          content: {

                            // Cards
                            MetricCard(number: "193", caption: "Avg Likes Per Post", icon: "profile-metric-icon-like")
                            MetricCard(number: "193", caption: "Avg Comments Per Post", icon: "profile-metric-icon-comment")
                            MetricCard(number: "Friday", caption: "Usual Day of Posting", icon: "profile-metric-icon-time")
                            
                })
                    .padding(.top, 8)
                
                Spacer()
            }
            .padding(.horizontal)
                
            
        }
        
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
