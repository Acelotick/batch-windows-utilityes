@echo off
chcp 65001
title Менеджер Windows от Витали
:start
cls
:start2
echo 1. Блокировка доступа
echo 2. Разблокировка доступа
echo 3. Активировать Windows
echo 4. Полезные функции
echo.
echo 5. Личный бустер ос (скоро..)
echo.
echo 0. Перейти в командную строку
echo.
set /p "a=Что вы будете делать: "
if "%a%"=="0" (cls
    @cmd)
if "%a%"=="1" (goto blocking)
if "%a%"=="2" (goto unblocking)
if "%a%"=="3" (goto activating)
if "%a%"=="4" (goto other)
if "%a%"=="5" (goto booster)
goto start
cls
:functions
cls
echo 1. Панель задач
echo 2. Диспетчер задач
echo 3. Командная строка и пакетные файлы
echo 4. Редактор реестра
echo 5. Изменение обоев рабочего стола
echo 6. Работа USB накопителей
echo 7. Изменение настроек прокси
echo 8. Изменение настроек панели задач
echo 9. Установка и удаление програм
echo 10. Кнопка выключения
echo 11. Выполнить (Win + R)
echo 12. Изменение даты
echo 13. Доступ к сетевым настройкам
echo 14. Изменения в панели инструментов
echo 15. Доступ к диску C:\
echo 16. Экран настроек
echo 17. Доступ к файлу hosts
echo 18. Изменение пароля
echo 19. Панель управления настройками сети
echo 20. Панель управления папками и файлами
echo 21. Съёмные носители
echo 22. Системные параметры
echo 23. Настройки WI-FI
echo 24. Удалённый рабочий стол
echo 25. Смена темы Windows
echo 26. Центр поддержки
echo 27. Отображение имени пользователя
echo 28. Установка новых шрифтов
echo 29. Удаление учётных записей
echo 30. Доступ к дискам (все)
echo 31. Контекстное меню правой кнопки мыши
echo 32. Смена пользователя
echo 33. Добавление новых принтеров
echo 34. Параметры экрана
echo 35. Сетевые подключения
echo 35. Использование Bluetooth
echo 35. Настройки звука
echo.
echo 0. Выход из панели функций
echo.
if "%a%"=="1" (goto blockingstart)
if "%a%"=="2" (goto unblockingstart)
:blocking
cls
goto functions
:blockingstart
echo --- Блокировка ---
set /p "sel=Какую функцию вы хотите выбрать: "
if "%sel%"=="0" (goto start)
if "%sel%"=="1" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d "1" /f)
if "%sel%"=="2" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d "1" /f)
if "%sel%"=="3" (REG ADD "HKCU\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /t REG_DWORD /d "1" /f)
if "%sel%"=="4" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /t REG_DWORD /d "1" /f)
if "%sel%"=="5" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v "NoChangingWallPaper" /t REG_DWORD /d "1" /f)
if "%sel%"=="6" (REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d "4" /f)
if "%sel%"=="7" (REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "Proxy" /t REG_DWORD /d "1" /f)
if "%sel%"=="8" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoSetTaskbar" /t REG_DWORD /d "1" /f)
if "%sel%"=="9" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall" /v "NoAddRemovePrograms" /t REG_DWORD /d "1" /f)
if "%sel%"=="10" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoClose" /t REG_DWORD /d "1" /f)
if "%sel%"=="11" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /t REG_DWORD /d "1" /f)
if "%sel%"=="12" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangeTime" /t REG_DWORD /d "1" /f)
if "%sel%"=="13" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetSetup" /t REG_DWORD /d "1" /f)
if "%sel%"=="14" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoToolbarCustomize" /t REG_DWORD /d "1" /f)
if "%sel%"=="15" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewOnDrive" /t REG_DWORD /d "4" /f)
if "%sel%"=="16" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d "1" /f)
if "%sel%"=="17" (attrib +r +s +h %SystemRoot%\System32\drivers\etc\hosts)
if "%sel%"=="18" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t REG_DWORD /d "1" /f)
if "%sel%"=="19" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetworkConnections" /t REG_DWORD /d "1" /f)
if "%sel%"=="20" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoFileFolderConnection" /t REG_DWORD /d "1" /f)
if "%sel%"=="21" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrives" /t REG_DWORD /d "67108863" /f)
if "%sel%"=="22" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /t REG_DWORD /d "1" /f)
if "%sel%"=="23" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoWiFiSettingsPage" /t REG_DWORD /d "1" /f)
if "%sel%"=="24" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRemoteDesktop" /t REG_DWORD /d "1" /f)
if "%sel%"=="25" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoThemesTab" /t REG_DWORD /d "1" /f)
if "%sel%"=="26" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActionCenter" /t REG_DWORD /d "1" /f)
if "%sel%"=="27" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DontDisplayLastUserName" /t REG_DWORD /d "1" /f)
if "%sel%"=="28" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAddFonts" /t REG_DWORD /d "1" /f)
if "%sel%"=="29" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableDeleteUser" /t REG_DWORD /d "1" /f)
if "%sel%"=="30" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrives" /t REG_DWORD /d "4294967295" /f)
if "%sel%"=="31" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewContextMenu" /t REG_DWORD /d "1" /f)
if "%sel%"=="32" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "HideFastUserSwitching" /t REG_DWORD /d "1" /f)
if "%sel%"=="33" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAddPrinter" /t REG_DWORD /d "1" /f)
if "%sel%"=="34" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoDispCPL" /t REG_DWORD /d "1" /f)
if "%sel%"=="35" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetSetup" /t REG_DWORD /d "1" /f)
if "%sel%"=="36" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoBluetooth" /t REG_DWORD /d "1" /f)
if "%sel%"=="37" (REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoDispSettingsPage" /t REG_DWORD /d "1" /f)
goto blocking
:unblocking
cls
goto functions
:unblockingstart
echo --- Разблокировка ---
set /p "sel=Какую функцию вы хотите выбрать: "
if "%sel%"=="0" (goto start)
if "%sel%"=="1" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f)
if "%sel%"=="2" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f)
if "%sel%"=="3" (REG DELETE "HKCU\Software\Policies\Microsoft\Windows\System" /v "DisableCMD" /f)
if "%sel%"=="4" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /f)
if "%sel%"=="5" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v "NoChangingWallPaper" /f)
if "%sel%"=="6" (REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d "3" /f)
if "%sel%"=="7" (REG DELETE "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "Proxy" /f)
if "%sel%"=="8" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoSetTaskbar" /f)
if "%sel%"=="9" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall" /v "NoAddRemovePrograms" /f)
if "%sel%"=="10" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoClose" /f)
if "%sel%"=="11" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRun" /f)
if "%sel%"=="12" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangeTime" /f)
if "%sel%"=="13" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetSetup" /f)
if "%sel%"=="14" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoToolbarCustomize" /f)
if "%sel%"=="15" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewOnDrive" /f)
if "%sel%"=="16" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /f)
if "%sel%"=="17" (attrib -r -s -h %SystemRoot%\System32\drivers\etc\hosts)
if "%sel%"=="18" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /f)
if "%sel%"=="19" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetworkConnections" /f)
if "%sel%"=="20" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoFileFolderConnection" /f)
if "%sel%"=="21" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrives" /f)
if "%sel%"=="22" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRegistryTools" /f)
if "%sel%"=="23" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoWiFiSettingsPage" /f)
if "%sel%"=="24" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableRemoteDesktop" /f)
if "%sel%"=="25" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoThemesTab" /f)
if "%sel%"=="26" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActionCenter" /f)
if "%sel%"=="27" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DontDisplayLastUserName" /f)
if "%sel%"=="28" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAddFonts" /f)
if "%sel%"=="29" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableDeleteUser" /f)
if "%sel%"=="30" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDrives" /f)
if "%sel%"=="31" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoViewContextMenu" /f)
if "%sel%"=="32" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "HideFastUserSwitching" /f)
if "%sel%"=="33" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAddPrinter" /f)
if "%sel%"=="34" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoDispCPL" /f)
if "%sel%"=="35" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Network" /v "NoNetSetup" /f)
if "%sel%"=="36" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoBluetooth" /f)
if "%sel%"=="37" (REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "NoDispSettingsPage" /f)
goto unblocking
:activating
cls
setlocal
ping -n 1 8.8.8.8 >nul 2>&1
if errorlevel 1 (cls
    echo Для активации Windows требуется подключение к интернету!
    echo.
    endlocal
    goto start2)
