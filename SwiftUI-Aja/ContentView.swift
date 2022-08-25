//
//  ContentView.swift
//  Buddies Online Login
//
//  Created by Ahlul Esasjana on 24/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("labyrinth")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Icon()
                LoginForm()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct Icon: View {
    var body: some View{
        VStack {
            Text("Buddies Online")
                .font(.largeTitle)
                .foregroundColor(Color("icon color"))
            Image("gfriend-icon")
                .resizable()
                .frame(width: 150, height: 150)
                .background(Color("icon color"))
                .padding().background(Color("icon color"))
                .cornerRadius(20)
                .shadow(color: Color.gray, radius: 1, x: 0, y: 0)
            
        }
    }
}

struct LoginForm: View {
    @State var username: String = "";
    @State var password: String = "";
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("Username").font(.callout).bold()
            TextField("Type your username ...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Input your password",text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding(.all, 30)
        .background(Color("icon color"))
        
        VStack{
            Button(action: {print("Button Clicked")}){
                HStack{
                    Spacer()
                    Text("Sign In")
                    Spacer()
                }
            }
                .padding()
                .background(Color("icon color"))
                .foregroundColor(Color.black)
                .cornerRadius(20)
        }
        .padding(.horizontal, 30)
        
    }
}
