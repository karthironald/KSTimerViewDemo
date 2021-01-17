//
//  ContentView.swift
//  KSTimerViewDemo
//
//  Created by Karthick Selvaraj on 17/01/21.
//

import SwiftUI
import KSTimerView

struct ContentView: View {
    @State private var timeInterval: TimeInterval = 30
    
    var body: some View {
        VStack {
            KSTimerView(timerInterval: $timeInterval, configuration: KSTimerView.Configuration(timerBgColor: .yellow, timerRingBgColor: .red, actionButtonsBgColor: .blue, foregroundColor: .white, stepperValue: 10, enableLocalNotification: true, enableHapticFeedback: true))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
