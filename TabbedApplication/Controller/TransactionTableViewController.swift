//
//  TransactionTableViewController.swift
//  TabbedApplication
//
//  Created by Avinash Reddy on 5/7/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import UIKit

class TransactionTableViewController: UITableViewController {
    
    // MARK: - Properties
    var transactionDataArray: [Transaction] = []
    
    var transactionDataTransportation = [Transaction]()
    var transactionDataFood = [Transaction]()
    var transactionDataGroceries = [Transaction]()
    
    // Date Formatter
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // date formatter
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "MM/dd/yy"
        
        // Get Transaction Data
        transactionDataArray = Transaction.getTransactionData()
        print(transactionDataArray[0])
        
        for index in 0...1 {
            transactionDataTransportation.append(transactionDataArray[index])
        }
        
        for index in 2...2 {
            transactionDataFood.append(transactionDataArray[index])
        }
        
        for index in 3..<transactionDataArray.count {
            transactionDataGroceries.append(transactionDataArray[index])
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0 {
            return transactionDataTransportation.count
        } else if section == 1 {
            return transactionDataFood.count
        } else {
            return transactionDataGroceries.count
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Transportation"
        } else if section == 1 {
            return "Food"
        } else {
            return "Groceries"
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! CustomTransactionTableViewCell

        // Configure the cell...
        
        if indexPath.section == 0 {
            let transaction = transactionDataTransportation[indexPath.row]
            cell.transactionTitleLabel.text = transaction.transactionTitle
            cell.transactionDateLabel.text = dateFormatter.string(from: transaction.transactionDate)
            cell.transactionPriceLabel.text = transaction.transactionPrice
        } else if indexPath.section == 1 {
            let transaction = transactionDataFood[indexPath.row]
            cell.transactionTitleLabel.text = transaction.transactionTitle
            cell.transactionDateLabel.text = dateFormatter.string(from: transaction.transactionDate)
            cell.transactionPriceLabel.text = transaction.transactionPrice
        } else {
            let transaction = transactionDataGroceries[indexPath.row]
            cell.transactionTitleLabel.text = transaction.transactionTitle
            cell.transactionDateLabel.text = dateFormatter.string(from: transaction.transactionDate)
            cell.transactionPriceLabel.text = transaction.transactionPrice
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
