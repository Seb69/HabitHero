//
//  ContentView.swift
//  HabitHero
//
//  Created by Seb69 on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var habits: [Habit]
                
    var body: some View {
        ScrollView {
            VStack {
                ForEach($habits) { habit in
                    HabitCard(habit: habit)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(habits: Habit.exampleHabits100)
        .preferredColorScheme(.dark)
    }
}
