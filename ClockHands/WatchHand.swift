//
//  WatchHand.swift
//  ClockHands
//
//  Created by Steven Lipton on 6/28/21.
//

import SwiftUI

struct WatchHand: View {
    enum TimeUnits{
        case seconds
        case minutes
        case hours
        
    }
    
    func timeAngle(value:Int, units:TimeUnits)->Double{
        switch units{
        case .seconds:
            return Double(value) * (360 / 60.0)
        case .minutes:
            return Double(value) * (360 / 60.0)
        case .hours:
            return Double(value) * (360 / 12.0)
        }
    }
    
    var unit:TimeUnits = .seconds
    @Binding var value:Int
    var length:Double = 325
    var body: some View {
        VStack {
            Capsule()
                .frame(width:20, height: length / 2.0)
            Spacer()
        }
        .frame(height: length)
        .rotationEffect(.degrees(timeAngle(value: value, units: unit) ), anchor: .center)
    }
}


struct WatchHand_Previews: PreviewProvider {
    static var previews: some View {
        WatchHand(unit: .minutes,value: .constant(3))
    }
}
