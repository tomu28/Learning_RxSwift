//
//  ViewController.swift
//  Learning_RxSwift
//
//  Created by 小幡 十矛 on 2019/03/05.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//  reference https://codezine.jp/article/detail/11051?p=3

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var sampleButton: UIButton!
    @IBOutlet weak var sampleSwitch: UISwitch!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Rxを利用してUIのイベントから処理を行う例
        sampleButton.rx.tap.subscribe(
            onNext: {
                print("tap")
            }
        ).disposed(by: disposeBag)
    
        sampleSwitch.rx.isOn.subscribe(
            onNext: { bool in
                print( bool ? " ON " : " OFF " )
            }
        ).disposed(by: disposeBag)

        }

}
