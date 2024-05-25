//
//  BulkedTextFieldView.swift
//  Custom-SwiftUI-elements
//
//  Created by Dmitrii Vlasov on 25/05/2024.
//

import SwiftUI

struct BulkedTextField: View {
    var titleKey = "Test"
    @State var text = ""
    @State var changeInProgress = false
    
    var textFieldInUse: Bool {
        changeInProgress && !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if textFieldInUse {
                Text(titleKey)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .offset(y: textFieldInUse ? -25 : 0)
                    .padding(.leading, 10)
            }
            TextField(textFieldInUse ? "" : titleKey, text: $text)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    withAnimation {
                        changeInProgress = false
                    }
                }
                .onChange(of: text) {
                    withAnimation {
                        changeInProgress = true
                    }
                }
        }
        .padding(.top, textFieldInUse ? 20 : 0)
    }
}

#Preview {
    BulkedTextField()
}
