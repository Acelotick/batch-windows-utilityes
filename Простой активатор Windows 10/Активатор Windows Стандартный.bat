chcp 65001
color c7
title Универсальный активатор Windows, основан на ключах от KMS

@echo off
cls

set "key=0"

set /p "custom=Использовать свой ключ? (y/n): "

if "%custom%" == "y" (
    set /p "key=Введите ключ продукта: "
    goto start
)

:keyselection

cls

set /p "a=Windows 10 Home?: (y/n): "
if "%a%" == "y" (
    set "selected=Windows 10 Home"
    set "key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    goto start
)

set /p "b=Windows 10 Home Single Language?: (y/n): "
if "%b%" == "y" (
    set "selected=Windows 10 Home Single Language"
    set "key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
    goto start
)

set /p "b=Windows 10 Pro?: (y/n): "
if "%b%" == "y" (
    set "selected=Windows 10 Pro"
    set "key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
    goto start
)

set /p "b=Windows 10 Pro Education?: (y/n): "
if "%b%" == "y" (
    set "selected=Windows 10 Pro Education"
    set "key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
    goto start
)

set /p "b=Windows 10 Pro For Workstations?: (y/n): "
if "%b%" == "y" (
    set "selected=Windows 10 Pro For Workstations"
    set "key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
    goto start
)

set /p "b=Windows 10 Enterprise?: (y/n): "
if "%b%" == "y" (
    set "selected=Windows 10 Enterprise"
    set "key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
    goto start
)

goto keyselection

:start

cls

set /p "next=Выбрана %selected% для активации windows, начинаем активацию? (y/n): "

if "%next%" == "y" (
    cls
) else (
    echo Вы отменили активацию.
    pause
    exit
)

echo Активация... [%selected%] [%key%]

set /p "hi=Нажмите любую кнопку для продолжения.."

cls

slmgr /ipk %key%
slmgr /skms kms.digiboy.ir
slmgr /ato

echo Готово!

set /p "hi=Нажмите любую кнопку для продолжения.."