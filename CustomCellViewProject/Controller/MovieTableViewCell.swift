//
//  MovieTableViewCell.swift
//  CustomCellViewProject
//
//  Created by kristians.tide on 18/11/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var MovieYearLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var GerneLabel: UILabel!
    @IBOutlet weak var MovieImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
