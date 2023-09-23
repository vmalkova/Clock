//
//  ViewModel.swift
//  first
//
//  Created by Vera Malkova on 13/07/2023.
//

import Foundation
import SwiftUI

class TimeKeeper: ObservableObject {
    var timer = Timer()
    @Published var timeText = 0.0
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.timeText += 1
        }
    }
}
