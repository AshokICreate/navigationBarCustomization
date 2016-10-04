//
//  ViewController.swift
//  customizeNavigationBarAppearance
//
//  Created by Ashok on 10/4/16.
//  Copyright © 2016 Ashok. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let segueSecondViewControlller = "segueSecondViewControlller"
    
    func addTapped() {
        
    }

    func playTapped() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(FirstViewController.addTapped))
//        let play = UIBarButtonItem(title: "Play", style: .plain, target: self, action: #selector(FirstViewController.playTapped))
//        
//        navigationItem.rightBarButtonItems = [play, add]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "First View Controller"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func onClick(_ sender: UIButton) {
    
        performSegue(withIdentifier: segueSecondViewControlller, sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        title = nil
       
        if  segue.identifier == segueSecondViewControlller {
           let destinationViewController = segue.destination as! SecondViewController
           destinationViewController.title = "Second View Controller"
        }
      
    }


}

