//
//  GameCell.swift
//  Mobu Gameshop WS1617
//
//  Created by Nathalie Kroj on 02.01.17.
//  Copyright © 2017 fhkl. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var gameImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
