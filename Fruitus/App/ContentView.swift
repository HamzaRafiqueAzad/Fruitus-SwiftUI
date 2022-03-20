//
//  ContentView.swift
//  Fruitus
//
//  Created by Hamza Rafique Azad on 20/3/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitsDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }//: NAVIGATIONLINK
                }//: LOOP
            }//: List
            .navigationTitle("Fruits")
        }//: NAVIGATIONVIEW
//            .padding()
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
