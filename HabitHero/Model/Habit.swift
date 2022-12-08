//
//  Habit.swift
//  HabitHero
//
//  Created by Seb69 on 08.12.2022.
//

import Foundation

struct Habit: Identifiable {
    let id: UUID
    let description: String
    let duration: Int // seconds
    let priority: HabitPriority
    
    enum HabitPriority {
        case low
        case medium
        case high
    }
}

extension Habit {
    static var example: Habit {
        return Habit(id: .init(), description: "Read", duration: 60, priority: .high)
    }
}
