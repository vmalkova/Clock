//
//  StopwatchListView.swift
//  first
//
//  Created by Vera Malkova on 06/09/2023.
//

import Combine
import SwiftUI

struct StopwatchListView: View {
    
    @StateObject var stopwatchModel: StopwatchModel
    
    var body: some View {
        var scrollTarget = stopwatchModel.times.last
        ScrollViewReader { proxy in
                    ScrollView {
                        VStack {
                            ForEach(stopwatchModel.times, id: \.self) { time in
                                Text(time)
                                    .font(.system(size: 30, design:.serif))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.leading)
                                    .frame(height: 30.0)
                                    .id(time)
                            }
                        }
                    }
                    .onChange(of: scrollTarget) { target in
                        if let target = target {
                            scrollTarget = nil
                            withAnimation {
                                proxy.scrollTo(target)
                            }
                        }
                    }
                }
        .frame(height: 150)
    }
}

struct StopwatchListView_Previews: PreviewProvider {
    static var previews: some View {
        let stopwatchModel = StopwatchModel()
        StopwatchListView(stopwatchModel: stopwatchModel)
    }
}


