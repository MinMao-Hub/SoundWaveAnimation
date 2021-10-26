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
        
        do {
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 80, width: 70, height: 40))
            view.waveCount = 5
            view.animationType = .center
            view.waveWidth = 10
            view.waveHeight = 40
            view.waveDuration = 0.5
            view.instanceDelay = 0.1
            self.view.addSubview(view)
            view.startAnimation()
            
            
            
            let view1 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            view1.waveCount = 5
            view1.waveWidth = 15
            view1.waveHeight = 80
            view1.waveCornerRadius = 7.5
            view1.backgroundColor = .red
            view1.center = CGPoint(x: self.view.bounds.width / 2, y: 100)
            self.view.addSubview(view1)
            view1.startAnimation()
            
            
            let view2 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
            view2.waveCount = 3
            view2.animationType = .center
            view2.waveWidth = 5
            view2.waveHeight = 22
            view2.waveDuration = 0.6
            view2.instanceDelay = 0.2
            view2.center = CGPoint(x: self.view.bounds.width / 3.8, y: 100)
            self.view.addSubview(view2)
            view2.startAnimation()
            
            let view3 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 44, height: 22))
            view3.waveCount = 6
            view3.animationType = .center
            view3.waveWidth = 5
            view3.waveHeight = 22
            view3.waveDuration = 0.6
            view3.instanceDelay = 0.2
            view3.center = CGPoint(x: self.view.bounds.width / 4.2 * 3, y: 100)
            self.view.addSubview(view3)
            view3.startAnimation()
            
            let view4 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 60, height: 22))
            view4.waveCount = 7
            view4.animationType = .center
            view4.waveWidth = 5
            view4.waveHeight = 22
            view4.waveDuration = 0.3
            view4.instanceDelay = 0.3
            view4.center = CGPoint(x: self.view.bounds.width / 4.2 * 3 + 70, y: 100)
            self.view.addSubview(view4)
            view4.startAnimation()
        }
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 190, width: 70, height: 40))
            view.waveCount = 5
            view.animationType = .bottom
            view.waveWidth = 10
            view.waveHeight = 40
            view.waveDuration = 0.5
            view.instanceDelay = 0.1
            self.view.addSubview(view)
            view.startAnimation()
            
            let view1 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            view1.center = CGPoint(x: self.view.bounds.width / 2, y: 210)
            view1.waveCount = 5
            view1.animationType = .bottom
            view1.waveWidth = 15
            view1.waveHeight = 80
            view1.waveCornerRadius = 7.5
            view1.backgroundColor = .red
            self.view.addSubview(view1)
            view1.startAnimation()
            
            
            let view2 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
            view2.center = CGPoint(x: self.view.bounds.width / 3.8, y: 210)
            self.view.addSubview(view2)
            view2.waveCount = 3
            view2.animationType = .bottom
            view2.waveWidth = 5
            view2.waveHeight = 22
            view2.waveDuration = 0.6
            view2.instanceDelay = 0.2
            view2.startAnimation()
            
            let view3 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 44, height: 22))
            view3.center = CGPoint(x: self.view.bounds.width / 4.2 * 3, y: 210)
            view3.waveCount = 6
            view3.animationType = .bottom
            view3.waveWidth = 5
            view3.waveHeight = 22
            view3.waveDuration = 0.6
            view3.instanceDelay = 0.2
            self.view.addSubview(view3)
            view3.startAnimation()
            
            let view4 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 60, height: 22))
            view4.center = CGPoint(x: self.view.bounds.width / 4.2 * 3 + 70, y: 210)
            view4.waveCount = 7
            view4.animationType = .bottom
            view4.waveWidth = 5
            view4.waveHeight = 22
            view4.waveDuration = 0.3
            view4.instanceDelay = 0.3
            self.view.addSubview(view4)
            view4.startAnimation()
        }
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 310, width: 70, height: 40))
            view.waveCount = 5
            view.animationType = .top
            view.waveWidth = 10
            view.waveHeight = 40
            view.waveDuration = 0.5
            view.waveColor = .magenta
            view.instanceDelay = 0.1
            self.view.addSubview(view)
            view.startAnimation()
            
            let view1 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            view1.center = CGPoint(x: self.view.bounds.width / 2, y: 330)
            view1.waveCount = 5
            view1.animationType = .top
            view1.waveWidth = 15
            view1.waveHeight = 80
            view1.waveCornerRadius = 7.5
            view1.backgroundColor = .red
            self.view.addSubview(view1)
            view1.startAnimation()
            
            
            let view2 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
            view2.center = CGPoint(x: self.view.bounds.width / 3.8, y: 330)
            view2.waveCount = 3
            view2.animationType = .top
            view2.waveWidth = 5
            view2.waveHeight = 22
            view2.waveDuration = 0.6
            view2.instanceDelay = 0.2
            self.view.addSubview(view2)
            view2.startAnimation()
            
            let view3 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 44, height: 22))
            view3.center = CGPoint(x: self.view.bounds.width / 4.2 * 3, y: 330)
            view3.waveCount = 6
            view3.animationType = .top
            view3.waveWidth = 5
            view3.waveHeight = 22
            view3.waveDuration = 0.6
            view3.instanceDelay = 0.2
            self.view.addSubview(view3)
            view3.startAnimation()
            
            let view4 = SoundWaveAnimationView(frame: CGRect(x: 0, y: 0, width: 60, height: 22))
            view4.center = CGPoint(x: self.view.bounds.width / 4.2 * 3 + 70, y: 330)
            view4.waveCount = 7
            view4.animationType = .top
            view4.waveWidth = 5
            view4.waveHeight = 22
            view4.waveDuration = 0.3
            view4.instanceDelay = 0.3
            self.view.addSubview(view4)
            view4.startAnimation()
        }
        
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 0, width: 400, height: 100))
            view.center = CGPoint(x: self.view.bounds.width / 2, y: 450)
            view.waveCount = 16
            view.animationType = .bottom
            view.waveWidth = 20
            view.waveHeight = 80
            view.waveDuration = 0.3
            view.waveColor = .red
            view.instanceDelay = 0.1
            view.waveCornerRadius = 5
            self.view.addSubview(view)
            view.startAnimation()
        }
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 0, width: 400, height: 100))
            view.center = CGPoint(x: self.view.bounds.width / 2, y: 570)
            view.waveCount = 60
            view.animationType = .bottom
            view.waveWidth = 6
            view.waveHeight = 80
            view.waveDuration = 0.3
            view.waveColor = .yellow
            view.instanceDelay = 0.05
            view.waveCornerRadius = 2
            self.view.addSubview(view)
            view.startAnimation()
        }
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 0, width: 400, height: 100))
            view.center = CGPoint(x: self.view.bounds.width / 2, y: 700)
            view.waveCount = 40
            view.animationType = .center
            view.waveWidth = 6
            view.waveHeight = 80
            view.waveDuration = 0.8
            view.waveColor = .white
            view.instanceDelay = 0.02
            view.waveCornerRadius = 2
            self.view.addSubview(view)
            view.startAnimation()
        }
        
        do {
            
            let view = SoundWaveAnimationView(frame: CGRect(x: 10, y: 0, width: 400, height: 100))
            view.center = CGPoint(x: self.view.bounds.width / 2, y: 830)
            view.waveCount = 10
            view.animationType = .bottom
            view.waveWidth = 36
            view.waveHeight = 100
            view.waveDuration = 0.2
            view.waveColor = .blue
            view.instanceDelay = 0.02
            view.waveCornerRadius = 2
            self.view.addSubview(view)
            view.startAnimation()
        }
        
    }
}

