@echo off
MOVE Image.bmp "%userprofile%\Appdata\Image.bmp"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /f /t REG_SZ /d "%userprofile%\Appdata\Image.bmp"
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /f /t REG_SZ /d 10
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
