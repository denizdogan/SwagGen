//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Zoo: APIModel {

    public var allOfDog: Dog?

    public var anyOfDog: Dog?

    public var inlineAnimal: Animal?

    public var inlineAnimals: [InlineAnimals]?

    public var manager: Manager?

    public var oneOfDog: Dog?

    public var schemaAnimals: [SingleAnimal]?

    public enum InlineAnimals: Codable, Equatable {
        case cat(Cat)
        case dog(Dog)

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)
            let discriminator: String = try container.decode("type")
            switch discriminator {
            case "Cat":
                self = .cat(try Cat(from: decoder))
            case "Dog":
                self = .dog(try Dog(from: decoder))
            default:
                throw DecodingError.dataCorrupted(DecodingError.Context.init(codingPath: decoder.codingPath, debugDescription: "Couldn't find type to decode with discriminator \(discriminator)"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .cat(let content):
                try container.encode(content)
            case .dog(let content):
                try container.encode(content)
            }
        }
    }

    public class Manager: User {

        public var value: Value?

        public class Value: APIModel {

            public var id: String

            public init(id: String) {
                self.id = id
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                id = try container.decode("id")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(id, forKey: "id")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Value else { return false }
              guard self.id == object.id else { return false }
              return true
            }

            public static func == (lhs: Value, rhs: Value) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(id: Int? = nil, name: String? = nil, value: Value? = nil) {
            self.value = value
            super.init(id: id, name: name)
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            value = try container.decodeIfPresent("value")
            try super.init(from: decoder)
        }

        public override func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(value, forKey: "value")
            try super.encode(to: encoder)
        }

        override public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Manager else { return false }
          guard self.value == object.value else { return false }
          return super.isEqual(to: object)
        }
    }

    public init(allOfDog: Dog? = nil, anyOfDog: Dog? = nil, inlineAnimal: Animal? = nil, inlineAnimals: [InlineAnimals]? = nil, manager: Manager? = nil, oneOfDog: Dog? = nil, schemaAnimals: [SingleAnimal]? = nil) {
        self.allOfDog = allOfDog
        self.anyOfDog = anyOfDog
        self.inlineAnimal = inlineAnimal
        self.inlineAnimals = inlineAnimals
        self.manager = manager
        self.oneOfDog = oneOfDog
        self.schemaAnimals = schemaAnimals
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        allOfDog = try container.decodeIfPresent("allOfDog")
        anyOfDog = try container.decodeIfPresent("anyOfDog")
        inlineAnimal = try container.decodeIfPresent("inlineAnimal")
        inlineAnimals = try container.decodeArrayIfPresent("inlineAnimals")
        manager = try container.decodeIfPresent("manager")
        oneOfDog = try container.decodeIfPresent("oneOfDog")
        schemaAnimals = try container.decodeArrayIfPresent("schemaAnimals")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(allOfDog, forKey: "allOfDog")
        try container.encodeIfPresent(anyOfDog, forKey: "anyOfDog")
        try container.encodeIfPresent(inlineAnimal, forKey: "inlineAnimal")
        try container.encodeIfPresent(inlineAnimals, forKey: "inlineAnimals")
        try container.encodeIfPresent(manager, forKey: "manager")
        try container.encodeIfPresent(oneOfDog, forKey: "oneOfDog")
        try container.encodeIfPresent(schemaAnimals, forKey: "schemaAnimals")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Zoo else { return false }
      guard self.allOfDog == object.allOfDog else { return false }
      guard self.anyOfDog == object.anyOfDog else { return false }
      guard self.inlineAnimal == object.inlineAnimal else { return false }
      guard self.inlineAnimals == object.inlineAnimals else { return false }
      guard self.manager == object.manager else { return false }
      guard self.oneOfDog == object.oneOfDog else { return false }
      guard self.schemaAnimals == object.schemaAnimals else { return false }
      return true
    }

    public static func == (lhs: Zoo, rhs: Zoo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
