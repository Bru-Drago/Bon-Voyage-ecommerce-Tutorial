//
//  ViewController.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 24/10/20.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func userIconClicked(_ sender:Any){
        
        let userSheet = UIAlertController(title:nil , message: nil,preferredStyle:.actionSheet)
        let logout = UIAlertAction(title: "Logout", style: .default) { (action) in
            //Logout
        }
        let manageCards = UIAlertAction(title: "Manage Credit Cards", style: .default) { (action) in
            //Display stripe widget
        }
        let manageBanks = UIAlertAction(title: "Manage Bank Accounts", style: .default) { (action) in
            //manage bank account
        }
        let close = UIAlertAction(title: "Close", style: .cancel)
        
        userSheet.addAction(logout)
        userSheet.addAction(manageCards)
        userSheet.addAction(manageBanks)
        userSheet.addAction(close)
        
        present(userSheet, animated: true )
        
    }
}

