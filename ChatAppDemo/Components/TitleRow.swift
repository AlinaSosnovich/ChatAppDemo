//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by Sergei  Sosnovich on 3.10.23.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1531369201-4f7be267b1de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fHBvcnRyYWl0JTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=900&q=60")
    var name = "Olga Korol"
    
    var body: some View {
        HStack(spacing :20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            }placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
