<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="C" />
        <signal name="DIV10" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="DIV10" />
        <blockdef name="Counter5">
            <timestamp>2014-5-22T11:15:36</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Counter2">
            <timestamp>2014-5-22T11:15:17</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Counter5" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_1" name="DIV5" />
        </block>
        <block symbolname="Counter2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="DIV10" name="DIV2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2560" y="2480" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2976" y1="2448" y2="2448" x1="2944" />
        </branch>
        <instance x="2976" y="2480" name="XLXI_2" orien="R0">
        </instance>
        <branch name="C">
            <wire x2="2560" y1="2448" y2="2448" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2528" y="2448" name="C" orien="R180" />
        <branch name="DIV10">
            <wire x2="3392" y1="2448" y2="2448" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3392" y="2448" name="DIV10" orien="R0" />
    </sheet>
</drawing>