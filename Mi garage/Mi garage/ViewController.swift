//
//  ViewController.swift
//  Mi garage
//
//  Created by Guillermo on 18/6/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    var myGarage : [Car] = []
    var myCar : Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    myCar = Car(cv: 90, marca: "Renault", modelo: "Clio", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) , kms: 80.500, image: nil)
    myGarage.append(myCar)
    myCar = Car(cv: 80, marca: "Citroen", modelo: "Jumpy", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), kms: 180000, image: #imageLiteral(resourceName: "citroen"))
    myGarage.append(myCar)
        myCar = Car(cv: 300, marca: "Ferrari", modelo: "Italia", color: #colorLiteral(red: 1, green: 0.2374378147, blue: 0.1185086881, alpha: 1), kms: 4000, image: #imageLiteral(resourceName: "ferrari") )
    myGarage.append(myCar)
        myCar = Car(cv: 60, marca: "Fiat", modelo: "500", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), kms: 200000, image:#imageLiteral(resourceName: "fiat"))
    myGarage.append(myCar)
        
      updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateView() {
        if myCar.image != nil {
            self.imageView.image = myCar.image
        }
        self.label1.text = "\(myCar.marca) \(myCar.modelo)"
        self.label2.text = "CV :\(myCar.cv!)"
        self.label3.text = "KMS :\(myCar.kms)"
        
        self.view.backgroundColor = myCar.color
        
}

}
