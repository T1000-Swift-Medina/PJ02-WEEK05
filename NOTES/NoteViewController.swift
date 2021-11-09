//
//  NoteViewController.swift
//  NOTES
//
//  Created by Yazan Alraddadi on 25/03/1443 AH.
//

import UIKit
protocol PassingData {
    func updating (title : String , descrption : String)
}

class NoteViewController: UIViewController {

  
    
    @IBOutlet weak var titleLabel: UITextView!
    @IBOutlet var noteLabel: UITextView!
    var completion: ((String, String) -> Void)?

    var delegate : PassingData!
    
    public var noteTitle: String = ""
    public var note: String = ""

//    @IBAction func save(_ sender: Any) {
//        let a = titleLabel.text
//        let b = noteLabel.text
//        func updating (a : String , b : String){
//
//        }
//
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = noteTitle
        noteLabel.text = note

            titleLabel.becomeFirstResponder()
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))

        }

        @objc func didTapSave() {
            if let text = titleLabel.text, !text.isEmpty, !noteLabel.text.isEmpty {
                //completion?(text, noteLabel.text)
                delegate.updating(title: titleLabel.text,
                                  descrption: noteLabel.text)
                     
                navigationController?.popViewController(animated: true)
            }

        }
      }



