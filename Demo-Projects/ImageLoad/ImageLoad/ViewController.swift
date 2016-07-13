//
//  ViewController.swift
//  ImageLoad
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    
    @IBAction func loadHinh(_ sender: AnyObject) {
        let url = URL(string: "http://orig05.deviantart.net/7ac4/f/2011/328/e/2/angry_birds_anyone__by_sonash_the_bandih0g-d4du3kw.png")
        let queue = DispatchQueue(label: "queue", attributes: DispatchQueueAttributes.concurrent)
        var data:Data = Data()
        let group = DispatchGroup()
        let task:DispatchWorkItem = DispatchWorkItem { 
            do{
                data = try Data(contentsOf: url!)
                
            } catch{
                
            }
            group.leave()
        }
        group.enter()
      queue.async(execute: task)
        let result = group.wait(timeout: DispatchTime.now() + 2)
        if result == DispatchTimeoutResult.Success{
                self.imgHinh.image = UIImage(data: data)
        }
        else{
            task.cancel()
            print(task.isCancelled)
            print("Hinh nang qua! khong load duoc")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

