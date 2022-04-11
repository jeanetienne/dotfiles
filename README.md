dotfiles
========

Set of scripts to setup a Mac.

# Setting up a computer

1. Install macOS
2. Create main account
3. Download Xcode (from [Mac App Store](https://apps.apple.com/au/app/xcode/id497799835) or directly from [Apple Developer's page](https://developer.apple.com/download/all/?q=Xcode)).
4. Expand the `.xip` archive with `xip -x Xcode.xip` ([more instructions](https://blog.kulman.sk/faster-way-to-download-and-install-xcode/))
5. Download a zip of this repo, open Terminal.app and navigate to the folder. Then type:
    ```
    ./deploy.sh
    ```

    Alternatively, type the following in Terminal:

    ```
    curl -LOk https://github.com/jeanetienne/dotfiles/archive/master.zip; unzip master.zip; cd dotfiles-master/; ./deploy.sh
    ```

    It *should* work.
