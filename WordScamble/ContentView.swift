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
}

#Preview {
    ContentView()
}
