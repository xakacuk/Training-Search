//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by Евгений Бейнар on 21.12.16.
//  Copyright © 2016 Евгений Бейнар. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate: class {
  func menuViewControllerSendSupportEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
  
  weak var delegate: MenuViewControllerDelegate?

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    if indexPath.row == 0 {
      delegate?.menuViewControllerSendSupportEmail(self)
    }
  }
}
