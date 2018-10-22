# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysDescr', 0)))
# sysUpTime.0
# .1.3.6.1.2.1.1.3.0
# Translate

import string
from pysnmp.smi import builder, view, error
from pysnmp.entity.rfc3413.oneliner import cmdgen
from collections import namedtuple as NT

cmdGen = cmdgen.CommandGenerator()
'''
errorIndication, errorStatus, errorIndex, varBinds = cmdGen.getCmd(
		cmdgen.CommunityData('public'),
		cmdgen.UdpTransportTarget(('demo.snmplabs.com', 161)),
		'.1.3.6.1.2.1.1.3.0',
		lookupNames=True, lookupValues=True
	)
'''
'''
errorIndication, errorStatus, errorIndex, varBinds = cmdGen.getCmd(
    cmdgen.CommunityData('public'),
    cmdgen.UdpTransportTarget(('demo.snmplabs.com', 161)),
    '1.3.6.1.4.1.674.10892.1.300.10.1.8.1',
    '1.3.6.1.4.1.674.10892.1.300.10.1.9.1'
)
'''

errorIndication, errorStatus, errorIndex, varBinds = cmdGen.getCmd(
    cmdgen.CommunityData('public'),
    cmdgen.UdpTransportTarget(('demo.snmplabs.com', 161)),
    '1.3.6.1.2.1.1.3.0'
)


if errorIndication:
    print(errorIndication)
elif errorStatus:
    print('%s at %s' % (errorStatus.prettyPrint(),
                        errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
else:
    for varBind in varBinds:
    #    print(' = '.join([x.prettyPrint() for x in varBind]))
        for x in varBind:
            print(x.prettyPrint())