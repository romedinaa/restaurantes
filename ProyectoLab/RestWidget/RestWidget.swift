//
//  RestWidget.swift
//  RestWidget
//
//  Created by Roberta Medina on 12/06/21.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }
    
    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct RestWidgetEntryView : View {
    var entry: Provider.Entry
    //var data: RestInfo
    var body: some View {
        
        HStack{
            VStack(alignment: .center){
                Text("DINELY")
                    //.font(.RalewaySemiBold(size: 24))
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal, 25)
                    .padding(.top, 20)
                
                Spacer()
                
                HStack{
                    Image(systemName: "star.fill")
                        .font(.title)
                        .foregroundColor(Color("Naranjas"))
                        .padding(.horizontal, 25)
                        .padding(.bottom, 20)
                        .padding()
                    Image(systemName: "star.fill")
                        .font(.title)
                        .foregroundColor(Color("Naranjas"))
                        .padding(.horizontal, 25)
                        .padding(.bottom, 20)
                        .padding()
                    Image(systemName: "star.fill")
                        .font(.title)
                        .foregroundColor(Color("Naranjas"))
                        .padding(.horizontal, 25)
                        .padding(.bottom, 20)
                        .padding()
                }
            }
            Spacer()
            
        }
        
        .padding(.all, 8)
        .background(ContainerRelativeShape().fill(Color("Negros")))
    }
}

@main
struct RestWidget: Widget {
    let kind: String = "RestWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            RestWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Restaurantes")
        .description("Restaurantes widget.")
    }
}

struct RestWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            RestWidgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            RestWidgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            RestWidgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
