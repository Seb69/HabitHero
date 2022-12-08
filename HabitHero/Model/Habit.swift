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
        return Habit(id: .init(), description: "Read, review and recap at least 50 pages from a given book to make sure that I grasp the concepts/ideas presented", duration: 60, priority: .high)
    }
    static var exampleMediumPriority: Habit {
        return Habit(id: .init(),
                     description: "Have a run at 11AM, a healthy body could be transposed into a healthy mind",
                     duration: 70,
                     priority: .medium,
                     isCompleted: true)
    }
    static var exampleLowPriority: Habit {
        return Habit(id: .init(), description: "Eating a healthy meal. Healthy noutrition is 80% of the struggle", duration: 70, priority: .low)
    }
    static var exampleHabits: [Habit] {
        return [
            .exampleMediumPriority,
            .exampleLowPriority,
            .init(id: .init(), description: "Go swimming at 12", duration: 100, priority: .medium),
            .init(id: .init(), description: "Meditate", duration: 15, priority: .low),
            .example,
        ]
    }
    static var exampleHabits100: [Habit] {
        return (0...99).map { e in
            exampleHabits.randomElement()!
        }
    }
}
