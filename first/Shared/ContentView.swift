//
//  ContentView.swift
//  Shared
//
//  Created by Vera Malkova on 22/06/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView{
            Text("1")
                .tabItem {
                    Label("World Clock", systemImage: "globe")
                }

            Text("2")
                .tabItem {
                    Label("Alarm", systemImage: "alarm.fill")
                }
            
            StopwatchView(stopwatchModel: StopwatchModel())
                .tabItem {
                    Label("Stopwatch", systemImage: "stopwatch.fill")
                }

            TimerView(timerModel: TimerModel())
                .tabItem {
                    Label("Timer", systemImage: "timer")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
