//
//  ViewController.swift
//  demo02
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    @IBOutlet var statusLabel: UILabel!

    @IBOutlet weak var sldProgress: UISlider!
    
    var downloadTask: URLSessionDownloadTask?
    
    @IBAction func downloadButtonPressed() {
        if let downloadTask = downloadTask {
            downloadTask.cancel()
            statusLabel.text = ""
        } else {
            statusLabel.text = "Downloading picture"
            createDownloadTask()
        }
    }
    
    func createDownloadTask() {
          let downloadRequest = NSMutableURLRequest(url: URL(string: "https://www.dropbox.com/s/r6lr4zlw12ipafm/SpeedTracker_movie.mov?dl=1")! as URL)
        
        let session = URLSession(configuration: URLSessionConfiguration.default(), delegate: self, delegateQueue: OperationQueue.main())
        
        downloadTask = session.downloadTask(with: downloadRequest as URLRequest)
        downloadTask!.resume()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)
        print(progress)
        statusLabel.text = "Downloading \(Int(progress * 100))%"
        sldProgress.value = progress
         }

    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL)
    {
        statusLabel.text = "Download finished"
        print(location)
        downloadTask.cancel()
    }
    
    // MARK: view methods
    override func viewDidLoad() {
        super.viewDidLoad()
        sldProgress.minimumValue = 0
        sldProgress.maximumValue = 1
        sldProgress.value = 0
        statusLabel.text = ""
    }

    
}
