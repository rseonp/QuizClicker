//
//  QuizCellTableViewCell.swift
//  QuizClicker
//
//  Created by Victor Li Wang on 5/26/16.
//  Copyright © 2016 Victor Li Wang. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz: Quiz! {
        didSet {
            nameLabel.text = quiz.name
            dateLabel.text = quiz.date
            scoreLabel.text = String(quiz.avgScore) + "%"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
