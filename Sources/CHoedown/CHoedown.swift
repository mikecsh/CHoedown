import libhoedown
import Foundation

func renderMarkdownToHTML(_ inputString: String) -> String {
    let workingNSString = inputString as NSString
    let hoeStart = clock()
    let extensions: hoedown_extensions = hoedown_extensions(HOEDOWN_EXT_TABLES.rawValue | HOEDOWN_EXT_SUPERSCRIPT.rawValue | HOEDOWN_EXT_MATH.rawValue | HOEDOWN_EXT_MATH_EXPLICIT.rawValue)
    let renderer = hoedown_html_renderer_new(hoedown_html_flags(0), 0)
    let document = hoedown_document_new(renderer, extensions, 16)
    let htmlBuffer = hoedown_buffer_new(16)
//        let smartyBuffer = hoedown_buffer_new(16)
    var markdownData = workingNSString.data(using: String.Encoding.utf8.rawValue)

    markdownData?.withUnsafeBytes {(bytes: UnsafePointer<UInt8>) -> Void in
        hoedown_document_render(document, htmlBuffer, bytes, markdownData!.count)
//            hoedown_html_smartypants(smartyBuffer, body, 16)
    }

    let htmlString = String.init(utf8String: hoedown_buffer_cstr(htmlBuffer))
    hoedown_buffer_free(htmlBuffer)
//        hoedown_buffer_free(smartyBuffer)
    hoedown_document_free(document)
    hoedown_html_renderer_free(renderer)

    let timeForHoeParse = (Double(clock()) - Double(hoeStart)) / Double(CLOCKS_PER_SEC)
    print("\tMarkdown parse took \(timeForHoeParse) seconds with Hoedown")

    return htmlString ?? ""
}