//
//  TimerBottomView.swift
//  first
//
//  Created by Vera Malkova on 08/09/2023.
//

import SwiftUI

struct TimerBottomView: View {
    
    @StateObject var timerModel: TimerModel
    
    var body: some View {
        
        Text("alarm")
            .foregroundColor(.white)
            .frame(height: 100, alignment: .top)
    }
}

struct TimerBottomView_Previews: PreviewProvider{
    static var previews: some View {
        let timerModel = TimerModel()
        TimerBottomView(timerModel: timerModel)
    }
}
