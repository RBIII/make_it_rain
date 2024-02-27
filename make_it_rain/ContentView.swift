//
//  ContentView.swift
//  make_it_rain
//
//  Created by Robert Basso on 2/21/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    var body: some View {
        VStack {
            Button("Make it rain!") {
                
            }
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
        }
    }
}

struct Rectangle: View {
    @State private var raining = false
    
    var body: some View {
        RealityView { content in
            for _ in 1...5 {
                let model = ModelEntity(
                    mesh: .generateSphere(radius: 0.025),
                    materials: [SimpleMaterial(color: .red, isMetallic: true)]
                )
                
                let x = Float.random(in: -0.2...0.2)
                let y = Float.random(in: -0.2...0.2)
                let z = Float.random(in: -0.2...0.2)
                
                model.position = SIMD3(x, y, z)
            }
        }
    }
}

#Preview(windowStyle: .plain) {
    Rectangle()
    ContentView()
}
