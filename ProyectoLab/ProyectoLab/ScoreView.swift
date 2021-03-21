//
//  ScoreView.swift
//  ProyectoLab
//
//  Created by Roberta Medina on 17/03/21.
//

import SwiftUI

struct ScoreView: View {
    var rating: Double
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: 60, height: 60)
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.55)
                .foregroundColor(Color.black)
                .frame(width: 70, height: 70)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(rating / 100, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(ScoreColor(rating: rating))
                .rotationEffect(Angle(degrees: 270.0))
                .frame(width: 70, height: 70)
                .animation(.linear)
            Text(String(format: "%.0f%%", min(rating, 100.0)))
                //.font(.NotoSans(size: 20))
                .foregroundColor(.white)
                .bold()
        }
    }
    
    func ScoreColor(rating: Double) -> Color {
        if rating < 60 {
            return Color(.red)
        } else {
            if rating >= 60 && rating < 85 {
                return Color(.orange)
            } else {
                return Color(.green)
            }
        }
    }
    
    
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(rating: 70)
    }
}
