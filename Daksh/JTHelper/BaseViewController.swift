//
//  BaseViewController.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 07/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    let backButton :UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named:"back_button"), for: .normal)
        button.setImage(UIImage(named:"back_button"), for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 40)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setNavigationUI() {
        self.navigationController?.navigationBar.backgroundColor = UIColor.dakshThemeColor()
        self.navigationController?.navigationBar.barTintColor = UIColor.dakshThemeColor()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func setBackButton() {
        let customBarItem = UIBarButtonItem(customView: backButton)
        self.navigationItem.leftBarButtonItem = customBarItem
    }
    
    @objc func backButtonTapped() {
        if self.navigationController?.viewControllers.count == 1 {
            self.navigationController?.dismiss(animated: true, completion: nil)
        }
        self.navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
