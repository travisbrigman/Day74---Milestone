//
//  DetailViewController.swift
//  Day74 - Milestone
//
//  Created by Travis Brigman on 7/19/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    
    var selectedNote: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text  = selectedNote
        

        
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
