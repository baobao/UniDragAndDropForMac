# UniDragAndDropForMac

I made drag and drop available in the Mac app.

![macDD](https://user-images.githubusercontent.com/144386/90157635-ec8bbd00-ddc8-11ea-94f7-de721cf3e832.gif)


## Usage

```cs
// Required once
UniDragAndDrop.Initialize();

UniDragAndDrop.onDragAndDropFilePath = x => {
    // Do Something..
};
```

## Install via git URL

After Unity 2019.3.4f1, Unity 2020.1a21, that support path query parameter of git package. You can add `https://github.com/baobao/uni-drag-and-drop.git?path=UniDragAndDrop/Assets/UniDragAndDrop` to Package Manager

![image](https://user-images.githubusercontent.com/144386/87669945-d11d9a00-c7a9-11ea-8a21-aff2cb8117f8.png)

or add `"info.shibuya24.utility.unidraganddrop":"https://github.com/baobao/uni-drag-and-drop.git?path=UniDragAndDrop/Assets/UniDragAndDrop"` to `Packages/manifest.json`.



## License

This library is under the MIT License.
