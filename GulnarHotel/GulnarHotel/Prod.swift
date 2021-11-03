//
//  Prod.swift
//  GulnarHotel
//
//  Created by العــفاف . on 27/03/1443 AH.
//

import UIKit

class Prod: UIViewController {
    var rooms : Room!
    var selectedRoomIndex : Int!
    
   
    @IBOutlet weak var bed: UILabel!
    @IBOutlet weak var lable11: UILabel!
    @IBOutlet weak var Guests: UILabel!
    var strlable:String!
  
    @IBOutlet weak var Price: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        print(rooms.items[selectedRoomIndex])
        bed.text = rooms.items[selectedRoomIndex].bed2
        lable11.text = rooms.items[selectedRoomIndex].desc
        Guests.text = rooms.items[selectedRoomIndex].Guests
        Price.text = rooms.items[selectedRoomIndex].Price2
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bed.text = rooms.items[selectedRoomIndex].bed2
        lable11.text = rooms.items[selectedRoomIndex].desc
        Guests.text = rooms.items[selectedRoomIndex].Guests
        Price.text = rooms.items[selectedRoomIndex].Price2
        
//        ImgTA.image = strimg
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
