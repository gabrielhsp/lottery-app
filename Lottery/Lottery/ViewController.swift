//
//  ViewController.swift
//  Lottery
//
//  Created by Gabriel Henrique Santos Pereira on 18/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelGameType: UILabel!
    @IBOutlet weak var segmentedControlGameType: UISegmentedControl!
    @IBOutlet var collectionBalls: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionGenerateGame() {
    }
}

