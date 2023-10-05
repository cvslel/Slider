//
//  ViewController.swift
//  Slider
//
//  Created by Cenker Soyak on 2.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @objc let slider = UISlider()
    var sliderValue = 0
    let sliderValueLabel = UILabel()
    var image = UIImageView()
    var images = ["pop1","pop2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()

    }

    func createUI(){
        
        view.backgroundColor = .white
        
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        slider.addTarget(self, action: #selector(sliderMoved), for: UIControl.Event.valueChanged)
        view.addSubview(slider)
        slider.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-90)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-30)
    }
        sliderValueLabel.text = "Current Value: "
        sliderValueLabel.text = String(sliderValue)
        sliderValueLabel.textAlignment = .center
        sliderValueLabel.textColor = .black
        view.addSubview(sliderValueLabel)
        sliderValueLabel.snp.makeConstraints { make in
            make.top.equalTo(slider.snp.top).offset(40)
            make.left.equalTo(view.snp.left).offset(50)
            make.right.equalTo(view.snp.right).offset(-50)
            make.height.equalTo(40)
        }
        image = UIImageView()
        view.addSubview(image)
        image.image = UIImage(named: "pop1")
        image.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(40)
            make.left.equalTo(view.snp.left).offset(5)
            make.right.equalTo(view.snp.right).offset(-5)
            make.height.equalTo(400)
        }
    }
        
    @objc func sliderMoved(_ sender: UISlider){
        sliderValueLabel.text = "Current Value: \(Int(slider.value))"
        sliderValue = Int(slider.value)
        print(sliderValue)
        if sliderValue < 50{
            image.image = UIImage(named: "pop1")
        } else if (sliderValue >= 50){
            image.image = UIImage(named: "pop2")
        }
    }
}
