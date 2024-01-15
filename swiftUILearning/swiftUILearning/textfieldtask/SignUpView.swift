//
//  SignUpView.swift
//  text field task
//
//  Created by Hamza on 13/01/2024.
//

import SwiftUI

struct SignUpView: View {
    @State var username = ""
    @State var userlastname = ""
    @State var userID = ""
    @State var password = ""
    @State var confirmpassword = ""
    
    var body: some View {
        
        VStack {
            
            
            Text("Hey there, ")
            
            
            
            Text("Create an Account").font(.largeTitle).bold()
            
            
            
            
            VStack(spacing: 30) {
                ZStack(alignment: .leading) {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                        .frame(height: 50)
                    
                    TextField("FirstName", text: $username).padding(.leading, 30)
                    
                    Image(systemName: "person").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                
                
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    TextField("LastName", text: $userlastname).padding(.leading, 30)
                    
                    Image(systemName: "person").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                
                
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    TextField("Email", text: $userID).padding(.leading, 30)
                    
                    Image(systemName: "envelope").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                
                
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    SecureField("Password", text: $password).padding(.leading, 30)
                    
                    Image(systemName: "lock").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                
                
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).frame(height: 50)
                    
                    SecureField("Confirm Password", text: $confirmpassword).padding(.leading, 30)
                    
                    Image(systemName: "lock").padding(.leading , 5)
                }
                .padding(.horizontal)
                
                Button {
                    
                } label: {
                    ZStack {
                        LinearGradient(colors: [.mint, .indigo],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        .cornerRadius(20)
                        
                        Text("Register")
                            .foregroundColor(.white)
                        //                            .padding(.all , 23)
                        //                            .padding([.leading, .trailing ] ,100)
                        //                            .cornerRadius(25)
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                }
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
            }
            Spacer()
            
            
            
        }
        
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
