//
//  VacationDetailsVC.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 27/10/20.
//

import UIKit
import SDWebImage


class VacationDetailsVC: UIViewController {

    @IBOutlet weak var activitiesLbl:UILabel!
    @IBOutlet weak var descriptionLbl:UILabel!
    @IBOutlet weak var departFromLbl:UILabel!
    @IBOutlet weak var numberOfNightsLbl:UILabel!
    @IBOutlet weak var priceLbl:UILabel!
    @IBOutlet weak var mainImage:UIImageView!
    @IBOutlet weak var collectionView : UICollectionView!
    
    
    var vacation : Vacation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        title = vacation.title
        activitiesLbl.text = vacation.activities
        descriptionLbl.text = vacation.description
        departFromLbl.text = vacation.airFare
        numberOfNightsLbl.text = "\(vacation.numberOfNights) night accomodations"
        priceLbl.text = "All inclusive price :" + vacation.price.formatToCurrencyString()
        
        let imageURL = vacation.images[0]
        if let url = URL(string: imageURL){
            mainImage.sd_imageIndicator = SDWebImageActivityIndicator.medium
            mainImage.sd_setImage(with: url, placeholderImage: UIImage(named: "background-beach-alpha"))
        }
        
    }
    


}
extension VacationDetailsVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vacation.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.collectionCellIdentifier, for: indexPath) as! ThumbnailCell
        let url = vacation.images[indexPath.row]
        cell.configureCell(url: url)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageURL = vacation.images[indexPath.item]
        if let url = URL(string: imageURL){
            mainImage.sd_imageIndicator = SDWebImageActivityIndicator.medium
            mainImage.sd_setImage(with: url, placeholderImage: UIImage(named: "background-beach-alpha"))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 120, height: 120)
    }
    
    
}
}
