SymLink commands : Maya

MAC OSX : ln -s SOURCE_PATH TARGET_PATH

  ln -s /Users/mton/Dropbox/Code/SymLink/Maya/scripts /Users/Shared/Autodesk/maya/scripts
  ln -s /Users/mton/Dropbox/Code/SymLink/Maya/icons /Users/Shared/Autodesk/maya/icons
  ln -s /Users/mton/Dropbox/Code/SymLink/Maya/plug-ins /Users/Shared/Autodesk/maya/plug-ins

Windows : mklink /d TARGET_PATH SOURCE_PATH

  mklink /d C:\Users\<username>\Documents\maya\scripts C:\Users\<username>\Dropbox\scripts
  mklink /d C:\Users\<username>\Documents\maya\icons C:\Users\<username>\Dropbox\icons
  mklink /d C:\Users\<username>\Documents\maya\plug-ins C:\Users\<username>\Dropbox\plug-ins
