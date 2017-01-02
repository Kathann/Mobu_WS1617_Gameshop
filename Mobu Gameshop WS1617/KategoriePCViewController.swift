//
//  KategoriePCViewController.swift
//  Mobu Gameshop WS1617
//
//  Created by Student on 02.01.17.
//  Copyright © 2017 fhkl. All rights reserved.
//

import UIKit

class KategoriePCViewController: UIViewController {
    
    var contentText: String?
    
    @IBOutlet weak var contentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if self.contentText != nil {
         self.contentLabel.text = contentText!
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
