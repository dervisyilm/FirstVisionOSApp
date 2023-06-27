//
//  ContentView.swift
//  FirstVisionOSApp
//
//  Created by Dervis YILMAZ on 27.06.2023.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                
                ForEach(1...15, id: \.self){ _ in
                    Text("Item")
                }
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)

                Text("Hello, world!")
            }
            .navigationTitle("Content")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
