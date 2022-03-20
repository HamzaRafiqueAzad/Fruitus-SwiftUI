//
//  SettingsLabelView.swift
//  Fruitus
//
//  Created by Hamza Rafique Azad on 20/3/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruitus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
