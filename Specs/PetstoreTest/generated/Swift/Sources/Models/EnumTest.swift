//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EnumTest: Codable, Equatable {

    public enum EnumInteger: Int, Codable {
        case _1 = 1
        case negative1 = -1

        public static let cases: [EnumInteger] = [
          ._1,
          .negative1,
        ]
    }

    public enum EnumNumber: Double, Codable {
        case _11 = 1.1
        case negative12 = -1.2

        public static let cases: [EnumNumber] = [
          ._11,
          .negative12,
        ]
    }

    public enum EnumString: String, Codable {
        case upper = "UPPER"
        case lower = "lower"
        case lessThannullgreaterThan = "<null>"

        public static let cases: [EnumString] = [
          .upper,
          .lower,
          .lessThannullgreaterThan,
        ]
    }

    public var enumInteger: EnumInteger?

    public var enumNumber: EnumNumber?

    public var enumString: EnumString?

    public var outerEnum: OuterEnum?

    public init(enumInteger: EnumInteger? = nil, enumNumber: EnumNumber? = nil, enumString: EnumString? = nil, outerEnum: OuterEnum? = nil) {
        self.enumInteger = enumInteger
        self.enumNumber = enumNumber
        self.enumString = enumString
        self.outerEnum = outerEnum
    }

    private enum CodingKeys: String, CodingKey {
        case enumInteger = "enum_integer"
        case enumNumber = "enum_number"
        case enumString = "enum_string"
        case outerEnum
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        enumInteger = try container.decodeIfPresent(.enumInteger)
        enumNumber = try container.decodeIfPresent(.enumNumber)
        enumString = try container.decodeIfPresent(.enumString)
        outerEnum = try container.decodeIfPresent(.outerEnum)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(enumInteger, forKey: .enumInteger)
        try container.encodeIfPresent(enumNumber, forKey: .enumNumber)
        try container.encodeIfPresent(enumString, forKey: .enumString)
        try container.encodeIfPresent(outerEnum, forKey: .outerEnum)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EnumTest else { return false }
      guard self.enumInteger == object.enumInteger else { return false }
      guard self.enumNumber == object.enumNumber else { return false }
      guard self.enumString == object.enumString else { return false }
      guard self.outerEnum == object.outerEnum else { return false }
      return true
    }

    public static func == (lhs: EnumTest, rhs: EnumTest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}