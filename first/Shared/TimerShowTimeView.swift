//
//  TimerShowTimeView.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import SwiftUI

struct TimerShowTimeView: View {
    
    @StateObject var timerModel: TimerModel
    
    var body: some View {
        ZStack(){
            Circle()
                    .stroke(lineWidth: 15.0)
                    .opacity(0.3)
                    .foregroundColor(Color.orange)
            Circle()
                .trim(from: 0.0, to: Double(timerModel.timeLeft/timerModel.timeSelected))
                .stroke(style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(-90))
                .foregroundColor(Color.orange)
            Text(String(format: "%.1f", timerModel.timeLeft))
                .font(.system(size: 80, design: .serif))
                .foregroundColor(.white)
                .scaledToFill()
                
        }.padding(10).frame(width: 300, height: 300).scaledToFit()
    }
}

struct TimerShowTimeView_Previews: PreviewProvider{
    static var previews: some View {
        let timerModel = TimerModel()
        TimerShowTimeView(timerModel: timerModel)
    }
}
