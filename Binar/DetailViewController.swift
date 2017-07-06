//
//  DetailViewController.swift
//  Binar
//
//  Created by Software Development 7 - Mac 2 on 7/6/17.
//  Copyright © 2017 Software Development 7 - Mac 2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var txtIdPasien: UITextField!
    @IBOutlet weak var txtNamaPasien: UITextField!
    @IBOutlet weak var txtAlamatPasien: UITextField!
    
    @IBOutlet weak var btnHapus: UIButton!
    @IBOutlet weak var btnEdit: UIButton!
    @IBOutlet weak var btnTambah: UIButton!
    
    
    var mPasien : ClsPasien?
    var mIdx : Int?
    static var delegate : ShareDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (mPasien != nil){
            txtIdPasien.text        = mPasien?.id_pasien
            txtNamaPasien.text      = mPasien?.nama_pasien
            txtAlamatPasien.text    = mPasien?.alamat_pasien
            
            btnTambah.isHidden      = true
        }else{
            
            btnHapus.isHidden       = true
            btnEdit.isHidden        = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnActHapusPasien(_ sender: Any) {
        DetailViewController.delegate?.callbackAction(pasien: mPasien!, action: "delete", idx: mIdx!)
        self.dismiss(animated: true, completion: {})
    }
    
    @IBAction func btnActEditPasien(_ sender: Any) {
        DetailViewController.delegate?.callbackAction(pasien: mPasien!, action: "edit", idx: mIdx!)
        self.dismiss(animated: true, completion: {})
    }
    
    @IBAction func btnActionTambahPasien(_ sender: Any) {
        DetailViewController.delegate?.callbackAction(pasien: mPasien!, action: "add", idx: mIdx!)
        self.dismiss(animated: true, completion: {})
        
    }
    
    @IBAction func btnActKeluar(_ sender: Any) {
        self.dismiss(animated: true, completion: {})
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
