//
//  Fonts.swift
//  App04-MoviesSeries
//
//  Created by Roberta Medina on 10/03/21.
//

import Foundation
import SwiftUI

extension Font {
    public static func NotoSans(size: CGFloat) -> Font {
        return Font.custom("NotoSans-Regular", size: size)
    }
    public static func TinosRegular(size: CGFloat) -> Font {
        return Font.custom("Tinos-Regular", size: size)
    }
    public static func RalewaySemiBold(size: CGFloat) -> Font {
        return Font.custom("Raleway-SemiBold", size: size)
    }
    public static func TinosBold(size: CGFloat) -> Font {
        return Font.custom("Tinos-Bold", size: size)
    }
    public static func RalewayBold(size: CGFloat) -> Font {
        return Font.custom("Raleway-Bold", size: size)
    }
}
