//
//  ViewController.swift
//  lebs1338756_expositionTim
//
//  Created by Etudiant on 17-11-02.
//  Copyright © 2017 Etudiant. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var CVAffiches: UICollectionView!
    var tableauDonnees:Array<Array<String>> = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pathFichierPlist = Bundle.main.path(forResource: "lesDonnes", ofType: "plist")!
        tableauDonnees = NSArray(contentsOfFile: pathFichierPlist) as! Array
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK:- Méthodes du protocole UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableauDonnees.count
    } // numberOfItemsInSection
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var celluleCourante:CVCAffiches

        celluleCourante = collectionView.dequeueReusableCell(withReuseIdentifier: "modeleCelluleAffiche", for:indexPath) as! CVCAffiches
        
        celluleCourante.afficheNom.text = tableauDonnees[indexPath.row][0]
        celluleCourante.afficheImage.image = UIImage(named: tableauDonnees[(indexPath as NSIndexPath).row][1])
        
        return celluleCourante
    } // cellForItemAt indexPath
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let selection = CVAffiches.indexPath(for: sender as! UICollectionViewCell)!.row
        //print("# Exécution de la méthode: prepareForSegue pour la cellule numéro: \(selection)\n")
        
        //let destination = segue.destination as! VCDetails
        //destination.informationsAfficheCourante = tableauDonnee[?][selection]
    } // prepare(for segue: ...)
    
    
}

