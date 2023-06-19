//
//  Model.swift
//  Tarea Final Nivel 1
//
//  Created by Randy Morales on 9/6/23.
//

import Foundation

struct ToDosModel: Decodable{
    let userID: Int
    let id: Int
    let title: String
    let completed: Bool
}

