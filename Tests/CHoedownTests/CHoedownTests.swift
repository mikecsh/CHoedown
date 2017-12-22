import XCTest
@testable import CHoedown

class CHoedownTests: XCTestCase {

    // // Test Helpers


    // func addNegative(_ adder: Addable) {
    //     let added = adder.add(5, -6)
    //     XCTAssertEqual(added, -1)
    // }

    // // Test Methods
    // func testSimpleAdd() {
    //     let adder = SimpleAdd()
    //     addPositive(adder)
    //     notAdd(adder)
    //     addNegative(adder)
    // }

    func testHeading() {
        let rendered = renderMarkdownToHTML("# Heading")
        XCTAssertEqual(rendered, "<h1>Heading</h1>\n")
    }

    // func testStructAdd() {
    //     let adder = StructAdd()
    //     addPositive(adder)
    //     notAdd(adder)
    //     addNegative(adder)
    // }

    // func testPointerAdd() {
    //     let adder = PointerAdd()
    //     addPositive(adder)
    //     notAdd(adder)
    //     addNegative(adder)
    // }

    // // XCTest Case Accumulation
    // static var allTests : [(String, (ClibadderTests) -> () throws -> Void)] {
    //     return [
    //         ("testSimpleAdd", testSimpleAdd),
    //         ("testStructAdd", testStructAdd),
    //         ("testPointerAdd", testPointerAdd),
    //     ]
    // }
}