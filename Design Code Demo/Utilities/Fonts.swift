//
//  Fonts.swift
//  Design Code Demo
//
//  Created by Chris Ching on 2021-07-28.
//

import Foundation
import SwiftUI

/*
 SF Pro Display
 - SFProDisplay-Regular
 - SFProDisplay-Semibold
 - SFProDisplay-Bold
 SF Pro Text
 - SFProText-Regular
 */

extension Font {
    
    public static var title: Font {
        Font.custom("SFProDisplay-Bold", size: 28)
    }
    
    public static var subheadline: Font {
        Font.custom("SFProDisplay-Semibold", size: 14)
    }
    
    public static var metricNumber: Font {
        Font.custom("SFProDisplay-Bold", size: 14)
    }
    
    public static var metricCaption: Font {
        Font.custom("SFProText-Regular", size: 9)
    }
}
