//  /*
//
//  Project: TheCryptoApp
//  File: XMarkButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.11.2023
//
//  */

import SwiftUI

struct XMarkButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.system(size: 17, weight: .bold, design: .rounded))
        })
    }
}

#Preview {
    XMarkButton()
}
