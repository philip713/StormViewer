//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Philip Janzel Paradeza on 2022-08-09.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    var stormImg : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = stormImg
        if let imageToLoad = stormImg {
            img.image  = UIImage(named: imageToLoad)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
