//
//  ViewController.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 24/10/20.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var vacations = [Vacation]()
    var vacationSelected : Vacation?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        vacations = demoData
        title = K.titleName
        setUpTableView()
        
        let loginVC = LoginRegisterVC()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
        
    }
    func setUpTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()//pra tirar cel vazias do final
        tableView.contentInset.top = 8
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }


    @IBAction func userIconClicked(_ sender:Any){
        
        let userSheet = UIAlertController(title:nil , message: nil,preferredStyle:.actionSheet)
        let logout = UIAlertAction(title: "Logout", style: .default) { (action) in
            //Logout
            let loginVC = LoginRegisterVC()
            loginVC.modalPresentationStyle = .fullScreen
            self.present(loginVC, animated: true)
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

extension HomeVC : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return   vacations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)as! VacationCell
        cell.configureCell(vacation: vacations[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        vacationSelected = vacations[indexPath.row]
        performSegue(withIdentifier: K.Segue.detailSegue, sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? VacationDetailsVC else { return}
        destination.vacation = vacationSelected
        }
    
}
