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
    var isCompleted: Bool = false
    
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
    static var exampleMediumPriority: Habit {
        return Habit(id: .init(),
                     description: "Have a run at 11AM every morning in order to improve stamina and my morbid obesity",
                     duration: 70,
                     priority: .medium,
                     isCompleted: true)
    }
    static var exampleLowPriority: Habit {
        return Habit(id: .init(), description: "Eating a healthy meal in order not to get more morbidly obese", duration: 70, priority: .low)
    }
    static var exampleHabits: [Habit] {
        return [
            .example,
            .exampleMediumPriority,
            .exampleLowPriority
        ]
    }
    static var exampleHabits100: [Habit] {
        return (0...99).map { e in
            exampleHabits.randomElement()!
        }
    }
}
