//
//  ViewController.swift
//  rock_scissor_paper
//
//  Created by 김민서 on 2017. 5. 17..
//  Copyright © 2017년 minseo. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    let randomSource = GKARC4RandomSource()

    @IBOutlet weak var computerImgView: UIImageView!
    @IBOutlet weak var playerImgView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapstartBtn() {
        computerImgView.image = UIImage(named: "rock.png")
        playerImgView.image = UIImage(named: "rock.png")
        messageLabel.text = "가위 바위..."
    }

    @IBAction func tapScissors() {
        playerImgView.image = UIImage(named: "scissors.png")
        doComputer(0)
    }
    @IBAction func tapRock() {
        playerImgView.image = UIImage(named: "rock.png")
        doComputer(1)
    }
    @IBAction func tapPaper() {
        playerImgView.image = UIImage(named: "paper.png")
        doComputer(2)
    }
    
    func doComputer(_ player : Int) {
        let computer = randomSource.nextInt(upperBound : 3)
        var msg = " "
        switch computer {
        case 0:
            computerImgView.image = UIImage(named: "scissors.png")
            switch player {
            case 0:
                msg = "비겼어요"
            case 1:
                msg = "이겼어요!"
            case 2:
                msg = "졌어요 ㅠ"
            default:
                break;
            }
        case 1 :
            computerImgView.image = UIImage(named: "rock.png")
            switch player {
            case 0:
                msg = "졌어요 ㅠ"
            case 1:
                msg = "비겼어요"
            case 2:
                msg = "이겼어요!"
            default:
                break;
            }
        case 2 :
            computerImgView.image = UIImage(named: "paper.png")
            switch player {
            case 0:
                msg = "이겼어요!"
            case 1:
                msg = "졌어요 ㅠ"
            case 2:
                msg = "비겼어요"
            default:
                break;
            }
        default:
            break;
        }
        messageLabel.text = msg
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

