import XCTest
@testable import EasyLayout

final class EasyLayoutTests: XCTestCase {
    
    func testViewPosition() throws {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.left = 100
        view.top = 50
        XCTAssertEqual(view.frame.origin.x, 100)
        XCTAssertEqual(view.frame.origin.y, 50)
        view.right = 200
        view.bottom = 150
        XCTAssertEqual(view.left, 150)
        XCTAssertEqual(view.top, 100)
        view.centerX = 150
        view.centerY = 150
        XCTAssertEqual(view.left, 125)
        XCTAssertEqual(view.top, 125)
        XCTAssertEqual(view.right, 175)
        XCTAssertEqual(view.bottom, 175)
    }
}
