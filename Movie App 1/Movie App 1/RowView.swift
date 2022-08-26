//
//  RowView.swift
//  Movie App 1
//
//  Created by Fatma Alarbash on 26/08/2022.
//

import SwiftUI

struct RowView: View {
    @State var movie :String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 130, height: 130)
            Text(movie).font(.system(.title, design: .serif))
        }
    }
}
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(movie: "")
    }
}
