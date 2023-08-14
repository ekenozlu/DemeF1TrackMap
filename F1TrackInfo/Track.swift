//
//  Track.swift
//  F1TrackInfo
//
//  Created by Eken Özlü on 14.08.2023.
//

import UIKit
import MapKit

class Track: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var length: Int!
    var firstRaceYear: Int?
    var grandPrixHeld: Int?
    
    init(title: String, coordinate: CLLocationCoordinate2D, length: Int, firstRaceYear: Int, grandPrixHeld: Int) {
        self.title = title
        self.coordinate = coordinate
        self.length = length
        self.firstRaceYear = firstRaceYear
        self.grandPrixHeld = grandPrixHeld
    }
}



let australia   = Track(title: "Albert Park Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: -37.84867125981168, longitude: 144.9672725848603),
                        length: 5279, firstRaceYear: 1996, grandPrixHeld: 26)

let monza      = Track(title: "Autodromo Nazionale di Monza",
                        coordinate: CLLocationCoordinate2D(latitude: 45.61740008806438, longitude: 9.281442639476142),
                        length: 5793, firstRaceYear: 1950, grandPrixHeld: 72)

let mexico      = Track(title: "Autódromo Hermanos Rodríguez",
                        coordinate: CLLocationCoordinate2D(latitude: 19.40557427854745, longitude: -99.0925447461722),
                        length: 4304, firstRaceYear: 1963, grandPrixHeld: 22)

let brazil      = Track(title: "Autodromo José Carlos Pace",
                        coordinate: CLLocationCoordinate2D(latitude: -23.701116211354627, longitude: -46.697943674896194),
                        length: 4309, firstRaceYear: 1973, grandPrixHeld: 39)

let imola       = Track(title: "Autodromo Enzo e Dino Ferrari",
                        coordinate: CLLocationCoordinate2D(latitude: 44.34472634377628, longitude:  11.71551800316731),
                        length: 4909, firstRaceYear: 1980, grandPrixHeld: 30)

let bahrain     = Track(title: "Bahrain International Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 26.031548760161094, longitude: 50.51047306750147),
                        length: 5412, firstRaceYear: 2004, grandPrixHeld: 19)

let baku        = Track(title: "Baku City Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 40.373356609918226, longitude: 49.85322317606442),
                        length: 6003, firstRaceYear: 2016, grandPrixHeld: 7)

let barcelona   = Track(title: "Circuit de Barcelona-Catalunya",
                        coordinate: CLLocationCoordinate2D(latitude: 41.568483671277406, longitude: 2.2572582816057185),
                        length: 4657, firstRaceYear: 1991, grandPrixHeld: 33)

let monaco      = Track(title: "Circuit de Monaco",
                        coordinate: CLLocationCoordinate2D(latitude: 43.773930090812, longitude: 7.456151280479985),
                        length: 3337, firstRaceYear: 1950, grandPrixHeld: 69)

let spa         = Track(title: "Circuit de Spa-Francorchamps",
                        coordinate: CLLocationCoordinate2D(latitude: 50.4446040602191, longitude: 5.965393097403064),
                        length: 7004, firstRaceYear: 1950, grandPrixHeld: 56)

let canada      = Track(title: "Circuit Gilles-Villeneuve",
                        coordinate: CLLocationCoordinate2D(latitude: 45.501693789378045, longitude: -73.52799118751362),
                        length: 4361, firstRaceYear: 1978, grandPrixHeld: 42)

let usa         = Track(title: "Circuit of the Americas",
                        coordinate: CLLocationCoordinate2D(latitude: 30.132298670055153, longitude: -97.63935219003343),
                        length: 5513, firstRaceYear: 2012, grandPrixHeld: 10)

let zandvoort   = Track(title: "Circuit Zandvoort",
                        coordinate: CLLocationCoordinate2D(latitude: 52.38905977541691, longitude: 4.541277397511062),
                        length: 4259, firstRaceYear: 1952, grandPrixHeld: 32)

let hungary     = Track(title: "Hungaroring",
                        coordinate: CLLocationCoordinate2D(latitude: 47.579997955457465, longitude: 19.24741578560972),
                        length: 4381, firstRaceYear: 1986, grandPrixHeld: 38)

let jeddah      = Track(title: "Jeddah Corniche Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 21.637075008818638, longitude: 39.10286945017903),
                        length: 6174, firstRaceYear: 2021, grandPrixHeld: 3)

let vegas       = Track(title: "Las Vegas Strip Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 36.10994104633286, longitude: -115.16143501678525),
                        length: 6120, firstRaceYear: 2023, grandPrixHeld: 0)

let qatar       = Track(title: "Losail International Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 25.48628307752597, longitude: 51.45290192515677),
                        length: 5418, firstRaceYear: 2021, grandPrixHeld: 1)

let singapore   = Track(title: "Marina Bay Street Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 1.2914426248069124, longitude: 103.86388823825332),
                        length: 5063, firstRaceYear: 2008, grandPrixHeld: 13)

let miami       = Track(title: "Miami International Autodrome",
                        coordinate: CLLocationCoordinate2D(latitude: 25.95686393067824, longitude: -80.23136151715676),
                        length: 5412, firstRaceYear: 2022, grandPrixHeld: 2)

let austria     = Track(title: "Red Bull Ring",
                        coordinate: CLLocationCoordinate2D(latitude: 47.21950115360779, longitude: 14.765179110722547),
                        length: 4318, firstRaceYear: 1970, grandPrixHeld: 37)

let china       = Track(title: "Shanghai International Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 31.32992946761292, longitude: 121.22744181001012),
                        length: 5451, firstRaceYear: 2004, grandPrixHeld: 16)

let uk          = Track(title: "Silverstone Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 52.07323462680459, longitude: -1.014684860178711),
                        length: 5891, firstRaceYear: 1950, grandPrixHeld: 58)

let japan       = Track(title: "Suzuka International Racing Course",
                        coordinate: CLLocationCoordinate2D(latitude: 34.84561108306621, longitude: 136.53901656967068),
                        length: 5807, firstRaceYear: 1987, grandPrixHeld: 32)

let abudhabi    = Track(title: "Yas Marina Circuit",
                        coordinate: CLLocationCoordinate2D(latitude: 24.469990103966342, longitude: 54.60513118702913),
                        length: 5281, firstRaceYear: 2009, grandPrixHeld: 14)

let trackList : [MKAnnotation] = [australia,monza,mexico,
                                  brazil,imola,bahrain,
                                  baku,barcelona,monaco,
                                  spa,canada,usa,zandvoort,
                                  hungary,jeddah,vegas,qatar,
                                  singapore,miami,austria,
                                  china,uk,japan,abudhabi]






