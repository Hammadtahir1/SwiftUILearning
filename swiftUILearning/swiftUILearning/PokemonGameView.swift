//
//  PokemonGameView.swift
//  swiftUILearning
//
//  Created by Hamza on 16/01/2024.
//

import SwiftUI

struct PokemonGameView: View {
    
    @AppStorage("ShouldDisplayAnimation")
    var ShouldDisplayAnimation = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                images
                
                VStack {
                    Text("Pokemon Let's Go Pikachu")
                        .font(.headline)
                        .background(Color.red)
                    
                    Text("Nintendo Switch Game")
                        .font(.subheadline)
                        .background(Color.brown)
                    
                    ratings
                    
                    Text("description")
                        .font(.body)
                    
                }
                
            }
            
            .padding()
        }
    }
    
    var images: some View{
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack {
                    
                    Image("cover")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 350)
                        .id("cover")
                    
                    ForEach(0..<3) { i in
                        
                        
                        Image("image-\(i)")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                            .id("image-\(i)")
                    }
                }
            }
            .onAppear {
            guard ShouldDisplayAnimation else {return}
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation {
                        proxy.scrollTo("image-1", anchor: .trailing
                        )
                    }
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                        withAnimation {
                            proxy.scrollTo("cover")
                            ShouldDisplayAnimation = false
                        }
                    }
                }
            }
        }
    }
        var ratings: some View {
            HStack(spacing: 0) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Image(systemName: "star.leadinghalf.fill")
                    .foregroundColor(.yellow)
            }
            
        }
        
        
    }


struct PokemonGameView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonGameView()
            .onAppear() {
                UserDefaults.standard.removeObject(forKey:"ShouldDisplayAnimation")
            }
    }
}
