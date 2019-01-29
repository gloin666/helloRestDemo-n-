//
//  ViewController.swift
//  helloRestDemo(n)
//
//  Created by mobapp02 on 29/01/2019.
//  Copyright © 2019 mobapp02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var items = [UserPosts]()

    override func viewDidLoad() {
        super.viewDidLoad()
   items = PostParcer.getAllPosts()
    
    }


}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let postForCell = items[indexPath.row]
        cell.textLabel!.text = postForCell.title
        return cell
    }
    
    
    
    
}

