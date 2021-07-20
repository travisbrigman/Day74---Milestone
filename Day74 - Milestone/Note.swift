//
//  Note.swift
//  Day74 - Milestone
//
//  Created by Travis Brigman on 7/19/21.
//

import Foundation

class Note: Codable {
    var noteText: String
    
    init(noteText: String){
        self.noteText = noteText
    }
}
