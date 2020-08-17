# UniDragAndDropForMac

I made drag and drop available in a Mac app exported from Unity.

![macDD](https://user-images.githubusercontent.com/144386/90157635-ec8bbd00-ddc8-11ea-94f7-de721cf3e832.gif)


## Usage

```cs
// Required once
UniDragAndDrop.Initialize();

UniDragAndDrop.onDragAndDropFilePath = x => {
    // Do Something..
};
```

Only mono build.

## Install

Import [UniDragAndDropForMac.unitypackage](https://github.com/baobao/UniDragAndDropForMac/releases).


## License

This library is under the MIT License.
