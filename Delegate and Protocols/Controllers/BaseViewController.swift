//
//  BaseViewController.swift
//  Delegate and Protocols
//
//  Created by Shahid Ghafoor on 26/02/2021.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }
    
    @IBAction func chooseButtonSide(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionBoard") as! SelectionViewController
        
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}


extension BaseViewController: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLable.text = name
        view.backgroundColor = color
    }
}
