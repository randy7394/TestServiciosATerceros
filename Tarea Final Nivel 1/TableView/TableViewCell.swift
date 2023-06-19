//
//  TableViewCell.swift
//  Tarea Final Nivel 1
//
//  Created by Randy Morales on 29/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var cellOuterView: UIView!
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.accessibilityLabel = "Nombre de la iglesia"
        }
    }
    @IBOutlet var shortDescriptionLabel: UILabel! {
        didSet {
            shortDescriptionLabel.accessibilityLabel = "Descripcion corta de la iglesia"
        }
    }
    @IBOutlet var churchPhoto: UIImageView! {
        didSet {
            churchPhoto.accessibilityLabel = "Foto de la iglesia"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellOuterView.layer.cornerRadius = self.cellOuterView.frame.size.width / 30
        self.churchPhoto.layer.cornerRadius = self.churchPhoto.frame.size.width / 10
    }    
}

