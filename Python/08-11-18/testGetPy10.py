# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysDescr', 0)))
# sysUpTime.0
# .1.3.6.1.2.1.1.3.0
# WALK

from pysnmp.hlapi import *

for (errorIndication,errorStatus,errorIndex,varBinds) in nextCmd(
    SnmpEngine(), 
	CommunityData('s553355'),
    UdpTransportTarget(('172.31.1.254', 161)), 
    ContextData(), 
    #ObjectType(ObjectIdentity(oid)
    ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysName', 0))):
    #lexicographicMode=False
    if errorIndication:
        print(errorIndication, file=sys.stderr)
        break
    elif errorStatus:
        print('%s at %s' % (errorStatus.prettyPrint(),
                            errorIndex and varBinds[int(errorIndex) - 1][0] or '?'), 
                            file=sys.stderr)             
        break
    else:
        for varBind in varBinds:
            print(varBind)

#walk('172.31.1.254')
