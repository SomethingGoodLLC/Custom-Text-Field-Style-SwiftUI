//
//  ContentView.swift
//  TextFieldChallengeM1L5
//
//  Created by Leone on 4/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var email = ""
    
    var body: some View {
        VStack {
            // MARK: - Name TextField
            TextField("Name", text: $name)
                .textFieldStyle(
                    GradientTextFieldBackground(
                        systemImageString: "person"
                    )
                )
            
            // MARK: Email TextField
                TextField("Email", text: $email)
                    .textFieldStyle(
                        GradientTextFieldBackground(
                            systemImageString: "envelope"
                        )
                    )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
