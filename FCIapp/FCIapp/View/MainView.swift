//
//  MainView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 24.01.2023.
//



import SwiftUI

struct MainView: View {

    @State private var isInter = true

    var body: some View {

        ScrollView(.vertical, showsIndicators: false, content: {
            StretchableHeader(image: Image("5"), isInter: isInter)
                .scaledToFill()
                .mask(Text(isInter ? "МЫ" : "ИНТЕР"))
                .fontWeight(.bold)
                .font(.system(size: 120))
                .foregroundColor(.yellow)
                .shadow(radius: 10)
            CircleImage()
                .scaledToFill()
                .frame(width: 350, height: 350, alignment: .center)
                .padding(.bottom, 10)
                .onTapGesture {
                    isInter.toggle()
                }
        })
        .background(Color.black) // модификатор заднего фона
    }
}

struct StretchableHeader: View
{
    var image: Image
    var initialHeaderHeight: CGFloat = UIScreen.main.bounds.height * 0.25
    var isInter: Bool

    var body: some View
    {
        GeometryReader(content: { geometry in

            let minY = geometry.frame(in: .global).minY

            image
                .resizable()
                .offset(y: minY > 0 ? -minY : 0)
                .frame(height: minY > 0 ? initialHeaderHeight + minY : initialHeaderHeight)
                .aspectRatio(2, contentMode: .fill)
        })
        .frame(height: initialHeaderHeight)
        .mask(Text(isInter ? "МЫ" : "ИНТЕР"))
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}




