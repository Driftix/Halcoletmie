//
//  CocktailTableViewCell.swift
//  Halcoletmie
//
//  Created by Guilhem Schira on 18/11/2021.
//

import UIKit

class CocktailTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(title: String) {
        self.titleLabel.text = title
//        self.imageView?.image =
    }
    
}
