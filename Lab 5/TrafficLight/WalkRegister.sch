<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="WalkReset" />
        <signal name="WalkSignal" />
        <signal name="WalkButton" />
        <signal name="XLXN_6" />
        <port polarity="Input" name="WalkReset" />
        <port polarity="Output" name="WalkSignal" />
        <port polarity="Input" name="WalkButton" />
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
        <block symbolname="fdc" name="XLXI_1">
            <blockpin signalname="WalkButton" name="C" />
            <blockpin signalname="WalkReset" name="CLR" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="WalkSignal" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1344" name="XLXI_1" orien="R0" />
        <branch name="WalkReset">
            <wire x2="1216" y1="1456" y2="1456" x1="1104" />
            <wire x2="1232" y1="1312" y2="1312" x1="1216" />
            <wire x2="1216" y1="1312" y2="1456" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1456" name="WalkReset" orien="R180" />
        <instance x="992" y="1024" name="XLXI_2" orien="R0" />
        <branch name="WalkSignal">
            <wire x2="1632" y1="1088" y2="1088" x1="1616" />
            <wire x2="1776" y1="1088" y2="1088" x1="1632" />
        </branch>
        <branch name="WalkButton">
            <wire x2="1216" y1="1216" y2="1216" x1="1120" />
            <wire x2="1232" y1="1216" y2="1216" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1088" name="WalkSignal" orien="R0" />
        <iomarker fontsize="28" x="1120" y="1216" name="WalkButton" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1056" y1="1024" y2="1088" x1="1056" />
            <wire x2="1232" y1="1088" y2="1088" x1="1056" />
        </branch>
    </sheet>
</drawing>