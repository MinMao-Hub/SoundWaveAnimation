//
//  ViewController.swift
//  SoundWaveAnimation
//
//  Created by gyh on 2021/10/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        let view = SoundWaveAnimationView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.waveCount = 5
        view.waveWidth = 15
        view.waveHeight = 80
        view.waveCornerRadius = 7.5
        view.backgroundColor = .red
        view.center = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height / 2)
        self.view.addSubview(view)
        view.startAnimation()
        
        
        let view1 = SoundWaveAnimationView(frame: CGRect(x: 100, y: 100, width: 22, height: 22))
        view1.waveCount = 3
        view1.animationType = .bottom
        view1.waveWidth = 5
        view1.waveHeight = 22
        view1.waveDuration = 0.6
        view1.instanceDelay = 0.2
        self.view.addSubview(view1)
        view1.startAnimation()
    }
}

