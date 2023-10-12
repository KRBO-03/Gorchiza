SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files\Common Files\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\yagarto-20121222\bin;C:\Users\ArhiMike\AppData\Local\Programs\Python\Python39;C:\Users\ArhiMike\AppData\Local\Programs\Python\Python39\Scripts;C:\Program Files\dotnet\;D:\Programs\Git\cmd;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\ArhiMike\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\SDCC\bin;C:\Program Files\JetBrains\PyCharm Community Edition 2022.3.2\bin;C:\Users\ArhiMike\PycharmProjects\IERS\Lib\site-packages\pip;C:\Program Files\MySQL\MySQL Shell 8.0\bin\;C:\Users\ArhiMike\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\SDCC\bin;C:\Program Files\JetBrains\PyCharm Community Edition 2022.3.2\bin;C:\Users\ArhiMike\PycharmProjects\IERS\Lib\site-packages\pip;C:\Users\ArhiMike\AppData\Local\Programs\Python\Python39;C:\Users\ArhiMike\AppData\Local\Programs\Python\Python39\Scripts
export AS_BUILD_MODE := Rebuild
export AS_VERSION := 4.5.2.102
export AS_COMPANY_NAME :=  
export AS_USER_NAME := ArhiMike
export AS_PATH := D:/AS45/AS45
export AS_BIN_PATH := D:/AS45/AS45/Bin-en
export AS_PROJECT_PATH := F:/Software/Labs/LAB1
export AS_PROJECT_NAME := LAB1
export AS_SYSTEM_PATH := D:/AS45/AS/System
export AS_VC_PATH := D:/AS45/AS45/AS/VC
export AS_TEMP_PATH := F:/Software/Labs/LAB1/Temp
export AS_CONFIGURATION := Real
export AS_BINARIES_PATH := F:/Software/Labs/LAB1/Binaries
export AS_GNU_INST_PATH := D:/AS45/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := D:/AS45/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := D:/AS45/AS45
export WIN32_AS_PATH := "D:\AS45\AS45"
export WIN32_AS_BIN_PATH := "D:\AS45\AS45\Bin-en"
export WIN32_AS_PROJECT_PATH := "F:\Software\Labs\LAB1"
export WIN32_AS_SYSTEM_PATH := "D:\AS45\AS\System"
export WIN32_AS_VC_PATH := "D:\AS45\AS45\AS\VC"
export WIN32_AS_TEMP_PATH := "F:\Software\Labs\LAB1\Temp"
export WIN32_AS_BINARIES_PATH := "F:\Software\Labs\LAB1\Binaries"
export WIN32_AS_GNU_INST_PATH := "D:\AS45\AS45\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "D:\AS45\AS45"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/LAB1.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Rebuild'   

