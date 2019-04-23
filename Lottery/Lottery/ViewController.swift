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
        showNumbers(for: .megasena)
    }
    
    func showNumbers(for type: GameType) {
        labelGameType.text = type.rawValue
        
        var game: [Int] = []
        
        switch type {
            case .megasena:
                game = 6 >-< 60
                collectionBalls.last?.isHidden = false
            
            case .quina:
                game = 5 >-< 80
                collectionBalls.last?.isHidden = true
        }
        
        for (index, game) in game.enumerated() {
            collectionBalls[index].setTitle("\(game)", for: .normal)
        }
    }
    
    @IBAction func actionGenerateGame() {
        switch segmentedControlGameType.selectedSegmentIndex {
            case 0:
                showNumbers(for: .megasena)
            
            default:
                showNumbers(for: .quina)
        }
    }
}

