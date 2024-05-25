//
//  ContentView.swift
//  Custom-SwiftUI-elements
//
//  Created by Dmitrii Vlasov on 25/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    var body: some View {
        VStack {
            BulkedTextField()
//                .background(.red)
            BulkedTextField()
//                .background(.green)
            BulkedTextField()                
//                .background(.blue)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
