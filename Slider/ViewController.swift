//
//  ViewController.swift
//  Slider
//
//  Created by Cenker Soyak on 2.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createUI()

    }

    func createUI(){
        
        view.backgroundColor = .white
        
        let slider = UISlider()
        slider.minimumValue = 0
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        view.addSubview(slider)
        slider.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(40)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-30)
    }
        
    }
    
}

