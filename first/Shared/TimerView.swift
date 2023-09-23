//
//  TimerView.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import SwiftUI

struct TimerView: View {
    // let viewModel = ViewModel()
    @StateObject var timerModel: TimerModel

    var body: some View {
        Color.black.ignoresSafeArea()
            .overlay(
                VStack(alignment: .center){
                    if timerModel.mode == .reset || timerModel.mode == .ring{
                        TimerGetTimeView(timerModel: timerModel)
                    } else {
                        TimerShowTimeView(timerModel: timerModel)
                    }
                    TimerButtonsView(timerModel: timerModel)
                    TimerBottomView(timerModel: timerModel)
                }.padding(.horizontal, 5))
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        let timerModel = TimerModel()
        TimerView(timerModel: timerModel)
    }
}
