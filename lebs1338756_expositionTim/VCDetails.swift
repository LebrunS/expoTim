//
//  VCDetails.swift
//  lebs1338756_expositionTim
//
//  Created by Etudiant on 17-11-03.
//  Copyright © 2017 Etudiant. All rights reserved.
//

import UIKit

class VCDetails: UIViewController {

    @IBAction func retourMenu(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var informationsAfficheCourante =  Array<Array<String>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("# Nous avons reçu les données suivantes:\(informationsAfficheCourante)\n")
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
