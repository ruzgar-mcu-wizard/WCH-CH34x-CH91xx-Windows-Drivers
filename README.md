# WCH CH34x / CH91xx Windows Drivers

A Windows installation helper for the WCH CH34x and CH91xx USB-to-serial driver package.

The repository includes the WCH driver files and a lightweight command-line installer that uses the Windows Driver Store utility, `pnputil`.

## What it does

The installer registers the supplied INF package with Windows and requests installation for matching devices.

The command used by the installer is:

```cmd
pnputil /add-driver CH341SER.INF /install
```

Windows performs hardware ID matching and selects the appropriate driver section for the detected device and supported architecture.

## Supported devices

The included driver package is intended for WCH USB-to-serial devices in these families:

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

Compatibility is ultimately determined by the hardware IDs present in the supplied `CH341SER.INF` file.

## Architecture support

The package supports these Windows architecture families:

- x86
- x64 (AMD64)
- ARM64

**ARM32 (NTARM) is not supported by this installation package.**

## Installation

1. Download or clone this repository.
2. Extract the files if you downloaded an archive.
3. Run `CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd`.
4. Approve the Administrator permission prompt.
5. Let PnPUtil add the driver package and install it for matching devices.

The script requires administrator permissions to add a driver package to the Windows Driver Store.

### Manual installation

From an elevated Command Prompt, run:

```cmd
pnputil /add-driver CH341SER.INF /install
```

Keep the INF file together with the vendor driver files. The INF references the package components needed by Windows.

## Repository contents

| File | Purpose |
| --- | --- |
| `CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd` | Command-line installation helper |
| `CH341SER.INF` | WCH driver installation information |
| Vendor driver files | Original WCH driver package components |

## Downloads

- [Download the complete repository ZIP](https://github.com/ruzgar-mcu-wizard/WCH-CH34x-CH91xx-Windows-Drivers/archive/refs/heads/main.zip)
- [Browse the repository](https://github.com/ruzgar-mcu-wizard/WCH-CH34x-CH91xx-Windows-Drivers)

## Requirements

- A supported version of Windows.
- Administrator permissions.
- The included WCH driver package.
- Windows PnPUtil.

## Troubleshooting

**The device is not detected after installation**

- Disconnect and reconnect the USB-to-serial device.
- Check Device Manager for the device's hardware ID.
- Confirm that the hardware ID appears in the supplied INF file.
- Check Windows for driver installation errors.

**The installer cannot find the INF file**

- Extract the repository before running the installer.
- Run the script from the directory containing the driver package.
- Keep the INF file and referenced vendor files together.

**PnPUtil does not install a driver for the connected device**

The package may not contain a matching hardware ID for that device or Windows architecture. Check the hardware ID and the architecture sections in the INF file.

## Disclaimer

This is an independent installation helper and is not affiliated with or endorsed by WCH (Nanjing Qinheng Microelectronics).

WCH is the original developer of the supported hardware and vendor drivers. All original driver copyrights and trademarks belong to their respective owners.
