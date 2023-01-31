//
//  CircleImage.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 26.01.2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("inter")
            .resizable()
            .padding(.horizontal, 0.0)
            .scaledToFit()
            .clipShape(Circle())
            .overlay

        {
                Circle().stroke(.white)
            }
            .shadow(radius: 7
            )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
