//
//  ListPageView.swift
//  SwiftUI_List_Pages
//
//  Created by cf on 2020/1/31.
//  Copyright © 2020 cf. All rights reserved.
//

import SwiftUI

struct ListPageView: View {
    @State var items:[STAuthor] =  Array(0...1).map {
        STAuthor(name:"Item \($0)")
        
        
    }
    
    @State private var isLoading: Bool = false
    @State private var page: Int = 0
   
    private var pageSize: Int = 0
    private let offset: Int = 10
    var body: some View {
        List(items){ item in
            VStack{
                Text("id:\(item.id)_\(item.name)")
                if self.isLoading && self.items.isLastItem(item) {
                    Divider()
                    Text("载入中 ...")
                        .padding(.vertical)
                    
                    
                }
                
            }.onAppear {
                // self.myInit()
                self.listItemAppears(item)
            }
        }
    }
}

struct ListPageView_Previews: PreviewProvider {
    static var previews: some View {
        ListPageView()
    }
}

extension ListPageView {
    
    private  func listItemAppears<Item: Identifiable>(_ item: Item) {
    
        if items.isLastItem(item){
    //if items.isThresholdItem(offset: offset,item: item) {
            isLoading = true
            
          
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                self.page += 1
                let moreItems = [STAuthor( name:"测试")]
                
                self.items.append(contentsOf: moreItems)
                
                self.isLoading = false
            }
        }
    }
    
    
}
