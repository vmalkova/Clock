//
//  TimerGetTimeView.swift
//  first
//
//  Created by Vera Malkova on 07/09/2023.
//

import SwiftUI

struct TimerGetTimeView: View {
    
    @StateObject var timerModel: TimerModel
    
    var arr: [Int] = Array(0...60)
    var myArray: [String] = []
       
    @State var currentSelection = ""
    @State var currentIndex = 0 {
        didSet {
            currentSelection = myArray[currentIndex]
        }
    }
    
    var body: some View {
//        myArray = arr.map { int in
//            "\(int)"
//        }
        Picker(selection: $currentSelection, label: Text("Picker")) {
            ForEach(myArray, id: \.self) { period in
                Text(period)
            }
        }
        HStack(alignment: .bottom, spacing: 10){
            Text("hours").foregroundColor(.white)
            Spacer()
            Text("minutes").foregroundColor(.white)
            Spacer()
            Text("seconds").foregroundColor(.white)
        }.padding(30).frame(width: 300, height: 300)
    }
}

struct TimerGetTimeView_Previews: PreviewProvider{
    static var previews: some View {
        let timerModel = TimerModel()
        TimerGetTimeView(timerModel: timerModel)
    }
}
