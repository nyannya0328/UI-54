//
//  ContentView.swift
//  UI-54
//
//  Created by にゃんにゃん丸 on 2020/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            link1()
                .navigationBarTitle("1",displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct link1 : View {
    var body: some View{
        
        VStack{
            
            Image("p1")
                .resizable()
            
            NavigationLink(destination:link2()){
                
                Text("next")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
            }
                
                
        }
        
    }
}

struct link2 : View {
    var body: some View{
        
        VStack{
            
            Image("p2")
                .resizable()
            
            NavigationLink(destination:link3()){
                
                Text("Next")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.purple)
                
            }
            .background(Color.blue)
        }
        .navigationBarTitle("2",displayMode: .inline)
        
    }
}

struct link3 : View {
    var body: some View{
        
        VStack{
            
            Image("p3")
                .resizable()
        }
        .navigationBarTitle("3",displayMode: .inline)
        
    }
}

