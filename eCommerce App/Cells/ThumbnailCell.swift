//
//  ThumbnailCell.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 27/10/20.
//

import UIKit
import SDWebImage

class ThumbnailCell: UICollectionViewCell {
   
    @IBOutlet weak var thumbnailImage : UIImageView!
    
    
    func configureCell(url: String){
        thumbnailImage.layer.cornerRadius = 5
        guard let url = URL(string: url) else { return}
        thumbnailImage.sd_imageIndicator = SDWebImageActivityIndicator.medium
        thumbnailImage.sd_setImage(with: url, placeholderImage: K.imgPlaceholder)
        
    }
}
