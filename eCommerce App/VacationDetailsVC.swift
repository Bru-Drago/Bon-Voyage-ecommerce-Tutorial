//
//  VacationDetailsVC.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 27/10/20.
//

import UIKit

class VacationDetailsVC: UIViewController {

    @IBOutlet weak var activitiesLbl:UILabel!
    @IBOutlet weak var descriptionLbl:UILabel!
    
    var vacation : Vacation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = vacation.title
        activitiesLbl.text = vacation.activities
        descriptionLbl.text = vacation.description
        
    }
    


}
