//
//  AuthViewController.swift
//  MentorshipAppV2
//
//  Created by Joseph Ching on 2022-07-30.
//

import UIKit

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let vc1 = TestViewController()
//        vc1.title = "Test"
//        vc1.navigationItem.largeTitleDisplayMode = .always
//        
//        let nav1 = UINavigationController(rootViewController: vc1)
//        nav1.navigationBar.prefersLargeTitles = true
//        
//        setViewControllers([vc1], animated: false)
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let l = UILabel()
        l.text = "TEST"
        view.addSubview(l)
        
        print("XSONDONDOI")
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
