CH34x / CH91xx USB-to-Serial Driver
Overview

This project provides a unified USB-to-Serial driver supporting multiple WCH chip families, including:

CH342
CH343
CH344
CH346
CH347
CH9101
CH9102
CH9103
CH9104
CH9111
CH9114
CH9143

The goal is to simplify installation and maintenance by offering a single driver package instead of multiple separate drivers for each chipset.

Architecture Support
This installer is compatible with x86, x64 and ARM64 systems.
ARM32 (NTARM) architecture is not supported.

Installation
Run "CH34x_CH91xx_Driver_Installer_Universal_Windows.cmd" and Windows automatically matches device VID/PID entries in the INF and selects the appropriate architecture-specific driver section (NTamd64, NTARM64, etc.).
Driver installation is performed via Windows Driver Store (pnputil).