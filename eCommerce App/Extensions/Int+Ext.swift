//
//  Int+Ext.swift
//  eCommerce App
//
//  Created by Bruna Fernanda Drago on 27/10/20.
//

import Foundation

extension Int {
    
    func formatToCurrencyString() -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        
        let nsnum = NSNumber(integerLiteral: self/100)
        return formatter.string(from: nsnum) ?? "$$$"
    }
     
    
}
