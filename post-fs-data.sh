#!/system/bin/sh

# Set conservative governor for all cores
for cpu in 0 1 2 3 4 5 6 7; do
  echo "conservative" > /sys/devices/system/cpu/cpu$cpu/cpufreq/scaling_governor
done

# Restore thermal config
chmod 644 /vendor/etc/thermal-engine.conf
chown root:root /vendor/etc/thermal-engine.conf

# Run alert and log scripts
sh /data/adb/modules/beast_thermalfix/custom/alert.sh &
sh /data/adb/modules/beast_thermalfix/custom/log.sh &

echo "[BeastThermalFix] Thermal fix applied"