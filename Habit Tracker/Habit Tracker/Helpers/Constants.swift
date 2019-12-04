//
//  Constants.swift
//  Journal
//
//  Created by Joshua Sharp on 9/19/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import Foundation
import CoreGraphics
import UIKit


typealias CompletionWithError = (_ error: Error?) -> Void

let coreDataModelName: String = "Habit_Tracker"
let debuging: Bool = false
let testing: Bool = false

extension UIColor {
    //Colors:
    static let htDarkPurple = UIColor(red: 55.0 / 255.0, green: 0.0 / 255.0, blue: 78.0 / 255.0, alpha: 1.0)
    static let htMutedYellow = UIColor(red: 243.0/255.0, green: 206.0/255.0, blue: 109.0/255.0, alpha: 1.0)
    static let htLightYellow = UIColor(red: 244.0/255.0, green: 254.0/255.0, blue: 158.0/255.0, alpha: 1.0)
    static let htMutedGreen = UIColor(red: 18.0/255.0, green: 135.0/255.0, blue: 5.0/255.0, alpha: 1.0)
    static let htMutedRed = UIColor(red: 125.0/255.0, green: 0.0/255.0, blue: 13.0/255.0, alpha: 1.0)
    //Assignments:
    static let htBackground = UIColor.clear.withAlphaComponent(0)
    static let htTextColor = UIColor.htLightYellow
    //static let htTextColor = UIColor(red: 254.0 / 255.0, green: 220.0 / 255.0, blue: 110.0 / 255.0, alpha: 1.0)
    static let htCalenderCell = UIColor.htDarkPurple
    //static let htCalenderCell = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.00)
    static let htCalendarYes = UIColor.htMutedGreen
    static let htCalendarNo = UIColor.htMutedRed
    static let htCalendarUnk = UIColor.darkGray
    static let htCalendarCellStatusBackground = UIColor.htDarkPurple
    
    static var borderColor: UIColor = {
        UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
            if UITraitCollection.userInterfaceStyle == .dark {
                return UIColor.white
            } else {
                return UIColor.black
            }
        }
    }()
}

extension CGFloat {
    //let cornerRadius:CGFloat        = 10
    static let htCellCornerRadius = CGFloat(20)
    static let htYesNoButtonCornerRadius = CGFloat(12)
    static let htHabitTableCellHeight = CGFloat(100)
    static let htHabitTableTextSize = CGFloat(30)
}

extension UIFont {
    static let habitTableText = UIFont(descriptor: .preferredFontDescriptor(withTextStyle: .largeTitle), size: .htHabitTableTextSize)
}
