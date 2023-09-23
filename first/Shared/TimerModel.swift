//
//  TimerModel.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import Foundation
import SwiftUI

enum TimerMode {
    case running
    case paused
    case reset
    case ring
}

class TimerModel: ObservableObject {
    
    @Published var mode: TimerMode = .reset
    @Published var timeSelected = 4.0
    @Published var timeLeft = 4.0
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] timer in
            self?.timeLeft -= 0.1
        }
    }
    
    func pause() {
        mode = .paused
        timer.invalidate()
    }
    
    func reset() {
        mode = .reset
        timer.invalidate()
        timeLeft = timeSelected
    }
    
    func ring() {
        mode = .ring
        timer.invalidate()
    }
    
}

