//
//  ViewController.swift
//  NOTES
//
//  Created by Yazan Alraddadi on 25/03/1443 AH.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PassingData {
    
    var List: [(title: String, note: String)] = []

    @IBOutlet var table: UITableView!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    var listIndex = 0
    
    func updating(title: String, descrption: String) {
        List[listIndex].title = title
        List[listIndex].note = descrption
        table.reloadData()
    }
        
    @IBAction func didTapNewNote() {
        
        guard let AP = storyboard?.instantiateViewController(identifier: "New Note") as? EntryViewController else {
            return
        }

        AP.completion = { noteTitle, note in
            self.navigationController?.popToRootViewController(animated: true)
            self.List.append((title: noteTitle, note: note))
            
//            self.label.isHidden = false
            self.table.isHidden = false
            self.table.reloadData()
        }
        navigationController?.pushViewController(AP, animated: true)
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            List.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
        }
    // Table

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = List[indexPath.row].title
        cell.detailTextLabel?.text = List[indexPath.row].note
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        listIndex = indexPath.row
        let model = List[indexPath.row]
        
        // Show note controller
        guard let SP = storyboard?.instantiateViewController(identifier: "Show Note") as? NoteViewController else {
            return
        }
        SP.noteTitle = model.title
        SP.note = model.note
        SP.delegate = self
        navigationController?.pushViewController(SP, animated: true)
    }

}



