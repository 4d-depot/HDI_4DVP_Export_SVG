//%attributes = {}
C_BOOLEAN:C305($1;$isEnable)

$isEnable:=$1

OBJECT SET ENABLED:C1123(*;"Popup Dropdown List";$isEnable)
OBJECT SET ENABLED:C1123(*;"Button5";$isEnable)