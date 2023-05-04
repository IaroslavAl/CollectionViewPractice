//
//  DetailPhotoViewController.swift
//  CollectionViewPractice
//
//  Created by Iaroslav Beldin on 04.05.2023.
//

import UIKit

final class DetailPhotoViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction() {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
        present(shareController, animated: true)
    }
}
