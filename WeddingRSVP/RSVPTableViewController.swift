//
//  RSVPTableViewController.swift
//  WeddingRSVP
//
//  Created by Clinton Otten on 25/11/2016.
//  Copyright © 2016 Next Academy. All rights reserved.
//

import UIKit

class RSVPTableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {


    override func viewDidLoad() {
        super.viewDidLoad()

        tableDidLoad()
        guestDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Guest.all.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "guest", for: indexPath)
        
        let guest = Guest.all[indexPath.row]
        cell.textLabel?.text = guest.name
        cell.detailTextLabel?.text = guest.status
        
        return cell
    }
    
    // Sampel data generated for Guest List
    func guestDidLoad () {
        
        let temp = Guest.init()
        Guest.all.append(temp)
        
        let clinton = Guest.init()
        clinton.name = "Clinton"
        clinton.status = "Going"
        Guest.all.append(clinton)
        
        let chris = Guest.init()
        chris.name = "Chris"
        chris.status = "Going"
        Guest.all.append(chris)
        
        let fendy = Guest.init()
        fendy.name = "Fendy"
        fendy.status = "LOL"
        Guest.all.append(fendy)
        
        Guest.all.append(temp)
        Guest.all.append(temp)
        Guest.all.append(temp)
        Guest.all.append(temp)
        

        tableView.reloadData()
    }


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


    
    

