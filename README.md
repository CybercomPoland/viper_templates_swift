This is project used to create templates of VIPER architecture for Swift language

In order to install template, run install.sh script (it will also replace (DELETE) previous version of template if already installed):
1. open terminal
2. change directory to directory containing install.sh and *.xctemplate files
3. run script:
    sh install.sh

 
Adding new module:
1. go to Xcode and choose File->New->File... VIPER
2. choose module name and destination directory, click create
3. right now your module is added as 'Bundle Resource' (target Build Phases tab). To fix that and add source files to 'Compile Sources' phase follow the next steps:  
4. select module folder in Xcode Project Navigator and Delete it by 'Remove References'
5. add module folder to Project Navigator using option 'Create Group'
6. now your module is ready. Notice that in generated code you might find <#todo#> markups - please follow those instructions to keep your code bug free.


 
instalation directory:
~/Library/Developer/Xcode/Templates/Custom/ViperModule

In order to generate new version of this template:
1. edit files located in ./ViperModuleTemplate/ViperModule directory
2. remove all files (except configuration files: TemplateIcon.png, TemplateIcon@2x.png and TemplateInfo.plist) from VIPER.xctemplate directory
3. if you (by mistake) deleted ALL files form VIPER.xctemplate, copy of configuration files is located in ./ConfigurationFiles directory
4. copy new set of template files from ./ViperModuleTemplate/ViperModule directory to VIPER.xctemplate
5. new template directory is ready - now you can install template automatically or copy it manually to directory 'instalation directory' (path above)
6. don't forget to commit your changes - new branch would be perfect if you significantly alter functionality 

When editing files keep in your mind few things:
1. ___FILEBASENAME___ in filename is a placeholder and will be replaced with your module name
2. ___FILEBASENAMEASIDENTIFIER___ is a placeholder used inside files
3. files you add as template should have generic header:

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

