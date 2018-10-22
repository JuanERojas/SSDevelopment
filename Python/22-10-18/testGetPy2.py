# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysDescr', 0)))
# sysUpTime.0
# GET

from pysnmp.hlapi import *

errorIndication, errorStatus, errorIndex, varBinds = next(
    getCmd(SnmpEngine(),
           CommunityData('public', mpModel=0),
           UdpTransportTarget(('localhost', 161)),
           ContextData(),
           ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysUpTime', 0)))
)

if errorIndication:
    print(errorIndication)
elif errorStatus:
    print('%s at %s' % (errorStatus.prettyPrint(),
                        errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
else:
    for varBind in varBinds:
        print(' = '.join([x.prettyPrint() for x in varBind]))