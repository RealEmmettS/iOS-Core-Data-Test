//
//  tableView Code.swift
//  Core Data Test
//
//  Created by Emmett Shaughnessy on 10/21/21.
//

import Foundation
import UIKit

// MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
  
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
    
  //MARK: Using CoreData to fill a tableView
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
      
      let item = items[indexPath.row]
      
      cell.textLabel?.text = item.value(forKeyPath: "name") as? String
      return cell
      
  }
    
    
    
    
}

