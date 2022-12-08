//
//  HabitHeroApp.swift
//  HabitHero
//
//  Created by Seb69 on 08.12.2022.
//

import SwiftUI

@main
struct HabitHeroApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(habits: Habit.exampleHabits)
        }
    }
}
