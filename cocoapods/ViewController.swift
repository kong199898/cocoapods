//
//  ViewController.swift
//  cocoapods
//
//  Created by ng chikong on 16/1/2021.
//

import UIKit
import MaterialComponents.MaterialAppBar
import MaterialComponents.MaterialActionSheet

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let button = UIButton(frame: CGRect(x: (view.frame.size.width-220)/2, y: 100, width: 220, height: 50))
        button.setTitle("Alert", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didTapAlert), for: .touchUpInside)
        view.addSubview(button)
        
        let sheetButton = UIButton(frame: CGRect(x: (view.frame.size.width-220)/2, y: 200, width: 220, height: 50))
        sheetButton.setTitle("ActionSheet", for: .normal)
        sheetButton.backgroundColor = .systemBlue
        sheetButton.addTarget(self, action: #selector(didTapAction), for: .touchUpInside)
        view.addSubview(sheetButton)
    }
    
    @objc private func didTapAlert(){
        
    }
    
    @objc private func didTapAction(){
        let actionSheet = MDCActionSheetController(title: "Action Sheet",
                                                   message: "Secondary line text")
        let actionOne = MDCActionSheetAction(title: "Home",
                                             image: UIImage(named: "Home"),
                                             handler: { _ in
                                                print("Home action") })
        let actionTwo = MDCActionSheetAction(title: "Email",
                                             image: UIImage(named: "Email"),
                                             handler: { _ in
                                                print("Email action") })
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)

        present(actionSheet, animated: true, completion: nil)
    }
    
}

