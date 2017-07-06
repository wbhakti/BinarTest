//
//  ClsPasien.swift
//  Binar
//
//  Created by Software Development 7 - Mac 2 on 7/6/17.
//  Copyright © 2017 Software Development 7 - Mac 2. All rights reserved.
//

import Foundation

class ClsPasien {
    var id_pasien: String!
    var nama_pasien: String!
    var alamat_pasien: String!
    
    
    required init?(_id_pasien: String,_nama_pasien: String,_alamat_pasien: String) {
        id_pasien       = _id_pasien
        nama_pasien     = _nama_pasien
        alamat_pasien   = _alamat_pasien
    }
    

}
