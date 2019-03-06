//
//  ViewController.swift
//  Learning_RxSwift
//
//  Created by 小幡 十矛 on 2019/03/05.
//  Copyright © 2019 Tomu Obata. All rights reserved.
//  reference https://codezine.jp/article/detail/11051?p=2

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Observableを生成
        let helloObservable: Observable<String> = Observable.from(["H","E","L","L","O"])
        // メソッドチェーンver
        helloObservable.subscribe(
            onNext: { value in print(value) },
            onError: { error in print(error.localizedDescription) },
            onCompleted: { print("completed") }
            ).disposed(by: DisposeBag())
    }


}

