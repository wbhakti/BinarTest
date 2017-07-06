//
//  ShareDelegate.swift
//  Binar
//
//  Created by Software Development 7 - Mac 2 on 7/6/17.
//  Copyright © 2017 Software Development 7 - Mac 2. All rights reserved.
//

import Foundation

protocol ShareDelegate {
    
    func callbackAction(pasien: ClsPasien,action: String, idx : Int)
    
}
