# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysDescr', 0)))
# sysUpTime.0
# .1.3.6.1.2.1.1.3.0
# TRAP

from pysnmp.hlapi import *

errorIndication, errorStatus, errorIndex, varBinds = next(
    sendNotification(
        SnmpEngine(),
        CommunityData('public', mpModel=0),
        UdpTransportTarget(('demo.snmplabs.com', 162)),
        ContextData(),
        'trap',
        NotificationType(
            ObjectIdentity('1.3.6.1.6.3.1.1.5.2')
        ).addVarBinds(
            ('1.3.6.1.6.3.1.1.4.3.0', '1.3.6.1.4.1.20408.4.1.1.2'),
            ('1.3.6.1.2.1.1.1.0', OctetString('my system'))
        )
    )
)

if errorIndication:
    print(errorIndication)
elif errorStatus:
    print('%s at %s' % (errorStatus.prettyPrint(),
                        errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
else:
    for varBind in varBinds:
        print(' = '.join([x.prettyPrint() for x in varBind]))