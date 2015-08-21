# GNTextFieldsCollectionManager

[![CI Status](http://img.shields.io/travis/Jakub Knejzlik/GNTextFieldsCollectionManager.svg?style=flat)](https://travis-ci.org/Jakub Knejzlik/GNTextFieldsCollectionManager)
[![Version](https://img.shields.io/cocoapods/v/GNTextFieldsCollectionManager.svg?style=flat)](http://cocoapods.org/pods/GNTextFieldsCollectionManager)
[![License](https://img.shields.io/cocoapods/l/GNTextFieldsCollectionManager.svg?style=flat)](http://cocoapods.org/pods/GNTextFieldsCollectionManager)
[![Platform](https://img.shields.io/cocoapods/p/GNTextFieldsCollectionManager.svg?style=flat)](http://cocoapods.org/pods/GNTextFieldsCollectionManager)

## Usage

GNTextFieldsCollectionManager handles textFields automaticaly, so the basic setup could be this:

```
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.textFieldManager = [[GNTextFieldsCollectionManager alloc] initWithView:self.view];
}
```

Usualy You will need to get handle last field Return key. Delegate can be used for this:

```
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.textFieldManager = [[GNTextFieldsCollectionManager alloc] initWithView:self.view];
    self.textFieldManager.delegate = self; // GNTextFieldsCollectionManagerDelegate protocol
}

-(void)textFieldsCollectionManager:(GNTextFieldsCollectionManager *)manager lastTextFieldShouldReturn:(UITextField *)textField;{
    // ...
}
```

### Note

Important thing is that the manager assigns itself as delegate of all used textFields.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

GNTextFieldsCollectionManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GNTextFieldsCollectionManager"
```

## Author

Jakub Knejzlik, jakub.knejzlik@gmail.com

## License

GNTextFieldsCollectionManager is available under the MIT license. See the LICENSE file for more info.
