# https://www.freebsddiary.org/APC/usb_hid_usages.php
# E2 = leftAlt
# E3 = Command
# E6 = rightAlt
# 52 = upArrow
# 39 = capsLock
# 2A = capsLock

/usr/bin/hidutil property --matching '{"VendorID": 0x258a}' --set '{"UserKeyMapping": [
  {"HIDKeyboardModifierMappingSrc":0x7000000E2, "HIDKeyboardModifierMappingDst":0x7000000E3 },
  {"HIDKeyboardModifierMappingSrc":0x7000000E3, "HIDKeyboardModifierMappingDst":0x7000000E2 },
  {"HIDKeyboardModifierMappingSrc":0x7000000E6, "HIDKeyboardModifierMappingDst":0x700000052 },
  {"HIDKeyboardModifierMappingSrc":0x700000039, "HIDKeyboardModifierMappingDst":0x70000002A }
]}'
