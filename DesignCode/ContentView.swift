//
//  ContentView.swift
//  DesignCode
//
//  Created by Zlatko Iliev on 19/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackCardView()
                .offset(x: 0, y: -40.0)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(
                    Angle(degrees: 10),
                    axis: (x: 10.0, y: 0.0, z: 0.0)
                )


            BackCardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle.degrees(5))
                .rotation3DEffect(
                    Angle(degrees: 5),
                    axis: (x: 10.0, y: 0.0, z: 0.0)
                )

            CardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Certifficate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
