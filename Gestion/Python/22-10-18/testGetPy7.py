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

def walk(host, pqr):
    for (errorIndication,errorStatus,errorIndex,varBinds) in nextCmd(
        SnmpEngine(), 
        CommunityData('public'),
        UdpTransportTarget((host, 161)), 
        ContextData(), 
        #ObjectType(ObjectIdentity(oid)
        ObjectType(ObjectIdentity('SNMPv2-MIB', pqr, 0))):
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
			
def cnext(host, pqr):
   for (errorIndication, errorStatus, errorIndex, varBinds) in bulkCmd(
        SnmpEngine(),
        CommunityData('public'),
        UdpTransportTarget((host, 161)),
        ContextData(),
        0, 25,  # fetch up to 25 OIDs one-shot
        ObjectType(ObjectIdentity('SNMPv2-MIB', pqr, 0))):
    if errorIndication or errorStatus:
        print(errorIndication or errorStatus)
        break
    else:
        for varBind in varBinds:
            print(' = '.join([x.prettyPrint() for x in varBind]))
			
			
#walk('demo.snmplabs.com','sysName')
get('demo.snmplabs.com','sysName')
print('----------')
#cnext('demo.snmplabs.com','sysName')
