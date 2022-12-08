//
//  ContentView.swift
//  HabitHero
//
//  Created by Seb69 on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    let habits: [Habit]
                
    var body: some View {
        ScrollView {
            VStack {
                ForEach(habits) { habit in
                    Text(habit.description)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(habits: [
            Habit.example,
            Habit.example,
            Habit.example
        ])
    }
}