endlocal
echo 1. Windows 11 Home
echo 2. Windows 11 Home N
echo 3. Windows 11 Home Home Single Language
echo 4. Windows 11 Home Country Specific
echo 5. Windows 11 Pro
echo 6. Windows 11 Pro N
echo 7. Windows 11 Pro for Workstations
echo 8. Windows 11 Pro for Workstations N
echo 9. Windows 11 Pro Education
echo 10. Windows 11 Pro Education N
echo 11. Windows 11 Education
echo 12. Windows 11 Education N
echo 13. Windows 11 Enterprise
echo 14. Windows 11 Enterprise N
echo 15. Windows 11 Enterprise G
echo 16. Windows 11 Enterprise G N
echo 17. Windows 11 Enterprise LTSC 2019
echo 18. Windows 11 Enterprise N LTSC 2019
echo 19. Windows 10 Home
echo 20. Windows 10 Home N
echo 21. Windows 10 Home Single Language
echo 22. Windows 10 Pro
echo 23. Windows 10 Pro N
echo 24. Windows 10 Pro for Workstations
echo 25. Windows 10 Pro N for Workstations
echo 26. Windows 10 S
echo 27. Windows 10 Education
echo 28. Windows 10 Education N
echo 29. Windows 10 Pro Education
echo 30. Windows 10 Pro Education N
echo 31. Windows 10 Enterprise
echo 32. Windows 10 Enterprise G
echo 33. Windows 10 Enterprise G N
echo 34. Windows 10 Enterprise N
echo 35. Windows 10 Enterprise S
echo 36. Windows 10 Enterprise LTSB 2015
echo 37. Windows 10 Enterprise N LTSB 2015
echo 38. Windows 10 Enterprise LTSB 2016
echo 39. Windows 10 Enterprise N LTSB 2016
echo 40. Windows 10 Enterprise LTSC 2019
echo 41. Windows 10 Enterprise N LTSC 2019
echo 42. Windows Server 2016 Datacenter
echo 43. Windows Server 2016 Standard
echo 44. Windows Server 2016 Essentials
echo 45. Windows Server 2019 Datacenter
echo 46. Windows Server 2019 Standard
echo 47. Windows Server 2019 Essentials
echo.
echo 0. Отмена
echo.
set key=
set /p "sel=Выберите версию Windows которую вам нужно активировать: "
if "%sel%"=="0" (goto start)
if "%sel%"=="1" (set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99)
if "%sel%"=="2" (set key=3KHY7-WNT83-DGQKR-F7HPR-844BM)
if "%sel%"=="3" (set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH)
if "%sel%"=="4" (set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR)
if "%sel%"=="5" (set key=W269N-WFGWX-YVC9B-4J6C9-T83GX)
if "%sel%"=="6" (set key=MH37W-N47XK-V7XM9-C7227-GCQG9)
if "%sel%"=="7" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
if "%sel%"=="8" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
if "%sel%"=="9" (set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y)
if "%sel%"=="10" (set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC)
if "%sel%"=="11" (set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2)
if "%sel%"=="12" (set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ)
if "%sel%"=="13" (set key=NPPR9-FWDCX-D2C8J-H872K-2YT43)
if "%sel%"=="14" (set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4)
if "%sel%"=="15" (set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B)
if "%sel%"=="16" (set key=44RPN-FTY23-9VTTB-MP9BX-T84FV)
if "%sel%"=="17" (set key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D)
if "%sel%"=="18" (set key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H)
if "%sel%"=="19" (set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99)
if "%sel%"=="20" (set key=3KHY7-WNT83-DGQKR-F7HPR-844BM)
if "%sel%"=="21" (set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH)
if "%sel%"=="22" (set key=W269N-WFGWX-YVC9B-4J6C9-T83GX)
if "%sel%"=="23" (set key=MH37W-N47XK-V7XM9-C7227-GCQG9)
if "%sel%"=="24" (set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J)
if "%sel%"=="25" (set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF)
if "%sel%"=="26" (set key=-)
if "%sel%"=="27" (set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2)
if "%sel%"=="28" (set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ)
if "%sel%"=="29" (set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y)
if "%sel%"=="30" (set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC)
if "%sel%"=="31" (set key=NPPR9-FWDCX-D2C8J-H872K-2YT43)
if "%sel%"=="32" (set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B)
if "%sel%"=="33" (set key=44RPN-FTY23-9VTTB-MP9BX-T84FV)
if "%sel%"=="34" (set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4)
if "%sel%"=="35" (set key=FWN7H-PF93Q-4GGP8-M8RF3-MDWWW)
if "%sel%"=="36" (set key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9)
if "%sel%"=="37" (set key=2F77B-TNFGY-69QQF-B8YKP-D69TJ)
if "%sel%"=="38" (set key=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ)
if "%sel%"=="39" (set key=QFFDN-GRT3P-VKWWX-X7T3R-8B639)
if "%sel%"=="40" (set key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D)
if "%sel%"=="41" (set key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H)
if "%sel%"=="42" (set key=CB7KF-BWN84-R7R2Y-793K2-8XDDG)
if "%sel%"=="43" (set key=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY)
if "%sel%"=="44" (set key=JCKRF-N37P4-C2D82-9YXRT-4M63B)
if "%sel%"=="45" (set key=WMDGN-G9PQG-XVVXX-R3X43-63DFG)
if "%sel%"=="46" (set key=N69G4-B89J2-4G8F4-WWYCC-J464C)
if "%sel%"=="47" (set key=WVDHN-86M7X-466P6-VHXV7-YY726)
if "%key%"=="" (goto activating)
if "%key%"=="-" (cls
    echo Для данной версии Windows отсутствует ключ активации.
    pause
    goto activating)
