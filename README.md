# Installation

1. Copy the template folders or create a symbolic link to the GIT repo
  - Copy the VIPER Template folders to /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File\ Templates/
   OR
  - cd /path/to/VIPERTemplate/git/repo
  - sudo ln -s VIPER.xctemplate /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Source/VIPER.xctemplate
  - sudo ln -s VIPER\ Tests.xctemplate /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Source/VIPER\ Tests.xctemplate
2. Start Xcode and create a new file (File > New > File or ⌘N)
3. Choose VIPER or VIPER Test

# Architecture - Objective-C

- `Interactor.h`
- `Interactor.m`
- `InteractorProtocols.h` - Interactor Input protocol
- `Presenter.h`
- `Presenter.m`
- `PresenterProtocols.h` - Interactor Output, Presenter Interface, Routing protocols
- `View.h`
- `View.m`
- `ViewProtocols.h` - View Interface protocol
- `Wireframe.h`
- `Wireframe.m`
- `WireframeProtocols.h` - Module Delegate and Wireframe Interface protocols

# Architecture - Swift

- `Interactor.swift` - Interactor class and Interactor Input protocol
- `Presenter.swift` - Presenter class, Interactor Output, Presenter Interface and Routing protocols
- `View.swift` - View class, View Interface protocol
- `Wireframe.swift` - Wireframe class, Module Delegate and Wireframe Interface protocols

# TODO

- Swift test template files
