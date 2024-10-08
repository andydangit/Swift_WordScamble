//
//  ContentView.swift
//  WordScamble
//
//  Created by Andy Dang It on 10/8/24.
//

import SwiftUI

struct ContentView: View {
    
    let people = ["Andy", "Dang", "It"]
    
    var body: some View {
        
        List{
            Text("Static Row")
            
            //            Dynamic row
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
        }
    }
    
    
    //    func testBundle() {
    //        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
    //            if let fileContents = try? String(contentsOf: fileURL, encoding: .utf8) {
    //                // we loaded the file into a string!
    //            }
    //        }
    //    }
    
    
    func testSTring() {
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
        
        
//        let input = """
//        a   
//        b
//        c
//        """
//        let letters = input.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    
    
}

#Preview {
    ContentView()
}
