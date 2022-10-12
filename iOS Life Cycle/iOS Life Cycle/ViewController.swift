//
//  ViewController.swift
//  iOS Life Cycle
//
//  Created by Phanuwat Phoowichai on 12/10/2565 BE.
//

import UIKit

class AViewController: UIViewController {

    @IBOutlet weak var goToBScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    @IBAction func onButtonClick(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let bViewController = storyboard.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        self.navigationController?.pushViewController(bViewController, animated: true)
    }
}

class BViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("B: viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("B: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("B: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("B: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("B: viewDidDisappear")
    }

}
