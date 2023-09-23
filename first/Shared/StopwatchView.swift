//
//  StopwatchView.swift
//  first
//
//  Created by Vera Malkova on 31/07/2023.
//

import SwiftUI

struct StopwatchView: View {
    // let viewModel = ViewModel()
    @StateObject var stopwatchModel: StopwatchModel

    var body: some View {
        Color.black.ignoresSafeArea()
            .overlay(
                VStack(alignment: .center){
                    Spacer()
                    Text(String(format: "%.1f", stopwatchModel.timeText))
                        .font(.system(size: 80, design: .serif))
                        .foregroundColor(.white)
                        .scaledToFill()
                    Spacer()
                    StopwatchButtonsView(stopwatchModel: stopwatchModel)
                    StopwatchListView(stopwatchModel: stopwatchModel)
                }.padding(.horizontal, 5))
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        let stopwatchModel = StopwatchModel()
        StopwatchView(stopwatchModel: stopwatchModel)
    }
}

