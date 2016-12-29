//
//  KategorienViewController.swift
//  Mobu Gameshop WS1617
//
//  Created by Student on 29.12.16.
//  Copyright © 2016 fhkl. All rights reserved.
//

import UIKit

class KategorienViewController: UIViewController
{

    @IBOutlet weak var kategorieTableView1: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.kategorieTableView1.dataSource = self
        self.kategorieTableView1.contentInset = UIEdgeInsets(top: -64, left: 0.0, bottom: 0.0, right: 0.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
extension KategorienViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "defaultCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "default")
        }
        
        
        cell!.textLabel?.text = "Zeile \(indexPath.row + 1)"
        
        
        return cell!
    }
    
}
