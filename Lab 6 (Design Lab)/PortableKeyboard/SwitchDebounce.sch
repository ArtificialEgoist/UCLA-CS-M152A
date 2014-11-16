<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="Switch1" />
        <signal name="XLXN_10" />
        <signal name="Switch2" />
        <signal name="XLXN_12" />
        <signal name="Db1" />
        <signal name="Db2" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="Switch1" />
        <port polarity="Input" name="Switch2" />
        <port polarity="Output" name="Db1" />
        <port polarity="Output" name="Db2" />
        <blockdef name="SRLatch">
            <timestamp>2014-5-22T11:16:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="SRLatch" name="XLXI_2">
            <blockpin signalname="Switch1" name="A" />
            <blockpin signalname="XLXN_10" name="B" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="Db1" name="Q" />
            <blockpin name="NotQ" />
        </block>
        <block symbolname="SRLatch" name="XLXI_3">
            <blockpin signalname="Switch2" name="A" />
            <blockpin signalname="XLXN_12" name="B" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="Db2" name="Q" />
            <blockpin name="NotQ" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="Switch1" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="Switch2" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3424" y="2912" name="XLXI_2" orien="R0">
        </instance>
        <instance x="3424" y="3360" name="XLXI_3" orien="R0">
        </instance>
        <branch name="C">
            <wire x2="3280" y1="3088" y2="3088" x1="3072" />
            <wire x2="3280" y1="3088" y2="3328" x1="3280" />
            <wire x2="3424" y1="3328" y2="3328" x1="3280" />
            <wire x2="3424" y1="2880" y2="2880" x1="3280" />
            <wire x2="3280" y1="2880" y2="3088" x1="3280" />
        </branch>
        <branch name="Switch1">
            <wire x2="2880" y1="2752" y2="2752" x1="2720" />
            <wire x2="3424" y1="2752" y2="2752" x1="2880" />
            <wire x2="2880" y1="2752" y2="2816" x1="2880" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="3424" y1="2816" y2="2816" x1="3104" />
        </branch>
        <branch name="Switch2">
            <wire x2="2880" y1="3200" y2="3200" x1="2720" />
            <wire x2="3424" y1="3200" y2="3200" x1="2880" />
            <wire x2="2880" y1="3200" y2="3264" x1="2880" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="3424" y1="3264" y2="3264" x1="3104" />
        </branch>
        <instance x="2880" y="3296" name="XLXI_7" orien="R0" />
        <instance x="2880" y="2848" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="2720" y="2752" name="Switch1" orien="R180" />
        <iomarker fontsize="28" x="2720" y="3200" name="Switch2" orien="R180" />
        <iomarker fontsize="28" x="3072" y="3088" name="C" orien="R180" />
        <branch name="Db1">
            <wire x2="3840" y1="2752" y2="2752" x1="3808" />
        </branch>
        <iomarker fontsize="28" x="3840" y="2752" name="Db1" orien="R0" />
        <branch name="Db2">
            <wire x2="3840" y1="3200" y2="3200" x1="3808" />
        </branch>
        <iomarker fontsize="28" x="3840" y="3200" name="Db2" orien="R0" />
    </sheet>
</drawing>