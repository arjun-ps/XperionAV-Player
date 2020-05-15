//
//  MoviesTableViewCell.swift
//  XperionAV Player
//
//  Created by Arjun on 13/05/20.
//  Copyright © 2020 Arjun. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

  @IBOutlet weak var titleMovie: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
