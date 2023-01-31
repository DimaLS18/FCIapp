//
//  AboutUsView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 24.01.2023.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
                .scaledToFit()



            VStack() {
                Text("Футбольный Клуб Интер")
                    .font(.title)
                Text("Павловский Посад")
                    .font(.subheadline)
            }

            VStack {
                Text("Наш адрес:г Павловский Посад, Интернациональный пер.,д. 32")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                .padding(.top)

                Text("телефон: +7 (49643) 5-90-81")
                    .padding(.top)
            }


            Spacer()
        }
    }
}


struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}




