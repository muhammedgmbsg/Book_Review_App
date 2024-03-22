//
//  ViewControllerDetails.swift
//  SimpsonApp
//
//  Created by Muhammed on 22.03.2024.
//

import UIKit

class ViewControllerDetails: UIViewController {
    var selectedSimpson : Models

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        jobLabel.text = selectedSimpson.job
        imageView.image = selectedSimpson.img    }
    

   
}