slmgr /ipk %key%
slmgr /skms kms.digiboy.ir
slmgr /ato
goto start
:other
cls
echo 1. Очистка временных файлов
echo 2. Очистка корзины каждого диска
echo 3. Выход из системы
echo 4. Перезагрузка рабочего стола
echo 5. Перезагрузка проводника
echo 6. Перезагрузка иконок
echo 7. Перезагрузка локального хоста
echo 8. Лист исполняющихся портов
echo 9. Убить все процессы
echo 10. Гибернация
echo 11. Перезагрузка без быстрой загрузки из биоса
echo 12. Очистка всего и перезагрузка каждого элемента
echo 13. Очистка DNS данных сети
echo 14. Остановить службу принтера
echo 15. Запустить службу принтера
echo 16. Очистить данные принтера
echo.
echo 0. Выйти из меню
echo.
set /p "sel=Выберите какую функцию исполнить: "
if "%sel%"=="0" (goto start)
if "%sel%"=="1" (del /s /q %temp%\*)
if "%sel%"=="2" (PowerShell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue")
if "%sel%"=="3" (shutdown /l)
if "%sel%"=="4" (ie4uinit.exe -ClearIconCache
ie4uinit.exe -show)
if "%sel%"=="5" (taskkill /f /im explorer.exe
start PowerShell explorer)
if "%sel%"=="6" (taskkill /f /im explorer.exe
%userprofile%\AppData\Local\IconCache.db
start PowerShell explorer)
if "%sel%"=="7" (ipconfig /release
ipconfig /renew)
if "%sel%"=="8" (cls
netstat -an | find "LISTEN"
pause)
if "%sel%"=="9" (taskkill /f /fi "status eq running")
if "%sel%"=="10" (shutdown /h)
if "%sel%"=="11" (shutdown /r /f /t 0 /hybrid off)
if "%sel%"=="12" (ie4uinit.exe -ClearIconCache
ie4uinit.exe -show
ipconfig /flushdns
net stop spooler
PowerShell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
taskkill /f /im explorer.exe
del /s /q %temp%\*
ipconfig /release
ipconfig /renew
net stop spooler
taskkill /f /fi "status eq running")
if "%sel%"=="13" (ipconfig /flushdns)
if "%sel%"=="14" (net stop spooler)
if "%sel%"=="15" (net start spooler)
if "%sel%"=="16" (del /Q /F /S "%systemroot%\System32\spool\PRINTERS\*.*")
goto other
:booster
cls
echo 1. Отключение
echo 2. Включение опций
echo 3. Применить оптимизацию
echo.
echo 0. Выйти из меню
echo.
set /p "se=Выберите опцию: "
if "%se%"=="0" (goto start)
if "%se%"=="1" (goto boosterfunc)
if "%se%"=="2" (goto boosterfunc)
if "%se%"=="3" (goto applyoptimization)
goto booster
:applyoptimization
cls
set /p "m=Точно ли применять оптимизацию, она может поломать вам систему, или быть не удобной для вас: (y/n)"
if "%m%"=="y" (cls
echo Начинаем...

REM >>>>>>>> тут оптимизацию надо

echo Готово!
pause)
goto booster
:boosterfunc
cls
echo 1. Контроль учётных записей
echo.
echo 0. Выйти из меню
echo.
if "%se%"=="1" (goto boosteroff)
if "%se%"=="2" (goto boosteron)
:boosteron
echo --- Включение ---
set /p "sel=Выберите параметр: "
if "%sel%"=="0" (goto booster)
if "%sel%"=="1" (reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 1 /f)
goto boosterfunc
:boosteroff
echo --- Отключение ---
set /p "sel=Выберите параметр: "
if "%sel%"=="0" (goto booster)
if "%sel%"=="1" (reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f)
goto boosterfunc