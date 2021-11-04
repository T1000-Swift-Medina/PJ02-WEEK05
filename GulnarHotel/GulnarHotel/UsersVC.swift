//
//  UsersVC.swift
//  GulnarHotel
//
//  Created by العــفاف . on 29/03/1443 AH.
//

import UIKit

class UsersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arrName = [String]()
    
    
    
    @IBOutlet weak var TableView1: UITableView!
    @IBOutlet weak var Text: UITextField!

    @IBAction func Delete(_ sender: Any) {
        arrName.removeAll()
     TableView1 .reloadData()
    }
    @IBAction func BEdit(_ sender: Any) {
        TableView1.isEditing = true
    }
    
    @IBAction func BAdd(_ sender: Any) {
     
        
        if let text = Text.text{
            arrName.append(text)
            let indePath = IndexPath(row: arrName.count - 1, section: 0)
            TableView1.beginUpdates()
            TableView1.insertRows(at: [indePath], with: .automatic)
            TableView1.endUpdates()
            Text.text = ""
        }
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView1.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = arrName[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    TableView1.delegate = self
    TableView1.dataSource = self
        
      //  self.clearsSelectionOnViewWillAppear = false
    //    self.navigationItem.rightBarButtonItem = self.editButtonItem
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrName.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { [self] (action, view, completionHandler) in
            self.arrName.remove(at: indexPath.row)
            self.TableView1.beginUpdates()
            TableView1.deleteRows(at: [indexPath], with: .automatic)
            TableView1.endUpdates()
            completionHandler(true)
        }
        
        let favoriteAction = UIContextualAction(style: .normal, title: "Fovert") { (_, _, _) in
            print("User added to fovorite list")
        }
        delete.image = UIImage(systemName: "trash")
        favoriteAction.image =  UIImage(systemName: "heart")
        
        return UISwipeActionsConfiguration(actions: [delete, favoriteAction])
    
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return .delete
//    }
//    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        <#code#>
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

    
    
    

