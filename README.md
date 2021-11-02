# Directory Lister

**Directory Lister** is a BatchScript that is used to list the files and folders from the selected folder.

## Usage

1. Run the script by double-clicking it.
2. Drag and drop the folder into it.
3. Press *Enter*.
4. Notepad will open showing the listing of the folder.

## Distribution

For the script distribution it is required to have:

1. [Node.js](https://nodejs.org/en/)
2. [Gulp.js](https://gulpjs.com/)

If Node.js is installed go to the project root folder and install all dependencies for the project by typing the following command inside the *Terminal*:

```
npm install
```

To start the build process make sure that you are in the project root folder and then type the following command inside the *Terminal*:

```
gulp
```

or just double-click the **distributeProject.bat** file.

*gulpfile.js* is already configured.

When the build process is finished all scripts will be located inside the *dist* folder ready for distribution.