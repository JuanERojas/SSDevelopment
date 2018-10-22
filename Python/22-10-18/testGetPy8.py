# snmpwalk -v 1 -c public <ip address>:<port> xyz::pqr
# snmpget -v2c -c public demo.snmplabs.com 1.3.6.1.2.1.1.1.0
# snmpget -v2c -c public demo.snmplabs.com SNMPv2-MIB::sysDescr.0
# ObjectType(ObjectIdentity('SNMPv2-MIB', 'sysDescr', 0)))
# sysUpTime.0
# .1.3.6.1.2.1.1.3.0
# SET

'''
snmpset -h | tail -4
TYPE: one of i, u, t, a, o, s, x, d, b, n
i: INTEGER, u: unsigned INTEGER, t: TIMETICKS, a: IPADDRESS
o: OBJID, s: STRING, x: HEX STRING, d: DECIMAL STRING, b: BITS
U: unsigned int64, I: signed int64, F: float, D: double

#snmpget -v 2c -c public localhost sysContact.0
SNMPv2-MIB::sysContact.0 = STRING: Root 
#snmpset -v 2c -c public localhost sysContact.0 s “Admin”
SNMPv2-MIB::sysContact.0 = STRING: Admin
#snmpget -v 2c -c public localhost sysContact.0
SNMPv2-MIB::sysContact.0 = STRING: Admin
'''

from pysnmp.hlapi import *

from pysnmp.entity.rfc3413.oneliner import cmdgen

def set(host, pqr, str):
    errorIndication, errorStatus, errorIndex, varBinds = next(
        setCmd(SnmpEngine(),
            CommunityData('public'),
            UdpTransportTarget((host, 161)),
            ContextData(),
            ObjectType(ObjectIdentity('SNMPv2-MIB', pqr, 0), str))
    )
    if errorIndication:
        print(errorIndication)    
    elif errorStatus:
        print('%s at %s' % (errorStatus.prettyPrint(),
                            errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))

def get(host, pqr):
    errorIndication, errorStatus, errorIndex, varBinds = next(
        getCmd(SnmpEngine(),
               CommunityData('public', mpModel=0),
               UdpTransportTarget((host, 161)),
               ContextData(),
               ObjectType(ObjectIdentity('SNMPv2-MIB', pqr, 0)))
    )

    if errorIndication:
        print(errorIndication)    
    elif errorStatus:
        print('%s at %s' % (errorStatus.prettyPrint(),
                            errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))
			
def setoid(host, oid, str):
    errorIndication, errorStatus, errorIndex, varBinds = next(
        setCmd(SnmpEngine(),
            CommunityData('public'),
            UdpTransportTarget((host, 161)),
            ContextData(),
            ObjectType(ObjectIdentity(oid)))
    )
    if errorIndication:
        print(errorIndication)    
    elif errorStatus:
        print('%s at %s' % (errorStatus.prettyPrint(),
                            errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))

			

def getoid(host, oid):
    cmdGen = cmdgen.CommandGenerator()
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
            print(' = '.join([x.prettyPrint() for x in varBind]))
     
'''
def getoid(host, oid):
    errorIndication, errorStatus, errorIndex, varBinds = getCmd(SnmpEngine(),
               CommunityData('public', mpModel=0),
               UdpTransportTarget((host, 161)),
               ContextData(),
               ObjectType(ObjectIdentity(oid)))
    )
    if errorIndication:
        print(errorIndication)    
    elif errorStatus:
        print('%s at %s' % (errorStatus.prettyPrint(),
                            errorIndex and varBinds[int(errorIndex) - 1][0] or '?'))
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))

'''			
get('demo.snmplabs.com','sysDescr')
# SNMPv2-MIB::sysDescr.0 = Linux zeus 4.8.6.5-smp #2 SMP Sun Nov 13 14:58:11 CDT 2016 i686
print('----------')
set('demo.snmplabs.com','sysDescr', 'Linux i386')
# SNMPv2-MIB::sysDescr.0 = No Such Instance currently exists at this OID
print('----------')
get('demo.snmplabs.com','sysDescr')
# SNMPv2-MIB::sysDescr.0 = Linux zeus 4.8.6.5-smp #2 SMP Sun Nov 13 14:58:11 CDT 2016 i686
print('----------')
getoid('1.3.6.1.2.1.1.1.0','sysDescr')
# 
#print('----------')
#setoid('1.3.6.1.2.1.1.1.0','sysDescr', 'Linux i386')
# 
#print('----------')
#getoid('1.3.6.1.2.1.1.1.0','sysDescr')
#