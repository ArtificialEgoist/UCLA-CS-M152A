<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Selector0" />
        <signal name="Selector1" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="ButtonLow" />
        <signal name="ButtonHigh" />
        <signal name="XLXN_15" />
        <signal name="ButtonMid" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <port polarity="Output" name="Selector0" />
        <port polarity="Output" name="Selector1" />
        <port polarity="Input" name="ButtonLow" />
        <port polarity="Input" name="ButtonHigh" />
        <port polarity="Input" name="ButtonMid" />
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="fdc" name="XLXI_1">
            <blockpin signalname="ButtonMid" name="C" />
            <blockpin signalname="XLXN_21" name="CLR" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="Selector0" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_2">
            <blockpin signalname="ButtonHigh" name="C" />
            <blockpin signalname="XLXN_22" name="CLR" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="Selector1" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="ButtonHigh" name="I0" />
            <blockpin signalname="ButtonLow" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="ButtonLow" name="I0" />
            <blockpin signalname="ButtonMid" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="1088" name="XLXI_1" orien="R0" />
        <instance x="1632" y="1664" name="XLXI_2" orien="R0" />
        <branch name="Selector0">
            <wire x2="2048" y1="832" y2="832" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="832" name="Selector0" orien="R0" />
        <branch name="Selector1">
            <wire x2="2048" y1="1408" y2="1408" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1408" name="Selector1" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1552" y1="784" y2="832" x1="1552" />
            <wire x2="1632" y1="832" y2="832" x1="1552" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1552" y1="1360" y2="1408" x1="1552" />
            <wire x2="1632" y1="1408" y2="1408" x1="1552" />
        </branch>
        <instance x="1488" y="784" name="XLXI_5" orien="R0" />
        <instance x="1488" y="1360" name="XLXI_6" orien="R0" />
        <branch name="ButtonLow">
            <wire x2="928" y1="1296" y2="1296" x1="768" />
            <wire x2="928" y1="1296" y2="1664" x1="928" />
            <wire x2="1344" y1="1664" y2="1664" x1="928" />
            <wire x2="1344" y1="1024" y2="1024" x1="928" />
            <wire x2="928" y1="1024" y2="1296" x1="928" />
        </branch>
        <branch name="ButtonHigh">
            <wire x2="1088" y1="1536" y2="1536" x1="816" />
            <wire x2="1632" y1="1536" y2="1536" x1="1088" />
            <wire x2="1088" y1="1088" y2="1536" x1="1088" />
            <wire x2="1344" y1="1088" y2="1088" x1="1088" />
        </branch>
        <branch name="ButtonMid">
            <wire x2="976" y1="960" y2="960" x1="800" />
            <wire x2="1120" y1="960" y2="960" x1="976" />
            <wire x2="1616" y1="960" y2="960" x1="1120" />
            <wire x2="1632" y1="960" y2="960" x1="1616" />
            <wire x2="1120" y1="960" y2="1600" x1="1120" />
            <wire x2="1344" y1="1600" y2="1600" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="800" y="960" name="ButtonMid" orien="R180" />
        <iomarker fontsize="28" x="816" y="1536" name="ButtonHigh" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="1632" y1="1056" y2="1056" x1="1600" />
        </branch>
        <instance x="1344" y="1152" name="XLXI_7" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1632" y1="1632" y2="1632" x1="1600" />
        </branch>
        <instance x="1344" y="1728" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="768" y="1296" name="ButtonLow" orien="R180" />
    </sheet>
</drawing>