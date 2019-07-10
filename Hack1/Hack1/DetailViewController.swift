//
//  DetailViewController.swift
//  Hack1
//
//  Created by Krishana on 22/04/19.
//  Copyright © 2019 ApostekBlr. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    var selectedImage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = selectedImage {
            picture.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false
    }

    

}
