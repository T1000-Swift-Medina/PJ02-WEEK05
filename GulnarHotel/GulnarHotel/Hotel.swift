//
//  Hotel.swift
//  GulnarHotel
//
//  Created by العــفاف . on 25/03/1443 AH.
//

import UIKit
struct Product {
    var title: String = ""
    var imgProduct: String
}

class Hotel: UITableViewController {
    
    var item: [Product] = [Product (title: "Ma", imgProduct: "soper"),
                           Product (title: "Mi", imgProduct: "soper2"),
                           Product (title: "Ma", imgProduct: "soper3"),
                           Product (title: "Ma", imgProduct: "img3"),
                           Product (title: "Ma", imgProduct: "img2:3"),
                           Product (title: "Ma", imgProduct: "img2:2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.register(UINib(nibName:"BannerCell", bundle: nil), forCellReuseIdentifier: "BannerID")
//        tableView.rowHeight = 120
        tableView.register(UINib(nibName:"ProductCell", bundle: nil), forCellReuseIdentifier: "ProductID")
        tableView.rowHeight = 300
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        } else {
            return item.count
        }
            
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  print("user selected: \(indexPath.row)")
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Prod") as? Prod
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath
        
    
//        if(indexPath.section == 0){
//        let cellBanner = tableView.dequeueReusableCell(withIdentifier: "BannerID") as! BannerCellTableViewCell
//
//            return cellBanner
//        } else {
//
          let cellProduct = tableView.dequeueReusableCell(withIdentifier: "ProductID") as! ProductCell
            
            cellProduct.MasterSuite.text = item[indexPath.row ].title
            cellProduct.img1.image = UIImage(named: item[indexPath.row].imgProduct)
            
            return cellProduct
            
        
    }
    
    
   // override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // stry
        // nav ctrl show
        
   // }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

/*
 
 
 
 
 */






