//
//  DetailViewController.swift
//  Mobu Gameshop WS1617
//
//  Created by Nathalie Kroj on 02.01.17.
//  Copyright © 2017 fhkl. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contentText: String?
    var headline: String?
    
    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if contentText != nil {
            self.contentLabel.text = contentText!
        }
        
        if headline != nil {
            self.title = headline!
        }

        // Do any additional setup after loading the view.
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
