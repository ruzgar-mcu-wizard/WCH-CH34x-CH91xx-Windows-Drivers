
# WCH CH34x / CH91xx Windows Drivers

Universal Windows installation helper for WCH USB-to-Serial drivers.

## Overview

This repository provides the original WCH USB-to-Serial driver package with a lightweight command-line installation helper.

The included installer provides an alternative to the original WCH graphical driver installer by using Windows' built-in PnPUtil utility.

No separate device detection or driver installation engine is required. Windows handles hardware identification, driver matching, and architecture selection through the supplied INF file.

## Supported Devices

The included driver package is intended to support the following WCH devices:

- CH342
- CH343
- CH344
- CH346
- CH347
- CH9101
- CH9102
- CH9103
- CH9104
- CH9111
- CH9114
- CH9143

Actual device compatibility depends on the hardware IDs present in the supplied INF file.

## Architecture Support

The installer supports:

- x86
- x64 (AMD64)
- ARM64

ARM32 (NTARM) is not supported by this installation package.

## Installation

1. Download or clone this repository.
2. Extract the files if downloaded as a ZIP archive.
3. Run `CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd`.
4. Approve the Administrator privilege request.
5. The installer registers the driver using Windows PnPUtil.

The installer executes:

```cmd
pnputil /add-driver CH341SER.INF /install
```

Windows automatically matches connected devices against the hardware IDs in the INF file and selects the appropriate architecture-specific driver section.

## Files

| File | Description |
|---|---|
| `CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd` | Universal command-line installation helper |
| `CH341SER.INF` | WCH driver installation information file |
| Vendor driver files | Original WCH driver package components |

## Why PnPUtil?

The original WCH graphical installer may not work reliably in every environment.

This project offers a simpler alternative using Windows' native Driver Store management utility.

Advantages:

- No dependency on the vendor's graphical installer.
- Direct INF-based installation.
- Automatic architecture selection.
- Automatic hardware ID matching.
- Uses Windows' built-in driver installation infrastructure.

## Downloads

**Download the complete repository:**

[Download ZIP](https://github.com/ruzgar-mcu-wizard/WCH-CH34x-CH91xx-Windows-Drivers/archive/refs/heads/main.zip)

**Download the installer directly:**

[CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd]([https://raw.githubusercontent.com/ruzgar-mcu-wizard/WCH-CH34x-CH91xx-Windows-Drivers/main/CH34x_CH91xx_Driver_Pack_Universal_Windows/CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd])

## Requirements

- Windows
- Administrator privileges
- Windows PnPUtil
- The complete WCH driver package

## Disclaimer

This is an independent installation helper project.

WCH (Nanjing Qinheng Microelectronics) is the original developer of the supported hardware and associated drivers. This repository is not affiliated with or endorsed by WCH.

All original driver copyrights and trademarks belong to their respective owners.
