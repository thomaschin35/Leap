//
//  Categories.swift
//  Leap
//
//  Created by Thomas Chin on 10/22/22.
//
import Foundation
import SwiftUI

enum Categories: String, CaseIterable, Identifiable{
    
    case social
    case health
    case spontaneous
    case fun
    case dailychores
    case acad
    
    var name: String {
        rawValue.capitalized
    }
    var id: String{
        name
    }
}
