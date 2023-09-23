//
//  ringed_button.swift
//  first
//
//  Created by Vera Malkova on 31/07/2023.
//

import SwiftUI
import Foundation

struct RingedButton: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 100, height: 100)
            .opacity(0.36)
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 3)
                    .padding(6)
                    .overlay(
                        Text(text)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(color)
                    )
            )
    }
}


struct RingedButton_Previews: PreviewProvider {
    static var previews: some View {
        RingedButton(text: "Start", color: .pink)
    }
}
