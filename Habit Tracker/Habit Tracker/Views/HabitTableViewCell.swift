//
//  HabitTableViewCell.swift
//  Habit Tracker
//
//  Created by Lambda_School_Loaner_214 on 11/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import CoreData

class HabitTableViewCell: UITableViewCell {

    // MARK: - Properties
    var habit: Habit?{
        didSet{
            updateViews()
        }
    }
    
    // MARK: - IBOutlets
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var detailLabel: UILabel!
    @IBOutlet private weak var innerView: UIView!
    
    // MARK: - View Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Private Methods
    
    private func setupInnerView () {
        innerView.backgroundColor = .htDarkPurple
        innerView.layer.cornerRadius = .htCellCornerRadius
        nameLabel.textColor = .htTextColor
        nameLabel.font = .habitTableText
        detailLabel.textColor = .htTextColor
        //detailLabel.font
        innerView.sizeToFit()
    }
    
    private func updateViews() {
        guard let habit = habit else { return }
        backgroundColor = .clear
        frame.size.height = .htHabitTableCellHeight
        nameLabel.text = habit.title
        detailLabel.text = "TDB"
        setupInnerView()
    }

}
