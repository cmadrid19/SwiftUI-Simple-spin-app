//
//  NestedCardView.swift
//  TestSwiftUI
//
//  Created by Maxim Macari on 15/07/2020.
//  Copyright © 2020 Maxim Macari. All rights reserved.
//

import SwiftUI

struct NestedCardView: View {
    @Binding var symbol: [String]
    @Binding var background: [Color]
    
    var body: some View {
        
        HStack{
            Spacer()
            
            CardView(symbol: $symbol[0], background: $background[0])
            
            CardView(symbol: $symbol[1], background: $background[1])
            
            CardView(symbol: $symbol[2], background: $background[2])
            
            Spacer()
        }
        
        
    }
}

struct NestedCardView_Previews: PreviewProvider {
    static var previews: some View {
        NestedCardView(symbol: Binding.constant(["cherry", "apple", "star"]), background: Binding.constant([Color.green, Color.green, Color.green]))
    }
}
