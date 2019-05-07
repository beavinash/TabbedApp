//
//  Transaction.swift
//  TabbedApplication
//
//  Created by Avinash Reddy on 5/7/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import Foundation

struct Transaction {
    
    let transactionTitle: String
    let transactionDate: Date
    let transactionPrice: String
    
    
    static func getTransactionData() -> [Transaction] {
        
        let transaction1 = Transaction(transactionTitle: "Trasaction 1", transactionDate: Date(timeIntervalSinceNow: 1000000), transactionPrice: "$34.00")
        
        let transaction2 = Transaction(transactionTitle: "Transaction 2", transactionDate: Date(timeIntervalSinceNow: 2000000), transactionPrice: "$40.00")
        
        let transaction3 = Transaction(transactionTitle: "Transaction 3", transactionDate: Date(timeIntervalSinceNow: 3000000), transactionPrice: "$50.00")
        
        let transaction4 = Transaction(transactionTitle: "Transaction 4", transactionDate: Date(timeIntervalSinceNow: 4000000), transactionPrice: "$20.00")
        
        return [transaction1, transaction2, transaction3, transaction4]
    }
}
