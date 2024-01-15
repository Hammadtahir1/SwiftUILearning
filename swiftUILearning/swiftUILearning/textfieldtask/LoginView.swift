//
//  LoginView.swift
//  text field task
//
//  Created by Hamza on 13/01/2024.
//

import SwiftUI

struct LoginView: View {
    @State var userID = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            
            
            Text("Hey there, ")
            
            
            Text("WelcomeBack").font(.largeTitle).bold()
            
            
            VStack(spacing: 30) {
                
                // email
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    TextField("Email", text: $userID).padding(.leading, 30)
                    
                    Image(systemName: "envelope").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                // password
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    SecureField("Password", text: $password).padding(.leading, 30)
                    
                    Image(systemName: "lock").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                
                HStack {
                    Button {
                        
                    } label: {
                        
                        Text("Forgotyourpassword?").foregroundColor(.gray)
                        
                    }
                }
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack {
                        LinearGradient(colors: [.mint, .indigo],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        .cornerRadius(20)
                        
                        Text("Login")
                            .foregroundColor(.white)
                        //                            .padding(.all , 23)
                        //                            .padding([.leading, .trailing ] ,100)
                        //                            .cornerRadius(25)
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                }
                
                Spacer()
                
                HStack {
                    Text("Login").font(.largeTitle).fontWeight(.heavy).bold()
                    Image(systemName: "plus").font(.largeTitle).bold()
                }
                
                HStack {
                    Text("Already have an account?")
                    Button {
                        
                    } label: {
                        
                        Text("Login").foregroundColor(.pink)
                    }
                }
                
                Spacer()
            }
        }
        
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
