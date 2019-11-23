//
//  DayTableViewCell.swift
//  Habit Tracker
//
//  Created by Lambda_School_Loaner_214 on 11/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import CoreData

class DayTableViewCell: UITableViewCell {

    // MARK: - Properties
    var day: Day? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var habitName: UILabel!
    @IBOutlet private weak var habitDate: UILabel!
    @IBOutlet private weak var yesButton: UIButton!
    @IBOutlet private weak var noButton: UIButton!
    @IBOutlet private weak var innerView: UIView!
    
    
    // MARK: - View Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        updateViews()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - IBActions
    
    @IBAction func buttonsTapped(_ sender: UIButton) {
        guard let day = day else { return }
        switch sender.titleLabel?.text {
        case "Yes":
            HabitController.shared.updateDayStatus(day: day, status: .yes)
        case "No":
            HabitController.shared.updateDayStatus(day: day, status: .no)
        case .none:
            break
        default:
            break
        }
        updateViews()
    }
    
    
    // MARK: - Private Methods
    private func updateViews() {
        guard let day = day else { return }
        //Text Font and Color
        backgroundColor = .clear
        
        frame.size.height = CGFloat(120)
        habitName.font = .habitTableText
        habitName.textColor = .htTextColor
        habitName.text = day.habit?.title
        habitDate.textColor = .htTextColor
        habitDate.text = day.date?.formatted()
        setupInnerView()
        setupButtons()
    }
    
    private func setupInnerView () {
        innerView.backgroundColor = .htDarkPurple
        innerView.layer.cornerRadius = .htCellCornerRadius
    }
    
    private func setupButtons() {
        guard let day = day else { return }
        yesButton.layer.cornerRadius = .htYesNoButtonCornerRadius
        noButton.layer.cornerRadius = .htYesNoButtonCornerRadius
        let dayStatus = DayStatus(rawValue: day.status)
        yesButton.tintColor = .htLightYellow
        noButton.tintColor = .htLightYellow
        switch dayStatus {
        case .no:
            noButton.backgroundColor = .systemBlue
            yesButton.backgroundColor = .htMutedGreen
        case .yes:
            noButton.backgroundColor = .htMutedRed
            yesButton.backgroundColor = .systemBlue
        case .unset:
            yesButton.backgroundColor = .htMutedGreen
            noButton.backgroundColor = .htMutedRed
        case .none:
            break
        }
    }
}
