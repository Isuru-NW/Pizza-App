//
//  FavouriteList.swift
//  PizzaApplication
//
//  Created by user215958 on 5/22/22.
//

import SwiftUI

struct FavouriteList: View {
    
    @FetchRequest(entity: Pizza.entity(), sortDescriptors: [], predicate: NSPredicate(format: "isFavourite = %d", true)) var favourites: FetchedResults<Pizza>
     
    var body: some View {
        List(favourites) { favourite in
            HStack {
                Image(favourite.imageName ?? "")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(favourite.name ?? "")
            }

        }
        .listStyle(PlainListStyle()) // PlainListStyle
    }
}

struct FavouriteList_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteList()
    }
}
