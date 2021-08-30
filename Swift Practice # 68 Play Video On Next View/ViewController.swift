//
//  ViewController.swift
//  Swift Practice # 68 Play Video On Next View
//
//  Created by Dogpa's MBAir M1 on 2021/8/28.
//

import UIKit

import AVKit    //引入AVKit實現播放功能

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func showVideo(_ coder: NSCoder) -> AVPlayerViewController? {
        //定義controller 取得AVPlayerViewController的功能
        let controller = AVPlayerViewController(coder: coder)
        //定義url取得Bundle.main.url播放功能
        //並將播放的MV名字forResource: 指派為"Back Here Again"
        let url = Bundle.main.url(forResource: "Back Here Again", withExtension: "mp4")
        //將指派好的url!丟入到controller?.player內
        controller?.player = AVPlayer(url: url!)
        //播放controller
        controller?.player?.play()
        //回傳已經可以播放的"Back Here Again"給showVideo的IBsegueAction
        return controller
    }
    
}

