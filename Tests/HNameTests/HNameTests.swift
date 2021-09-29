    import XCTest
    @testable import HName

    final class HNameTests: XCTestCase {
        func testFirstName() {
            let name: HName = "Hady Nourallah"
            XCTAssertEqual("Hady", name.firstName)
        }
        
        func testLastName() {
            let name: HName = "Hady Nourallah"
            XCTAssertEqual("Nourallah", name.lastName)
        }
        
        func testNoLastName() {
            let name: HName = "Hady"
            XCTAssertEqual(nil, name.lastName)
        }
        
        func testAbbriviation() {
            let name = "Mr John Jacob Smith III" as HName
            XCTAssertEqual("JS", name.abbrivation)
        }
    }
