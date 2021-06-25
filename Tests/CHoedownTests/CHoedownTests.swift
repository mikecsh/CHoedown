import XCTest
@testable import CHoedown

class CHoedownTests: XCTestCase {

    func testHeading() {
        let rendered = renderMarkdownToHTML("# Heading")
        XCTAssertEqual(rendered, "<h1>Heading</h1>\n")
    }
    
    func testSmarty() {
        let rendered = renderMarkdownToHTML("\"Heading\"")
        XCTAssertEqual(rendered, "<p>&quot;Heading&quot;</p>\n")
    }

}
