@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
	color a
echo.        
echo Success: Administrative permissions confirmed.
echo.
	echo Beginning the Mass Copy process

echo.
echo.
echo.
echo    ******                **                 **                
echo   **////**              /**                /**       **   **  
echo  **    //   ******      /**  *****         /**      //** **   
echo /**        **////**  ****** **///**        /******   //***    
echo /**       /**   /** **///**/*******        /**///**   /**     
echo //**    **/**   /**/**  /**/**////         /**  /**   **      
echo  //****** //****** //******//******        /******   **       
echo   //////   //////   //////  //////         /////    //        
echo.                                                                                                                                                                                                                                          
echo.                                                              
echo  ********          **   **                                    
echo /**/////          //   /**                                    
echo /**       ******   **  /**  **                                
echo /******* //**//*  /**  /** **                                 
echo /**////   /** /   /**  /****                                  
echo /**       /**     /**  /**/**                                 
echo /********/***     /**  /**//**                                
echo //////// ///      //   //  //                                     

	goto Copy_Process
    ) else (
	color c
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
	powershell write-host -fore Cyan Try Again.. But Right-Click EZCopy and select "Run As Administrator".

pause >nul
EXIT
    )


:Copy_Process
color b
SETLOCAL ENABLEDELAYEDEXPANSION
SET count=1
FOR /F "tokens=* USEBACKQ" %%F IN (`wmic bios get serialnumber`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)
set var3=%var2: =%
echo %var3%>>%desktop%\backpath.txt
mkdir x:\_autoprofile\%var2% > nul 2> nul
set backpath=x:\_autoprofile\%var3%
x:
cd _autoprofile\%var3%
echo.
powershell write-host -fore Green -------------------- Begining EZCopy! ------------------------
powershell write-host -fore Yellow ---------------- This might take a while... ------------------------
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying My Music ------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying My Music folder...

@robocopy %userprofile%\Music %backpath%\Music /b /mir /mt /r:0 /w:0>>%backpath%\results.txt

@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying My Pictures------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying My Pictures folder...

@robocopy %userprofile%\Pictures %backpath%\Pictures /b /mir /mt /r:0 /w:0>>%backpath%\results.txt

@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying My Documents ------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying My Documents folder...


@robocopy %userprofile%\Documents %backpath%\Documents /b /mir /mt /r:0 /w:0>>%backpath%\results.txt

@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying My Videos ------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying My Videos folder...


@robocopy %userprofile%\Videos %backpath%\Videos /b /mir /mt /r:0 /w:0>>%backpath%\results.txt

@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying Desktop ------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying Desktop folder...

@robocopy %userprofile%\Desktop %backpath%\Desktop /b /mir /mt /r:0 /w:0>>%backpath%\results.txt


@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying Downloads Folder------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying Downloads folder...


@robocopy %userprofile%\Downloads %backpath%\Downloads /b /mir /mt /r:0 /w:0>>%backpath%\results.txt

@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo -------------------- Copying Favorites Sidebar / Links------------------------>>results.txt
@echo %date%>>results.txt
@echo %time%>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo.>>results.txt
@echo Copying Favorites Sidebar...


@robocopy %userprofile%\Links %backpath%\Links /b /mir /mt /r:0 /w:0>>%backpath%\results.txt
@echo DONE!
color a
@echo %date%>>last_ran_%date%.txt

goto Release_To_User
:End_Early
echo.
echo.
echo Ending Early

:Release_To_User
cmd /k
ENDLOCAL