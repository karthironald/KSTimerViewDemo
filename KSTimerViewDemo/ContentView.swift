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
    @State private var shouldPresentTimerView = false
    
    let configuration = KSTimerView.Configuration(timerBgColor: .green, timerRingBgColor: .green, actionButtonsBgColor: .blue, foregroundColor: .white, stepperValue: 10, enableLocalNotification: true, enableHapticFeedback: true)
    
    var body: some View {
        Button {
            self.shouldPresentTimerView.toggle()
        } label: {
            Text("Present")
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .fullScreenCover(isPresented: $shouldPresentTimerView, content: {
            KSTimerView(timerInterval: $timeInterval, configuration: configuration)
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
