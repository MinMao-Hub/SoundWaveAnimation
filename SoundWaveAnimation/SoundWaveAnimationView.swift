//
//  SoundWaveAnimationView.swift
//  SoundWaveAnimation
//
//  Created by gyh on 2021/10/19.
//

import UIKit

enum SoundWaveAnchorPointType {
    case top
    case center
    case bottom
    
    //锚点
    var anchorPoint:CGPoint {
        switch self {
        case .top: return CGPoint(x: 0.5, y: 0)
        case .bottom: return CGPoint(x: 0.5, y: 1)
        default: return CGPoint(x: 0.5, y: 0.5)
        }
    }
    
    //音波位置Y
    func positionY(_ view:SoundWaveAnimationView) -> CGFloat {
        switch self {
        case .top: return 0
        case .bottom: return view.bounds.size.height
        default: return view.bounds.size.height / 2
        }
    }
}

class SoundWaveAnimationView: UIView {
    // 音波数
    var waveCount: Int = 3 {
        didSet { replicatorLayer.instanceCount = waveCount }
    }
    // 音波线宽度
    var waveWidth: CGFloat = 5 {
        didSet {
            if oldValue == minimumWaveValue  {
                minimumWaveValue = waveWidth
            }
        }
    }
    //最小波动值， 默认等于音波宽度
    var minimumWaveValue: CGFloat = 5
    // 音波线高度
    var waveHeight: CGFloat = 25
    // 音波线圆角
    var waveCornerRadius: CGFloat = 2.5 {
        didSet { vibrateLayer.cornerRadius = waveCornerRadius }
    }
    // 音波颜色
    var waveColor: UIColor = .white {
        didSet { vibrateLayer.backgroundColor = waveColor.cgColor }
    }
    // 一次动画时长 - 指的是每一条音波单独动画时间
    var waveDuration: CFTimeInterval = 0.6 {
        didSet { animation.duration = waveDuration }
    }
    // 偏移时间 - 默认为 - waveDuration / waveCount
    var instanceDelay: CFTimeInterval = 0.2 {
        didSet { replicatorLayer.instanceDelay = instanceDelay }
    }
    //锚点位置类型
    var animationType: SoundWaveAnchorPointType = .center
    var timingFunction = CAMediaTimingFunction(name: .easeInEaseOut) {
        didSet { animation.timingFunction = timingFunction }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        config()
        createView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        replicatorLayer.bounds = self.bounds
        replicatorLayer.position = CGPoint(x: self.bounds.size.width / 2, y: self.bounds.size.height / 2)
    }
    
    func config() {}
    
    func createView() {
        _ = replicatorLayer
    }
    
    lazy var vibrateLayer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = waveColor.cgColor
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        layer.backgroundColor = waveColor.cgColor
        layer.cornerRadius = waveCornerRadius
        return layer
    }()
    
    lazy var replicatorLayer: CAReplicatorLayer = {
        let layer = CAReplicatorLayer()
        layer.instanceDelay = instanceDelay
        layer.instanceCount = waveCount
        layer.addSublayer(vibrateLayer)
        layer.preservesDepth = true
        return layer
    }()
    
    lazy var animation: CABasicAnimation = {
        let animation = CABasicAnimation(keyPath: "bounds")
        animation.fromValue = CGRect(x: 0, y: 0, width: waveWidth, height: waveHeight)
        animation.toValue = CGRect(x: 0, y: 0, width: waveWidth, height: waveWidth)
        animation.duration = waveDuration
        animation.autoreverses = true
        animation.repeatCount = Float.infinity
        animation.timingFunction = timingFunction
        animation.isRemovedOnCompletion = false
        return animation
    }()
}

extension SoundWaveAnimationView {
    func startAnimation() {
        if let view = self.superview { view.layoutIfNeeded() }
        //移除之前的动画【若存在】
        if let _ = vibrateLayer.animation(forKey: "bounds") {
            vibrateLayer.removeAnimation(forKey: "bounds")
        }
        
        // 图层调整 - 如果超过父容器，调整音波宽度
        var itemWidth = waveWidth
        var cornerRadius = waveCornerRadius
        if itemWidth * CGFloat(waveCount) > self.bounds.size.width {
            itemWidth = CGFloat(self.bounds.size.width / CGFloat(waveCount))
            waveWidth = itemWidth
        }
        if cornerRadius > waveWidth / 2.0 {
            cornerRadius = waveWidth / 2.0
        }
        
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(((self.bounds.size.width - waveWidth * CGFloat(waveCount)) / CGFloat(waveCount - 1)) + waveWidth, 0, 0)
        
        vibrateLayer.position = CGPoint(x: waveWidth / 2.0, y: animationType.positionY(self))
        
        vibrateLayer.bounds = CGRect(x: 0, y: 0, width: waveWidth, height: waveHeight)
        vibrateLayer.anchorPoint = animationType.anchorPoint
        vibrateLayer.cornerRadius = cornerRadius
        
        // 动画调整
        animation.fromValue = CGRect(x: 0, y: 0, width: waveWidth, height: waveHeight)
        animation.toValue = CGRect(x: 0, y: 0, width: waveWidth, height: waveWidth)
        self.layer.addSublayer(replicatorLayer)
        vibrateLayer.add(animation, forKey: "bounds")
    }
    
    func stopAnimation() {
        guard let _ = vibrateLayer.animation(forKey: "bounds") else {
            return
        }
        vibrateLayer.removeAnimation(forKey: "bounds")
    }
}
