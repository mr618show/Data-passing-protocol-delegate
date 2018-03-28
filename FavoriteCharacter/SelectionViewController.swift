//
//  PickingCharacterViewController.swift
//  FavoriteCharacter
//
//  Created by Rui Mao on 3/28/18.
//  Copyright © 2018 Rui Mao. All rights reserved.
//

import UIKit
protocol CharacterSelectionDelegate {
    func chooseCharacter(image: UIImage, name: String, color: UIColor)
}

class SelectionViewController: UIViewController {
    var selectionDelegate: CharacterSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ChooseMario(_ sender: UIButton) {
        selectionDelegate.chooseCharacter(image: UIImage(named: "Mario")!, name: "Mario", color: .red)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ChooseLuigi(_ sender: UIButton) {
        selectionDelegate.chooseCharacter(image: UIImage(named: "Luigi")!, name: "Luigi", color: .green)
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
