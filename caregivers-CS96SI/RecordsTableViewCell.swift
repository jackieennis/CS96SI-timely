//
//  RecordsTableViewCell.swift
//  caregivers-CS96SI
//
//  Created by Jackie Ennis on 11/28/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import UIKit

class RecordsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var record: Record? {
        didSet{
            if let record = record, let titleLabel = titleLabel {
                self.titleLabel.text = record.title
            }
        }
    }

}
