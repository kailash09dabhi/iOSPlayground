// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let countryList = try CountryList(json)

//
// To read values from URLs:
//
//   let task = URLSession.shared.countryListElementTask(with: url) { countryListElement, response, error in
//     if let countryListElement = countryListElement {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - CountryListElement
struct CountryListElement: Codable {
    let name: String
    let topLevelDomain: [String]
    let alpha2Code, alpha3Code: String
    let callingCodes: [String]
    let capital: String
    let altSpellings: [String]
    let region: Region
    let subregion: String
    let population: Int
    let latlng: [Double]
    let demonym: String
    let area, gini: Double?
    let timezones, borders: [String]
    let nativeName: String
    let numericCode: String?
    let currencies: [Currency]
    let languages: [Language]
    let translations: Translations
    let flag: String
    let regionalBlocs: [RegionalBloc]
    let cioc: String?
}

// MARK: CountryListElement convenience initializers and mutators

extension CountryListElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CountryListElement.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        name: String? = nil,
        topLevelDomain: [String]? = nil,
        alpha2Code: String? = nil,
        alpha3Code: String? = nil,
        callingCodes: [String]? = nil,
        capital: String? = nil,
        altSpellings: [String]? = nil,
        region: Region? = nil,
        subregion: String? = nil,
        population: Int? = nil,
        latlng: [Double]? = nil,
        demonym: String? = nil,
        area: Double?? = nil,
        gini: Double?? = nil,
        timezones: [String]? = nil,
        borders: [String]? = nil,
        nativeName: String? = nil,
        numericCode: String?? = nil,
        currencies: [Currency]? = nil,
        languages: [Language]? = nil,
        translations: Translations? = nil,
        flag: String? = nil,
        regionalBlocs: [RegionalBloc]? = nil,
        cioc: String?? = nil
        ) -> CountryListElement {
        return CountryListElement(
            name: name ?? self.name,
            topLevelDomain: topLevelDomain ?? self.topLevelDomain,
            alpha2Code: alpha2Code ?? self.alpha2Code,
            alpha3Code: alpha3Code ?? self.alpha3Code,
            callingCodes: callingCodes ?? self.callingCodes,
            capital: capital ?? self.capital,
            altSpellings: altSpellings ?? self.altSpellings,
            region: region ?? self.region,
            subregion: subregion ?? self.subregion,
            population: population ?? self.population,
            latlng: latlng ?? self.latlng,
            demonym: demonym ?? self.demonym,
            area: area ?? self.area,
            gini: gini ?? self.gini,
            timezones: timezones ?? self.timezones,
            borders: borders ?? self.borders,
            nativeName: nativeName ?? self.nativeName,
            numericCode: numericCode ?? self.numericCode,
            currencies: currencies ?? self.currencies,
            languages: languages ?? self.languages,
            translations: translations ?? self.translations,
            flag: flag ?? self.flag,
            regionalBlocs: regionalBlocs ?? self.regionalBlocs,
            cioc: cioc ?? self.cioc
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.currencyTask(with: url) { currency, response, error in
//     if let currency = currency {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Currency
struct Currency: Codable {
    let code, name, symbol: String?
}

// MARK: Currency convenience initializers and mutators

extension Currency {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Currency.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        code: String?? = nil,
        name: String?? = nil,
        symbol: String?? = nil
        ) -> Currency {
        return Currency(
            code: code ?? self.code,
            name: name ?? self.name,
            symbol: symbol ?? self.symbol
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.languageTask(with: url) { language, response, error in
//     if let language = language {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Language
struct Language: Codable {
    let iso6391: String?
    let iso6392, name, nativeName: String
    
    enum CodingKeys: String, CodingKey {
        case iso6391 = "iso639_1"
        case iso6392 = "iso639_2"
        case name, nativeName
    }
}

// MARK: Language convenience initializers and mutators

extension Language {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Language.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        iso6391: String?? = nil,
        iso6392: String? = nil,
        name: String? = nil,
        nativeName: String? = nil
        ) -> Language {
        return Language(
            iso6391: iso6391 ?? self.iso6391,
            iso6392: iso6392 ?? self.iso6392,
            name: name ?? self.name,
            nativeName: nativeName ?? self.nativeName
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case asia = "Asia"
    case empty = ""
    case europe = "Europe"
    case oceania = "Oceania"
    case polar = "Polar"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.regionalBlocTask(with: url) { regionalBloc, response, error in
//     if let regionalBloc = regionalBloc {
//       ...
//     }
//   }
//   task.resume()

// MARK: - RegionalBloc
struct RegionalBloc: Codable {
    let acronym: Acronym
    let name: Name
    let otherAcronyms: [OtherAcronym]
    let otherNames: [OtherName]
}

// MARK: RegionalBloc convenience initializers and mutators

extension RegionalBloc {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RegionalBloc.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        acronym: Acronym? = nil,
        name: Name? = nil,
        otherAcronyms: [OtherAcronym]? = nil,
        otherNames: [OtherName]? = nil
        ) -> RegionalBloc {
        return RegionalBloc(
            acronym: acronym ?? self.acronym,
            name: name ?? self.name,
            otherAcronyms: otherAcronyms ?? self.otherAcronyms,
            otherNames: otherNames ?? self.otherNames
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Acronym: String, Codable {
    case al = "AL"
    case asean = "ASEAN"
    case au = "AU"
    case cais = "CAIS"
    case caricom = "CARICOM"
    case cefta = "CEFTA"
    case eeu = "EEU"
    case efta = "EFTA"
    case eu = "EU"
    case nafta = "NAFTA"
    case pa = "PA"
    case saarc = "SAARC"
    case usan = "USAN"
}

enum Name: String, Codable {
    case africanUnion = "African Union"
    case arabLeague = "Arab League"
    case associationOfSoutheastAsianNations = "Association of Southeast Asian Nations"
    case caribbeanCommunity = "Caribbean Community"
    case centralAmericanIntegrationSystem = "Central American Integration System"
    case centralEuropeanFreeTradeAgreement = "Central European Free Trade Agreement"
    case eurasianEconomicUnion = "Eurasian Economic Union"
    case europeanFreeTradeAssociation = "European Free Trade Association"
    case europeanUnion = "European Union"
    case northAmericanFreeTradeAgreement = "North American Free Trade Agreement"
    case pacificAlliance = "Pacific Alliance"
    case southAsianAssociationForRegionalCooperation = "South Asian Association for Regional Cooperation"
    case unionOfSouthAmericanNations = "Union of South American Nations"
}

enum OtherAcronym: String, Codable {
    case eaeu = "EAEU"
    case sica = "SICA"
    case unasul = "UNASUL"
    case unasur = "UNASUR"
    case uzan = "UZAN"
}

enum OtherName: String, Codable {
    case accordDeLibreÉchangeNordAméricain = "Accord de Libre-échange Nord-Américain"
    case alianzaDelPacífico = "Alianza del Pacífico"
    case caribischeGemeenschap = "Caribische Gemeenschap"
    case communautéCaribéenne = "Communauté Caribéenne"
    case comunidadDelCaribe = "Comunidad del Caribe"
    case jāmiAtAdDuwalAlArabīyah = "Jāmiʻat ad-Duwal al-ʻArabīyah"
    case leagueOfArabStates = "League of Arab States"
    case sistemaDeLaIntegraciónCentroamericana = "Sistema de la Integración Centroamericana,"
    case southAmericanUnion = "South American Union"
    case tratadoDeLibreComercioDeAméricaDelNorte = "Tratado de Libre Comercio de América del Norte"
    case umojaWaAfrika = "Umoja wa Afrika"
    case unieVanZuidAmerikaanseNaties = "Unie van Zuid-Amerikaanse Naties"
    case unionAfricaine = "Union africaine"
    case uniãoAfricana = "União Africana"
    case uniãoDeNaçõesSulAmericanas = "União de Nações Sul-Americanas"
    case uniónAfricana = "Unión Africana"
    case uniónDeNacionesSuramericanas = "Unión de Naciones Suramericanas"
    case الاتحادالأفريقي = "الاتحاد الأفريقي"
    case جامعةالدولالعربية = "جامعة الدول العربية"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.translationsTask(with: url) { translations, response, error in
//     if let translations = translations {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Translations
struct Translations: Codable {
    let de, es, fr, ja: String?
    let it: String?
    let br, pt: String
    let nl, hr: String?
    let fa: String
}

// MARK: Translations convenience initializers and mutators

extension Translations {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Translations.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func with(
        de: String?? = nil,
        es: String?? = nil,
        fr: String?? = nil,
        ja: String?? = nil,
        it: String?? = nil,
        br: String? = nil,
        pt: String? = nil,
        nl: String?? = nil,
        hr: String?? = nil,
        fa: String? = nil
        ) -> Translations {
        return Translations(
            de: de ?? self.de,
            es: es ?? self.es,
            fr: fr ?? self.fr,
            ja: ja ?? self.ja,
            it: it ?? self.it,
            br: br ?? self.br,
            pt: pt ?? self.pt,
            nl: nl ?? self.nl,
            hr: hr ?? self.hr,
            fa: fa ?? self.fa
        )
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias CountryList = [CountryListElement]

extension Array where Element == CountryList.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CountryList.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }
    
    func countryListTask(with url: URL, completionHandler: @escaping (CountryList?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}
