import Foundation

@objc public class HName: NSObject, ExpressibleByStringLiteral, Codable {
    public let name: String
    internal let personComponents: PersonNameComponents?
    
    
    required public init(stringLiteral value: String) {
        name = value
        let formatter = PersonNameComponentsFormatter()
        personComponents = formatter.personNameComponents(from: value)
    }
    
    public override var description: String {
        return name
    }
    
     public convenience required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let value = try container.decode(String.self)
        self.init(stringLiteral: value)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(name)
    }
    
    public override var hash: Int {
        return name.hash
    }
    
    public override func isEqual(_ object: Any?) -> Bool {
        if let object = object as? HName {
            return object.name == name
        }
        
        return false
    }
}
