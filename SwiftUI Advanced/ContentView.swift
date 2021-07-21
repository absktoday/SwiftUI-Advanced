//
//  ContentView.swift
//  SwiftUI Advanced
//
//  Created by Abhishek Saral on 7/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var editingEmailTextField: Bool = false
    @State private var editingPasswordTextField: Bool = false

    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack {
                VStack(alignment: .leading, spacing: 16.0) {
                    Text("Sign Up")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials and livestreams")
                        .font(.subheadline)
                        .foregroundColor(Color.white.opacity(0.7))
                    
                    
                    
                    HStack(spacing: 12) {
                        TextFieldIcon(iconName: "envelope.open.fill", currentlyEditing: $editingEmailTextField)
                        TextField("Email", text: $email) { isEditing in
                            editingEmailTextField = isEditing
                        }
                            .colorScheme(.dark)
                            .foregroundColor(Color.white.opacity(0.7))
                            .autocapitalization(.none)
                            .textContentType(.emailAddress)
                    }
                    .frame(height: 52)
                    .overlay(RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.white, lineWidth: 1)
                                .blendMode(.overlay))
                    .background(Color("secondaryBackgroundColor")
                                    .cornerRadius(16)
                                    .opacity(0.8))
                    
                    
                    
                    HStack(spacing: 12) {
                        TextFieldIcon(iconName: "key.fill", currentlyEditing: $editingPasswordTextField)
                        TextField("Password", text: $password) { isEditing in
                            editingPasswordTextField = isEditing
                        }
                            .colorScheme(.dark)
                            .foregroundColor(Color.white.opacity(0.7))
                            .autocapitalization(.none)
                            .textContentType(.password)
                    }
                    .frame(height: 52)
                    .overlay(RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.white, lineWidth: 1)
                                .blendMode(.overlay))
                    .background(Color("secondaryBackgroundColor")
                                    .cornerRadius(16)
                                    .opacity(0.8))
                    
                    GradientButton(text: "Create Account")
                    
                    Text("By clicking to signup you agree to our Terms of service and Privacy policy")
                        .font(.footnote)
                        .foregroundColor(Color.white.opacity(0.7))
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.white.opacity(0.7))
                    VStack(alignment: .leading, spacing: 16) {
                        Button(action: {
                            print("Switch to Sign In")
                        }, label: {
                            HStack(spacing: 4){
                                Text("Already have an account?")
                                    .font(.footnote)
                                    .foregroundColor(Color.white.opacity(0.7))
                                GradientText(text: "Sign In")
                                    .font(Font.footnote.bold())
                            }
                        })
                    }
                    
                    
                }
                .padding(.init(top: 20, leading: 40, bottom: 20, trailing: 40))
            }
            .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.white.opacity(0.2))
                .background(Color("secondaryBackground").opacity(0.5))
                .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
                .cornerRadius(30)
                .padding(.horizontal)
        )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


