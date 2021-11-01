//
//  NoteViewController.swift
//  NOTES
//
//  Created by Yazan Alraddadi on 25/03/1443 AH.
//

import UIKit

class NoteViewController: UIViewController {


    @IBOutlet weak var titleLabel: UITextView!
    @IBOutlet var noteLabel: UITextView!

    public var noteTitle: String = ""
    public var note: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = noteTitle
        noteLabel.text = note
    }


}
