//
//  ViewController.swift
//  final
//
//  Created by datnguyen on 7/9/16.
//  Copyright © 2016 datnguyen.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrChim:Array<chim> = []
    var arrImage:Array<UIImage> = []
    @IBOutlet weak var tblViewChim: UITableView!
    
    func loadArrImage(urlString:String, index:Int){
        let url = URL(string: urlString)
        do{
        let data = try Data(contentsOf: url!)
        arrImage[index] = UIImage(data: data)!
            DispatchQueue.main.async(execute: {
                self.tblViewChim.reloadRows(at: [IndexPath.init(row: index, section: 0)], with: UITableViewRowAnimation.automatic)
            })
        }catch{
            
        }
    }
    
    func loadMore(index: Int){
        loadTableView(index: index)
    }
    
    func loadTableView(index: Int){
        loadDaTaWithURLString(urlString: "http://labkhoapham.com/GETSP.php?index=\(index)&numberPages=4") { (data, response) in
            do{
                if let result:Array<Dictionary<String,AnyObject>> = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? Array<Dictionary<String, AnyObject>>
                {
                    for i in result {
                        self.arrChim.append(chim(dic: i))
                        self.arrImage.append(UIImage(named: "default-placeholder")!)
                    }
                    DispatchQueue.main.async(execute: {
                        self.tblViewChim.reloadData()
                        let queue = DispatchQueue(label: "queue", attributes: DispatchQueueAttributes.concurrent, target: nil)
                        for i in index..<self.arrChim.count
                        {
                            queue.async(execute: {
                                self.loadArrImage(urlString: self.arrChim[i].hinhChim, index: i)
                            })
                        }
                        
                    })
                }
                
                
            }catch{
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTableView(index: 0)
        tblViewChim.dataSource = self
        tblViewChim.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrChim.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chim", for: indexPath) as? chimTableViewCell
        
        cell?.lblTen.text = arrChim[indexPath.row].tenChim
        
        cell?.imgHinh.image = arrImage[indexPath.row]
        
        if cell?.imgHinh.image == UIImage(named: "default-placeholder")
        {
            cell?.actWaiting.startAnimating()
        }
        else{
            cell?.actWaiting.stopAnimating()
            cell?.actWaiting.hidesWhenStopped = true
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == arrChim.count - 1
        {
         loadMore(index: indexPath.row + 1)
        }
        
    }
}
