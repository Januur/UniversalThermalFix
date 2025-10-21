# UniversalThermalFix
A Magisk module to fix overheating, reduce thermal throttling, and improve battery life on Android devices running custom ROMs.  
Compatible with Qualcomm, MediaTek, Exynos, and Unisoc chipsets. Works systemlessly via Magisk
## Overview
UniversalThermalFix is a one-file thermal control module designed for users experiencing:
- Phone overheating after flashing a custom ROM
- Thermal throttling during gaming or charging
- Battery drain due to aggressive thermal policies
- Lag or frame drops caused by heat management
- Inconsistent performance across different Android versions
This module applies a generic `thermal-engine.conf` that works across most Android devices without needing device-specific profiles.
## Key Features
- Reduces overheating on custom ROMs (LineageOS, Pixel Experience, etc.)
- Prevents CPU/GPU throttling during gaming and multitasking
- Improves battery efficiency by relaxing thermal limits
- Compatible with Android 10 to 16+
- No vendor thermal daemon override required
- Safe fallback logic for unknown thermal zones
## Installation
1. Install Magisk v25+ on your device.
2. Download the latest ZIP from [Releases]().
3. Open Magisk → Modules → Install from Storage.
4. Select the ZIP and flash.
5. Reboot your device.
6. (Optional) Check log:
   ```bash
   cat /data/local/tmp/thermalfix.log
## License  
This project is licensed under the [MIT License](LICENSE).
