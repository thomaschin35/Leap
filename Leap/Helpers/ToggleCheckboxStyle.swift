//
//  ToggleCheckboxStyle.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import Foundation
import SwiftUI

struct ToggleCheckboxStyle : ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        .tint(.black)
        
    }
}
