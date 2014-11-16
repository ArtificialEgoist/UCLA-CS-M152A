<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="NotQ" />
        <signal name="A" />
        <signal name="B" />
        <signal name="XLXN_3" />
        <signal name="C" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="NotQ" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="NotQ" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="NotQ" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_9">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_10">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2720" y="1920" name="XLXI_6" orien="R0" />
        <instance x="2720" y="2256" name="XLXI_7" orien="R0" />
        <branch name="Q">
            <wire x2="2656" y1="2048" y2="2128" x1="2656" />
            <wire x2="2720" y1="2128" y2="2128" x1="2656" />
            <wire x2="3056" y1="2048" y2="2048" x1="2656" />
            <wire x2="3056" y1="1824" y2="1824" x1="2976" />
            <wire x2="3056" y1="1824" y2="2048" x1="3056" />
            <wire x2="3344" y1="1824" y2="1824" x1="3056" />
        </branch>
        <branch name="NotQ">
            <wire x2="2720" y1="1856" y2="1856" x1="2656" />
            <wire x2="2656" y1="1856" y2="1936" x1="2656" />
            <wire x2="3040" y1="1936" y2="1936" x1="2656" />
            <wire x2="3040" y1="1936" y2="2160" x1="3040" />
            <wire x2="3344" y1="2160" y2="2160" x1="3040" />
            <wire x2="3040" y1="2160" y2="2160" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3344" y="1824" name="Q" orien="R0" />
        <iomarker fontsize="28" x="3344" y="2160" name="NotQ" orien="R0" />
        <instance x="2224" y="1888" name="XLXI_9" orien="R0" />
        <instance x="2224" y="2288" name="XLXI_10" orien="R0" />
        <branch name="A">
            <wire x2="2224" y1="1760" y2="1760" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1760" name="A" orien="R180" />
        <branch name="B">
            <wire x2="2224" y1="2224" y2="2224" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2192" y="2224" name="B" orien="R180" />
        <branch name="C">
            <wire x2="2160" y1="1984" y2="1984" x1="1904" />
            <wire x2="2160" y1="1984" y2="2160" x1="2160" />
            <wire x2="2224" y1="2160" y2="2160" x1="2160" />
            <wire x2="2224" y1="1824" y2="1824" x1="2160" />
            <wire x2="2160" y1="1824" y2="1984" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1984" name="C" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="2720" y1="1792" y2="1792" x1="2480" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2720" y1="2192" y2="2192" x1="2480" />
        </branch>
    </sheet>
</drawing>