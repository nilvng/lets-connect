//
//  PostRowView.swift
//  LetsConnect
//
//  Created by Nil Nguyen on 27/8/2023.
//

import SwiftUI

struct PostRowView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                HStack(){
                    Image("weeknd")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .leading)
                    
                    Text("Name")
                }
                Text("I have good news")
                HStack() {
                    Image("")
                }
            }
            
            Spacer()
        }
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
