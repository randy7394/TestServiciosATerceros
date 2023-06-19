//
//  SecondViewController.swift
//  Tarea Final Nivel 1
//
//  Created by Randy Morales on 30/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var upperView: UIView! 
    @IBOutlet var churchPhoto: UIImageView! {
        didSet {
            churchPhoto.accessibilityLabel = "Foto de la iglesia"
        }
    }
    @IBOutlet var churchName: UILabel! {
        didSet {
            churchName.accessibilityLabel = "Nombre de la iglesia"
        }
    }
    @IBOutlet var churchRatingStackView: UIStackView! {
        didSet {
            churchRatingStackView.accessibilityLabel = "Rating"
        }
    }
    
    @IBOutlet var weatherStackView: UIStackView! {
        didSet {
            weatherStackView.accessibilityLabel = "Weather"
        }
    }
    
    @IBOutlet var travelPlanStackView: UIStackView! {
        didSet {
            travelPlanStackView.accessibilityLabel = "Travel planner"
        }
    }
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.accessibilityLabel = "Button"
        }
    }
    @IBOutlet var turismoLabel: UILabel! {
        didSet {
            turismoLabel.accessibilityLabel = "Button"
        }
    }
    @IBOutlet var longDescriptionLabel: UILabel! {
        didSet {
            longDescriptionLabel.accessibilityLabel = "Descripcion de la Iglesia"
        }
    }
    
    var nameSecondVC = String()
    var photoSecondVC = UIImage()
    var descriptionSecondVC = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        churchName.text = nameSecondVC
        churchPhoto.image = photoSecondVC
        longDescriptionLabel.text = descriptionSecondVC
        self.upperView.layer.cornerRadius = self.upperView.frame.size.width / 13
        self.churchPhoto.layer.cornerRadius = self.churchPhoto.frame.size.width / 13
    }

}
