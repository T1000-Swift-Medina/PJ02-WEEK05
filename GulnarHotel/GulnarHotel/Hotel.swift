//
//  Hotel.swift
//  GulnarHotel
//
//  Created by العــفاف . on 25/03/1443 AH.
//

import UIKit
struct Product {
    var title: String = ""
    var desc: String!
    var bed2: String!
    var Guests: String!
    var Price2: String!
    
    var imgProduct: String
    
    
    
}
class Room {
   
    var items = [Product]()
}

class Hotel: UITableViewController {
    var selectedIndex : Int!
    var rooms = Room()
    var item: [Product] = [Product (title: "Ma", desc: "xcx", imgProduct: "soper"),
                           Product (title: "Mi", desc: ",mx", imgProduct: "soper2"),
                           Product (title: "Ma", imgProduct: "soper3"),
                           Product (title: "Ma", imgProduct: "img3"),
                           Product (title: "Ma", imgProduct: "img2:3"),
                           Product (title: "Ma", imgProduct: "img2:2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rooms.items = [Product (title: " Guest Room King with Sofa Bed",desc: " Guest Room King with Sofa Bed",bed2: "1 king bed and 1 sofa bed ",Guests: "3 Guests max, with a maximum of 3 adults",Price2: " Price 255$", imgProduct: "soper"),
                       Product (title: " Guestroom Two Queens",desc: " Guestroom Two Queens",bed2: "2 queen beds", Guests: "4 Guests max, with a maximum of 4 adults",Price2: " Price 100$", imgProduct: "soper2"),
                       Product (title: " Mobility/Hearing Accessible Guestroom King Tub",desc: " Mobility/Hearing Accessible Guestroom King Tub",bed2: "1 king bed  and 1 sofa bed ",Guests: "3 Guests max, with a maximum of 3 adults",Price2: " Price 88$", imgProduct: "soper3"),
                       Product (title: " Mobility/Hearing Accessible Guestroom Two Queens Tub",desc: " Mobility/Hearing Accessible Guestroom Two Queens Tub", bed2: "2 full beds  and 1 sofa bed ", Guests: "6 Guests max, with a maximum of 6 adults",Price2: " Price 50$", imgProduct: "img3"),
                       Product (title: " Hearing Accessible Guestroom Two Queens",desc:" Hearing Accessible Guestroom Two Queens", bed2: "1 full bed  and 1 sofa bed ", Guests: "6 Guests max, with a maximum of 6 adults",Price2: " Price 90$", imgProduct: "img2:3"),
                       Product (title: " Hearing Accessible Guestroom Two Queens",desc: " Hearing Accessible Guestroom Two Queens", bed2: "2 queen beds ",Guests: "4 Guests max, with a maximum of 4 adults",Price2: " Price 70$", imgProduct: "img2:2")
]
//        tableView.register(UINib(nibName:"BannerCell", bundle: nil), forCellReuseIdentifier: "BannerID")
//        tableView.rowHeight = 120
        tableView.register(UINib(nibName:"ProductCell", bundle: nil), forCellReuseIdentifier: "ProductID")
        tableView.rowHeight = 300

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        if section == 0 {
//            return 1
//        } else {
            return rooms.items.count
//        }
            
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user selected: \(indexPath.row)")
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "editRoom", sender: self)
        
        
        
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
            
            cellProduct.MasterSuite.text = rooms.items[indexPath.row ].title
            cellProduct.img1.image = UIImage(named: rooms.items[indexPath.row].imgProduct)
            
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

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//
//        let detail:Prod = self.storyboard?.instantiateViewController(withIdentifier: "Prod") as! Prod
//        detail.strlable = rooms.items[indexPath.row]
//        detail.strimg = rooms.items[indexPath.row]
//        self.navigationController?.pushViewController(detail, animated: true)
//
        
        
        if editingStyle == .delete {
            // Delete the row from the data source
            rooms.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "editRoom" {
            let editVC = segue.destination as! Prod
            editVC.rooms = rooms
            editVC.selectedRoomIndex = selectedIndex
        }
//        if segue.identifier == "Add Room"{
//            let AddVC = segue.destination as! Prod
//            AddVC.rooms = rooms
//        }
        
       
    }
    





}
