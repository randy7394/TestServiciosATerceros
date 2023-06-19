//
//  TableView Model.swift
//  Tarea Final Nivel 1
//
//  Created by Randy Morales on 29/3/23.
//

import Foundation
import UIKit

struct Churches {
    
    var name : String
    var shortDescription : String
    var longDescription : String
    var photo : UIImage
    
    init(name: String, shortDescription: String, longDescription : String, photo: UIImage) {
        self.name = name
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.photo = photo
    }
}



let churchesArray = [
    Churches(name: "Catedral de Managua", shortDescription: "Es la sede de la Arquidiócesis de Managua", longDescription: "La Catedral Metropolitana de la Inmaculada Concepción de María de Managua o simplemente Catedral de Managua, es la sede de la Arquidiócesis de Managua y está dedicada desde 1993 a la advocación mariana de la Inmaculada Concepción de María, patrona de Nicaragua. Se encuentra en la ciudad de Managua, departamento de Managua, en Nicaragua.", photo: UIImage (named:"CatedralManagua")!),
    Churches(name: "Catedral de León", shortDescription: "También conocida como Basílica Catedral de la Asunción de León", longDescription: "La Catedral de León, también conocida como Basílica Catedral de la Asunción de León, y Catedral de la luz, cuyo nombre oficial es Insigne y Real Basílica Catedral de la Asunción de la Bienaventurada Virgen María, es una catedral de la iglesia católica de construcción barroca colonial ubicada en la ciudad de León, Nicaragua. En León Viejo tuvo los nombres de Nuestra Señora de la Piedad y Nuestra Señora de la Gracia.", photo: UIImage (named:"CatedralLeon")!),
    Churches(name: "Catedral de Matagalpa", shortDescription: "La Catedral de San Pedro​ o simplemente Catedral de Matagalpa", longDescription: "Es el nombre que recibe un edificio religioso afiliado a la Iglesia católica que se encuentra en la ciudad de Matagalpa3​ capital del departamento del mismo nombre, en el país centroamericano de Nicaragua.4​ Como su nombre lo indica esta dedicada a San Pedro uno de los apostóles de Jesús.", photo: UIImage (named:"CatedralMatagalpa")!),
    Churches(name: "Catedral de Granada", shortDescription: "En ella se encuentra la sede episcopal de la Diócesis de Granada. Su obispo es Jorge Solórzano Pérez", longDescription: "El primer templo de la catedral fue construido alrededor de 1525 con tapicel y rafaz de piedra, ladrillo, cal y techo de paja. Para 1578 la iglesia ya se había quemado en dos ocasiones. Siete años después, en 1585, se le empieza a llamar como “La Bonita Iglesia”. El segundo templo fue construido alrededor de 1751 con cal, piedra y ladrillo, formado con cuatro campanillas, un reloj de horas y media, con tres naves.", photo: UIImage (named:"CatedralGranada")!),
    Churches(name: "Catedral de Estelí", shortDescription: "Está dedicada a la advocación mariana de Nuestra Señora del Rosario de Estelí", longDescription: "La Catedral Nuestra Señora del Rosario de Estelí, es la sede de la Diócesis de Estelí y está dedicada a la advocación mariana de Nuestra Señora del Rosario de Estelí, patrona de la Diócesis. Se encuentra ubicada en la ciudad de Estelí, Nicaragua. Tiene un estilo Neoclàsico y moderno, fue consagrada como sede de la Dióceis el 17 de diciembre de 1962 por el papa Juan XXIII.", photo: UIImage (named:"CatedralEsteli")!)
    ]
