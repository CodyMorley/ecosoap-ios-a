//
//  ProductionReportInput.swift
//  labs-ios-starter
//
//  Created by Harmony Radley on 10/7/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation

class CreateProductionReportInput: Input {
    private let hubId: String
    private let date: Date
    private let barsProduced: Int
    private let soapmakersWorked: Int
    private let soapmakersHours: Int
    private var soapPhotos: [String] = []
    private let media: [String] = []

    


    var formatted: String {
        var string =
        """
            hubId: "\(hubId)"
        date: "\(date.asShortDateString())"
            barsProduced: \(barsProduced)
            soapmakersWorked: \(soapmakersWorked)
            soapmakerHours: \(soapmakersHours)
            soapPhotos: \(soapPhotos)
            media: \(media)
        """

        return string
    }

    init(hubId: String, date: Date, barsProduced: Int, soapmakersWorked: Int, soapmakersHours: Int, soapPhotos: [String]) {
        self.hubId = hubId
        self.date = date
        self.barsProduced = barsProduced
        self.soapmakersWorked = soapmakersWorked
        self.soapmakersHours = soapmakersHours
        self.soapPhotos = soapPhotos
    }

}
