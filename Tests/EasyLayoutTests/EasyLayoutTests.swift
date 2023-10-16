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
    
    func testViewShape() throws {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 80)
        
        XCTAssertEqual(view.width, 100)
        XCTAssertEqual(view.height, 80)
        XCTAssertEqual(view.size, CGSize(width: 100, height: 80))
        
        view.width = 200
        view.height = 100
        
        XCTAssertEqual(view.frame.size.width, 200)
        XCTAssertEqual(view.frame.size.height, 100)
        
        view.size = CGSize(width: 120, height: 60)
        
        XCTAssertEqual(view.frame.size.width, 120)
        XCTAssertEqual(view.frame.size.height, 60)
    }
}
