//
//  File.swift
//  first
//
//  Created by Vera Malkova on 31/07/2023.
//

import SwiftUI
import Foundation

struct SquareButton: View {
    
    var body: some View {
        Rectangle()
            .shadow(color: Color(hue: 0.1, saturation: 0.2, brightness: 0.3, opacity: 1), radius: 5)
            .frame(height: 70)
    }
}


struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        SquareButton()
    }
}
