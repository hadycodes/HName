//
//  HNameCodableTests.swift
//  
//
//  Created by Hady Nourallah on 2021-09-29.
//

import Foundation
import XCTest
@testable import HName

struct Person: Codable {
    let name: HName
    let age: Int
}

final class HNameCodableTests: XCTestCase {
    func testDecodePerson() {
        let personJson = #"{"name": "Hady Nourallah", "age": 99}"#.data(using: .utf8)!
        if let decodedPerson = try? JSONDecoder().decode(Person.self, from: personJson) {
            XCTAssertEqual(decodedPerson.name, "Hady Nourallah")
            XCTAssertEqual(decodedPerson.name.firstName, "Hady")
        } else {
            XCTAssert(true)
        }
    }
    
    func testDecodedPersonList() {
        let personJson = #"[{"name": "Hady Nourallah", "age": 99}, {"name": "Henry Hamid", "age": 99}]"#.data(using: .utf8)!
        if let decodedPerson = try? JSONDecoder().decode([Person].self, from: personJson) {
            XCTAssertEqual(decodedPerson.first?.name, "Hady Nourallah")
            XCTAssertEqual(decodedPerson.first?.name.firstName, "Hady")
        } else {
            XCTAssert(true)
        }
    }
    
    func testEncodePerson() {
        let person = Person(name: "Hady Nourallah", age: 99)
        if let data = try? JSONEncoder().encode(person) {
            let decodedPerson = try? JSONDecoder().decode(Person.self, from: data)
            XCTAssertEqual(decodedPerson?.name, person.name)
            XCTAssertEqual(decodedPerson?.name, "Hady Nourallah")

        } else {
            XCTAssert(true)
        }
    }
}
