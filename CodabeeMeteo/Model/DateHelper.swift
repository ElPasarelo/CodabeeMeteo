//
//  DateHelper.swift
//  CodabeeMeteo
//
//  Created by Matthieu PASSEREL on 07/03/2018.
//  Copyright © 2018 Matthieu PASSEREL. All rights reserved.
//

import UIKit

class DateHelper {
    
    static let obtenir = DateHelper()
    
    func heure(_ string: String) -> String? {
        if let date = convertirStringEnDate(string) {
            let formateur = DateFormatter()
            formateur.timeStyle = .short
            return formateur.string(from: date)
        }
        return nil
    }
    
    func jourDeLaSemaine(_ string: String) -> String? {
        if let date = convertirStringEnDate(string) {
            let calendrier = Calendar.current
            if calendrier.isDateInToday(date) {
                return "Aujourd'hui"
            } else if calendrier.isDateInTomorrow(date) {
                return "Demain"
            } else {
                let jour = calendrier.component(.weekday, from: date)
                switch jour {
                case 1: return "Dimanche"
                case 2: return "Lundi"
                case 3: return "Mardi"
                case 4: return "Mercredi"
                case 5: return "Jeudi"
                case 6: return "vendredi"
                default: return "Samedi"
                }
            }
        }
        return nil
    }
    
    func convertirStringEnDate(_ string: String) -> Date? {
        let formateur = DateFormatter()
        formateur.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date = formateur.date(from: string) {
            return date
        } else {
            return nil
        }
    }
}
