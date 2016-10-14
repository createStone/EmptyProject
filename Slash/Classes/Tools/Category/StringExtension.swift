import Foundation
import UIKit

// MARK: - 计算文字高度
extension String{
    // MARK: - 计算文字的高度
    func stringHeightWith(fontSize:CGFloat,width:CGFloat)->CGFloat{
        
        let font = UIFont.systemFont(ofSize: fontSize);
        let size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude);
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping;
        let attributes = [NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle.copy()]
        let text = self as NSString
        let rect = text.boundingRect(with: size, options:.usesLineFragmentOrigin, attributes: attributes, context:nil)
        
        return rect.size.height + 1;
    }
}
// MARK: - 字符串截取
extension String{
    func extSubString(to:Int) -> String{
        return (self as NSString).substring(to: to);
    }
    func length() ->Int {
        return (self as NSString).length;
    }
}
