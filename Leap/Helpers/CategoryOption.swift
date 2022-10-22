//
//  CategoryOption.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import SwiftUI

struct CategoryOption: View {
    let choices: Categories
    @State var checked = false
    var body: some View {
        Group{
            HStack {
                Text(choices.name)
                Spacer()
                Toggle("", isOn: $checked)
                    .labelsHidden()
                    .toggleStyle(ToggleCheckboxStyle())
                    .font(.title)
            }
        }.padding(.all, 1.0)
    }
}

struct CategoryOption_Previews: PreviewProvider {
    static var previews: some View {
        CategoryOption(choices: .health)
    }
}
