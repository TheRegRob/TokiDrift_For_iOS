//
//  ChooseMenu.swift
//  TokiDrift
//
//  Created by Robin Reggiani on 13/01/22.
//  Copyright © 2022 Robin Reggiani. All rights reserved.
//

import UIKit

class ChooseMenu: UIViewController {
    
    @IBOutlet weak var pb_BackGround2: UIImageView!
    @IBOutlet weak var ChooseBar: UINavigationItem!
    @IBOutlet weak var LunchButton: UIButton!
    @IBOutlet weak var DinnerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LunchButton.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0, alpha: 0)
        title = "TokiDrift"
        view.backgroundColor = .systemPink
        ConfigureItems()
        let tmpBackGround = UIImage (named: "SushiPxArt")
        pb_BackGround2.bounds = view.bounds
        pb_BackGround2.contentMode = UIView.ContentMode.scaleAspectFill
        pb_BackGround2.clipsToBounds = true
        pb_BackGround2.center = view.center
        pb_BackGround2.image = tmpBackGround
        self.view.sendSubviewToBack(pb_BackGround2)
        ChooseBar.titleView?.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    override func viewDidLayoutSubviews() {
        /*super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 10, y:10, width: view.frame.size.width - 20, height: view.frame.size.height - 20))
        scrollView.backgroundColor = .green
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2000)*/
    }
    
    @IBAction func TouchBtn(_ sender: UIButton) {
        //let MenuVC = TokiDrift.MenuPage
        let StoryBoard = UIStoryboard(name: "Main", bundle: nil)
        //let myVC = StoryBoard.instantiateViewController(withIdentifier: "ID_MenuPage")
        let myVC = StoryBoard.instantiateViewController(withIdentifier: "ID_TabHub") as! UITabBarController
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        if (sender == LunchButton) {
            let navVC = UINavigationController(rootViewController: myVC)
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        } else {
            
        }
    }
    
    private func ConfigureItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self, action: nil)
        
    }
}
