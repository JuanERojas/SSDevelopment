# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# Test continuo next()

from pysnmp.hlapi import *

'''
for (errorIndication,
     errorStatus,
     errorIndex,
     varBinds) in nextCmd(SnmpEngine(),
                          CommunityData('public', mpModel=0),
                          UdpTransportTarget(('demo.snmplabs.com', 161)),
                          ContextData(),
                          ObjectType(ObjectIdentity('1.3.6.1.2.1.17.7.1.2.2.1.2'))):
    if errorIndication or errorStatus:
        print(errorIndication or errorStatus)
        break
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))
'''
for (errorIndication,
     errorStatus,
     errorIndex,
     varBinds) in bulkCmd(SnmpEngine(),
        CommunityData('s553355'),
        UdpTransportTarget(('172.31.1.254', 161)),
        ContextData(),
        0, 25,  # fetch up to 25 OIDs one-shot
        ObjectType(ObjectIdentity('1.3.6.1.2.1.17.7.1.2.2.1.2'))):
        #ObjectType(ObjectIdentity('SNMPv2-MIB', 'system', 0))):
    if errorIndication or errorStatus:
        print(errorIndication or errorStatus)
        break
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))
