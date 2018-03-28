//
//  ViewController.swift
//  FavoriteCharacter
//
//  Created by Rui Mao on 3/28/18.
//  Copyright © 2018 Rui Mao. All rights reserved.
//

import UIKit



class MainViewController: UIViewController {
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chooseButton.layer.cornerRadius = 5
        
    }

    @IBAction func ChooseButtonTapped(_ sender: UIButton) {
        let destVC = storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
        destVC.selectionDelegate = self
        present(destVC, animated: true, completion: nil)
        
    }
}

extension MainViewController: CharacterSelectionDelegate {
    func chooseCharacter(image: UIImage, name: String, color: UIColor) {
        mainImageView.contentMode = .scaleAspectFit
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
        chooseButton.backgroundColor = .black
        chooseButton.setTitleColor(.white, for: .normal)
    }
}

