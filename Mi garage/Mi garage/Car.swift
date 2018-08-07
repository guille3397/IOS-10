//
//  Car.swift
//  Mi garage
//
//  Created by Guillermo on 18/6/18.
//  Copyright © 2018 Guillermo. All rights reserved.
//

import Foundation
import UIKit

class Car: NSObject {
    var marca = String()
    var cv : Int!
    var modelo = String()
    var color = UIColor()
    var kms = Double()
    var image : UIImage?
    
    override var description: String {
        return " Mi coche es un \(marca) \(modelo), tiene \(cv!)caballos de potencia y llevo hechos \(kms) Kms"
    }
    
    /* constructor por defecto*/
    override init() {
        marca = "desconocida"
        cv = 0
        modelo = "desconocido"
        color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        kms = 0.0
        
    
    }
    
    init(cv : Int, marca : String, modelo : String, color : UIColor, kms : Double, image : UIImage? ) {
        self.cv = cv
        self.marca = marca
        self.modelo = modelo
        self.color = color
        self.kms = kms
        
        
        if let image = image {
        self.image = image
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
