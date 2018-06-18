$ComputerName = "NamePC"
$NetPrinter = "`"\\path\name_printer`""
foreach ($printers in $ComputerName)
{
# Installing a network printer on a remote PC
iex "RUNDLL32 PRINTUI.DLL,PrintUIEntry /ga /c\\$printers /n$NetPrinter"
}

# # Delete the network printer on a remote PC
# iex "RUNDLL32 PRINTUI.DLL PrintUIEntry /gd /c\\$ComputerName /n$NetPrinter Gw /q"
 
# # Get a list of network printers from a remote PC
# icm -Comp $ComputerName -ScriptBlock { ls "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Connections" | %{$_.GetValue("Printer")} }