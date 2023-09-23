//
//  StopwatchTopView.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import SwiftUI

struct StopwatchButtonsView: View {
    
    @StateObject var stopwatchModel: StopwatchModel
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 10){
            if stopwatchModel.mode == .reset{ Button(action:self.stopwatchModel.start) { RingedButton(text: "Start", color: .green)
            }
            } else if stopwatchModel.mode == .running {
                Button(action:self.stopwatchModel.pause) { RingedButton(text: "Pause", color: Color("rose"))
                }
            } else {
                Button(action:self.stopwatchModel.reset) { RingedButton(text: "Reset", color: Color("redish"))
                }
            }
            Spacer()
            Circle()
                .fill(.white)
                .frame(width: 12, height: 12)
            Circle()
                .fill(.white)
                .opacity(0.5)
                .frame(width: 12, height: 12)
            Spacer()
            if stopwatchModel.mode == .reset {
                RingedButton(text: "Record", color: .white)
            } else if stopwatchModel.mode == .running {
                Button(action:self.stopwatchModel.record) { RingedButton(text: "Record", color: .orange)
                }
            } else {
                Button(action:self.stopwatchModel.start) { RingedButton(text: "Continue", color: Color("pumpkin"))
                }
            }
        }.padding(.bottom, 3).padding(.horizontal, 5)
        Divider()
            .overlay(.white)
            .opacity(0.5)
            .frame(height: 10.0)
    }
}

struct StopwatchButtonsView_Previews: PreviewProvider{
    static var previews: some View {
        let stopwatchModel = StopwatchModel()
        StopwatchButtonsView(stopwatchModel: stopwatchModel)
    }
}
