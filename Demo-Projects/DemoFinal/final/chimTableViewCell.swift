//
//  chimTableViewCell.swift
//  final
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import UIKit

class chimTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTen: UILabel!
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    @IBOutlet weak var actWaiting: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
