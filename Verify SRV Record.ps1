## Tool to test Appia SRV record DNS resolution
## Created by Jacob Scherb @ FitzMark 9/29/17

#Build url
$Subdomain = Read-Host -Prompt 'Input the customer account ID'
$TestURL = "_sip._udp.$Subdomain.siptrunking.appiaservices.com"

Resolve-DnsName -Name $TestURL -Type SRV

##Leave window open, be polite
Read-Host -Prompt "Press any key to Exit."

#Sources
# Resolve-DnsName: https://social.technet.microsoft.com/Forums/windowsserver/en-US/c90d8e14-46b3-4789-84e2-0ccd88b82663/query-dns-for-srv-records?forum=winserverpowershell 