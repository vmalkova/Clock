//
//  TimerButtonsView.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import SwiftUI

struct TimerButtonsView: View {
    
    @StateObject var timerModel: TimerModel
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 10){
            if timerModel.mode == .paused || timerModel.mode == .running {
                Button(action:self.timerModel.reset) { RingedButton(text: "Reset", color: .red)
                }
            } else {
                RingedButton(text: "Reset", color: .white)
            }
            Spacer()
            if timerModel.mode == .paused { Button(action:self.timerModel.start) { RingedButton(text: "Continue", color: Color("pumpkin"))
            }
            } else if timerModel.mode == .running {
                Button(action:self.timerModel.pause) { RingedButton(text: "Pause", color: .yellow)
                }
            } else {
                Button(action:self.timerModel.start) { RingedButton(text: "Start", color: .green)
                }
            }
        }.padding(.bottom, 20).padding(.horizontal, 5)
    }
}

struct TimerButtonsView_Previews: PreviewProvider{
    static var previews: some View {
        let timerModel = TimerModel()
        TimerButtonsView(timerModel: timerModel)
    }
}
