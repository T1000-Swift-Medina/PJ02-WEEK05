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
    
    @IBOutlet weak var ImgTA: UIImageView!
    @IBOutlet weak var lable11: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        print(rooms.items[selectedRoomIndex])
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
