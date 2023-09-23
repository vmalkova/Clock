//
//  ViewModel.swift
//  first
//
//  Created by Vera Malkova on 13/07/2023.
//

import Foundation
import SwiftUI

enum StopwatchMode {
    case running
    case paused
    case reset
}

class StopwatchModel: ObservableObject {
    
    @Published var mode: StopwatchMode = .reset
    @Published var timeText = 0.0
    var timer = Timer()
    @Published var times: [String] = []
    
    func start() {
        if mode != .paused {
            times = []
            timeText = 0.0
        }
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] timer in
            self?.timeText += 0.1
        }
    }
    
    func pause() {
        mode = .paused
        timer.invalidate()
        self.times.append(String(format: "%.1f",self.timeText))
    }
    
    func reset() {
        timer.invalidate()
        mode = .reset
    }
    
    func record() {
        pause()
        start()
    }
}
