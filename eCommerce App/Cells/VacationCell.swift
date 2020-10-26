//
//  VacationCell.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 26/10/20.
//

import UIKit

class VacationCell: UITableViewCell {
    
    @IBOutlet weak var mainImage:UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
