//
//  dataVariable.swift
//  KalkulatorTabletV2
//
//  Created by Mateusz Rybczyński on 18/09/2022.
//

import Foundation
import SwiftUI

enum CalcButton: String {
    
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case plus = "+"
    case minus = "-"
    case multiply = "x"
    case divide = "/"
    case equal = "="
    case decimal = "."
    case clear = "AC"
    case negative = "+/-"
    case percent = "%"
    case square = "^2"
    case tripple = "^3"
    case pi = "PI"
    case e = "e"
    case silnia = "x!"
    
    var colorOfButton: Color {
        switch self {
        case .multiply,.divide,.plus,.minus,.equal:
            return .orange
            
        case .clear,.negative,.percent:
            return Color(.lightGray)
            
        default:
            return Color(UIColor(red: 55/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1))
        }
    }
    
}

