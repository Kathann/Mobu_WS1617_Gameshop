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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "actionKategorie" {
            let detailVC: KategorieAuswahlViewController? = segue.destination as? KategorieAuswahlViewController
            let cell: UITableViewCell? = sender as? UITableViewCell
            
            if cell != nil && detailVC != nil {
                detailVC!.contentText = cell!.textLabel!.text
            }
        }
        
        if segue.identifier == "pcKategorie" {
            let detailVC: KategoriePCViewController? = segue.destination as? KategoriePCViewController
            let cell: UITableViewCell? = sender as? UITableViewCell
            
            if cell != nil && detailVC != nil {
                detailVC!.contentText = cell!.textLabel!.text
            }
        }
        
        if segue.identifier == "rpgKategorie" {
            let detailVC: KategorieRPGViewController? = segue.destination as? KategorieRPGViewController
            let cell: UITableViewCell? = sender as? UITableViewCell
            
            if cell != nil && detailVC != nil {
                detailVC!.contentText = cell!.textLabel!.text
            }
        }
        
        if segue.identifier == "simulationKategorie" {
            let detailVC: KategorieSimulationViewController? = segue.destination as? KategorieSimulationViewController
            let cell: UITableViewCell? = sender as? UITableViewCell
            
            if cell != nil && detailVC != nil {
                detailVC!.contentText = cell!.textLabel!.text
            }
        }
    }
    

}
extension KategorienViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
//        if indexPath.row == 0{
//            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "actionKategorie")
//            
//           // cell!.textLabel?.text = "Zeile \(indexPath.row + 1)"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//        else if indexPath.row == 1{
//            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "pcKategorie")
//            
//           // cell!.textLabel?.text = "Point & Click"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//        else if indexPath.row == 2{
//            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "rpgKategorie")
//            
//           // cell!.textLabel?.text = "RPG"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//        else if indexPath.row == 3{
//            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "simulationKategorie")
//            
//           // cell!.textLabel?.text = "Simulation"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//       else  if indexPath.row == 4{
//           var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "sportsKategorie")
//            
//           // cell!.textLabel?.text = "Sports"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//        else if indexPath.row == 5{
//           var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "strategieKategorie")
//            
//          //  cell!.textLabel?.text = "Strategie"
//            if cell == nil {
//                cell = UITableViewCell(style: .default, reuseIdentifier: "default")
//            }
//            return cell!
//        }
//        
//        else{
//            let cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "defaultCell")
//            cell!.textLabel?.text = "Zeile \(indexPath.row + 1)"
//            return cell!
//        }
        if indexPath.row == 0{
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "defaultCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "defaultCell")
        }

        cell!.textLabel?.text = "Action"
        
        
        return cell!
        }
            
        if indexPath.row == 1{
            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "pcKategorieCell")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "pcKategorieCell")
            }
            
            cell!.textLabel?.text = "Point & Click"
            
            
            return cell!
        }
        if indexPath.row == 2{
            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "rpgKategorieCell")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "rpgKategorieCell")
            }
            
            cell!.textLabel?.text = "RPG"
            
            
            return cell!
        }
            
        if indexPath.row == 3{
            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "simulationKategorieCell")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "simulationKategorieCell")
            }
            
            cell!.textLabel?.text = "Simulation"
            
            
            return cell!
        }
        else{
            
            var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "defaultCell")
            
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "defaultCell")
            }
            
            cell!.textLabel?.text = "Zeile \(indexPath.row + 1)"
            
            
            return cell!
            
        }
    }
    
}
