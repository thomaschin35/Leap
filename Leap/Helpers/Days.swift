//
//  Days.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//

import Foundation
import SwiftUI

enum Days: String, CaseIterable, Identifiable{
    case Sun
    case Mon
    case Tue
    case Wed
    case Thu
    case Fri
    case Sat
   
    
    var name: String {
        rawValue.capitalized
    }
    var id: String{
        name
    }
}
