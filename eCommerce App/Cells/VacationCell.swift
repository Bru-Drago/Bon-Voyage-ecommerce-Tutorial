//
//  VacationCell.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 26/10/20.
//

import UIKit
import SDWebImage

class VacationCell: UITableViewCell {
    
    @IBOutlet weak var mainImage:UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 3.0
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
    func configureCell(vacation : Vacation){
        titleLbl.text = vacation.title
        priceLbl.text = vacation.price.formatToCurrencyString()
        
        let imageURL = vacation.images[0]
        if let url = URL(string: imageURL){
            mainImage.sd_imageIndicator = SDWebImageActivityIndicator.medium
            mainImage.sd_setImage(with: url, placeholderImage: UIImage(named: "background-beach-alpha"))
        }
    }
    
}
