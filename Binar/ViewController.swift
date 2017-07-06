//
//  ViewController.swift
//  Binar
//
//  Created by Software Development 7 - Mac 2 on 7/6/17.
//  Copyright © 2017 Software Development 7 - Mac 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ShareDelegate {

    var arrPasiens : [ClsPasien] = []
    var mPasien : ClsPasien!
    var mIdx : Int!
    
    @IBOutlet weak var tableViewPasien: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnActTambahPasien(_ sender: Any) {
        self.performSegue(withIdentifier: "detailPasien", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailPasien"){
            let destinationVC           = segue.destination as! DetailViewController
            destinationVC.mPasien       = mPasien
            destinationVC.mIdx          = mIdx

        }
    }
    
    
    
    
    func callbackAction(pasien: ClsPasien,action: String, idx : Int){
        if (action == "add"){
            self.arrPasiens.append(pasien)
        }else if (action == "edit"){
        
        }else if (action == "delete"){
            self.arrPasiens.remove(at: idx)
        }
        
        self.tableViewPasien.reloadData()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPasiens.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell                    = tableView.dequeueReusableCell(withIdentifier: "PasienViewCell", for: indexPath) as! PasienViewCell
        
        cell.lblNamaPasien.text!    = arrPasiens[indexPath.row].nama_pasien
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.mIdx       = indexPath.row
        self.mPasien    = arrPasiens[indexPath.row]
        self.performSegue(withIdentifier: "detailPasien", sender: nil)
        
    }
    

}

