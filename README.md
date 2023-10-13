# Accessibility Identifier Implementation

This documentation explains how to implement accessibility identifiers for different types of UI components, including `UIViewController`, `UITableViewCell`, `UICollectionViewCell`, and `UIView`. By utilizing the provided code structure, you can simplify the process of setting accessibility identifiers.


## Base UIViewController

To set accessibility identifiers for your view controllers, follow these steps:

1. Create a new custom view controller class that inherits from BaseViewController. This base class sets accessibility identifiers automatically. For example:

    ```swift
    class BaseViewController: UIViewController {
        override func viewDidLoad() {
        super.viewDidLoad()
            DispatchQueue.main.async {
                AccessibilityIdentifierHelper.setAccessibilityIdentifierController(for: self)
            }
        }
    }
    class BasePopupBottomViewController: BottomPopupViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
                DispatchQueue.global(qos: .userInitiated).async {
                    AccessibilityIdentifierHelper.setAccessibilityIdentifierController(for: self)
                }
        }
    }
    class YourCustomViewController: BaseViewController {}
    
   
## Base UICollectionViewCell

To set accessibility identifiers for your custom collection view cells, follow these steps:

2. Create a new custom collection view cell class that inherits from `BaseCollectionViewCell`. This base class sets accessibility identifiers automatically. For example:

    ```swift
    class BaseCollectionViewCell: UICollectionViewCell {
        override func awakeFromNib() {
            super.awakeFromNib()
            AccessibilityIdentifierHelper.setAccessibilityIdentifierCollectionViewCell(for: self)
        }
    }
     class YourCustomCollectionViewCell: BaseCollectionViewCell {}
    

## Base UITableViewCell

To set accessibility identifiers for your custom table view cells, follow these steps:

3. Create a new custom table view cell class that inherits from `BaseTableViewCell`. This base class sets accessibility identifiers automatically. For example:

    class BaseTableViewCell: UITableViewCell {
        override func awakeFromNib() {
            super.awakeFromNib()
            DispatchQueue.main.async {
                AccessibilityIdentifierHelper.setAccessibilityIdentifierTableViewCell(for: self)
            }
        }
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }
    
    }
     class YourCustomTableViewCell: BaseTableViewCell {}
   
## Base UIView

To set accessibility identifiers for custom UIView components, use the following method:

4. Create a custom UIView class that inherits from BaseView. This base class will automatically set accessibility identifiers. For example:

    class BaseView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupUniqueIdentifier()
        }
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setupUniqueIdentifier()
        }
        private func setupUniqueIdentifier() {
            DispatchQueue.main.async {
                AccessibilityIdentifierHelper.setAccessibilityIdentifierView(for: self)
            }
        }
    }
     class YourCustomView: BaseView {}
   
