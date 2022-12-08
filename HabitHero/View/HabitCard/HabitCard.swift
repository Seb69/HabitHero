//
//  HabitCard.swift
//  HabitHero
//
//  Created by Seb69 on 08.12.2022.
//

import SwiftUI

struct HabitCard: View {
    
    @Binding var habit: Habit
    
    var habitColor: Color {
        switch habit.priority {
        case .low: return .green
        case .medium: return .orange
        case .high: return .red
        }
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 15) {
                leftButton()
                    .frame(height: 50)
                metaInformation()
                Spacer()
            }
            priorityBar()
                .frame(width: 50)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.secondary.opacity(0.2))
        .cornerRadius(15)
    }
    
    private func metaInformation() -> some View {
        VStack {
            HStack(alignment: .top) {
                Text(habit.description)
            }
            Spacer()
        }
    }
    
    private func leftButton() -> some View {
        VStack {
            Circle()
                .stroke(lineWidth: 3)
                .foregroundColor(.gray.opacity(0.3))
                .overlay(
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(habit.isCompleted ? .accentColor : .clear)
                )
                .frame(width: 30)
                .onTapGesture {
                    habit.isCompleted.toggle()
                }
            Spacer()
        }
    }
    
    private func priorityBar() -> some View {
        Rectangle()
            .frame(height: 5)
            .foregroundColor(habitColor)
            .cornerRadius(15)
    }
}

struct HabitCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HabitCard(habit: .constant(.exampleMediumPriority))
                .frame(width: 320, height: 150)
                .preferredColorScheme(.dark)
            HabitCard(habit: .constant(.example))
                .frame(width: 320, height: 150)
                .preferredColorScheme(.light)
                .padding()
        }
    }
}
