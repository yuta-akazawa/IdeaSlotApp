//
//  ParentIdeaListViewController.swift
//  IdeaSlotApp
//
//  Created by yuta akazawa on 2018/09/24.
//  Copyright © 2018年 yuta akazawa. All rights reserved.
//

import UIKit

class ParentIdeaListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setPlusButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationBarItem()
        setNavigationBarTitle(title: "Ideas")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func ToIdeasItemViewController(){
        self.performSegue(withIdentifier: "ToIdeasItem", sender: nil)
    }

    func setPlusButton(){
        let plusButtonImage = UIImage(named: "icons8-plus-48")
        let plusButton = UIButton()
        plusButton.frame = CGRect(x:300, y:600, width:50, height:50)
        plusButton.setImage(plusButtonImage, for: .normal)
        plusButton.imageView?.contentMode = .scaleAspectFit
        plusButton.contentHorizontalAlignment = .fill
        plusButton.contentVerticalAlignment = .fill
        self.view.addSubview(plusButton)
        plusButton.addTarget(self, action: #selector(ParentIdeaListViewController.ToIdeasItemViewController), for: .touchUpInside)
    }
}
