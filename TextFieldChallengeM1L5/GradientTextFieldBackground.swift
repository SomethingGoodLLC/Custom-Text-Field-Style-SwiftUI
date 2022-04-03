//
//  GradientTextFieldBackground.swift
//  TextFieldChallengeM1L5
//
//  Created by Leone on 4/3/22.
//

import SwiftUI

struct GradientTextFieldBackground: TextFieldStyle {
    
    let systemImageString: String
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(
                    LinearGradient(
                        colors: [
                            .red,
                            .blue
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(height: 40)
            
            HStack {
                Image(systemName: systemImageString)
                // Reference the TextField here
                configuration
            }
            .padding(.leading)
            .foregroundColor(.gray)
        }
    }
}
