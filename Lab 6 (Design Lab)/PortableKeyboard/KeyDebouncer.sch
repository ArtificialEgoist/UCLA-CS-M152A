<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_3" />
        <signal name="Switch1" />
        <signal name="Switch2" />
        <signal name="Switch3" />
        <signal name="Switch4" />
        <signal name="Switch5" />
        <signal name="Switch6" />
        <signal name="Switch7" />
        <signal name="Switch8" />
        <signal name="SwitchOut8" />
        <signal name="SwitchOut7" />
        <signal name="SwitchOut6" />
        <signal name="SwitchOut5" />
        <signal name="SwitchOut4" />
        <signal name="SwitchOut3" />
        <signal name="SwitchOut2" />
        <signal name="SwitchOut1" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Switch1" />
        <port polarity="Input" name="Switch2" />
        <port polarity="Input" name="Switch3" />
        <port polarity="Input" name="Switch4" />
        <port polarity="Input" name="Switch5" />
        <port polarity="Input" name="Switch6" />
        <port polarity="Input" name="Switch7" />
        <port polarity="Input" name="Switch8" />
        <port polarity="Output" name="SwitchOut8" />
        <port polarity="Output" name="SwitchOut7" />
        <port polarity="Output" name="SwitchOut6" />
        <port polarity="Output" name="SwitchOut5" />
        <port polarity="Output" name="SwitchOut4" />
        <port polarity="Output" name="SwitchOut3" />
        <port polarity="Output" name="SwitchOut2" />
        <port polarity="Output" name="SwitchOut1" />
        <blockdef name="SwitchDebounce">
            <timestamp>2014-5-31T19:43:8</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ClockModule">
            <timestamp>2014-5-31T19:47:21</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SwitchDebounce" name="XLXI_1">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="Switch1" name="Switch1" />
            <blockpin signalname="Switch2" name="Switch2" />
            <blockpin signalname="SwitchOut1" name="Db1" />
            <blockpin signalname="SwitchOut2" name="Db2" />
        </block>
        <block symbolname="SwitchDebounce" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="Switch3" name="Switch1" />
            <blockpin signalname="Switch4" name="Switch2" />
            <blockpin signalname="SwitchOut3" name="Db1" />
            <blockpin signalname="SwitchOut4" name="Db2" />
        </block>
        <block symbolname="SwitchDebounce" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="Switch5" name="Switch1" />
            <blockpin signalname="Switch6" name="Switch2" />
            <blockpin signalname="SwitchOut5" name="Db1" />
            <blockpin signalname="SwitchOut6" name="Db2" />
        </block>
        <block symbolname="SwitchDebounce" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="Switch7" name="Switch1" />
            <blockpin signalname="Switch8" name="Switch2" />
            <blockpin signalname="SwitchOut7" name="Db1" />
            <blockpin signalname="SwitchOut8" name="Db2" />
        </block>
        <block symbolname="ClockModule" name="XLXI_9">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="F1Hz" />
            <blockpin name="F2Hz" />
            <blockpin signalname="XLXN_3" name="F500Hz" />
            <blockpin name="F50MHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1888" y="704" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1888" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1888" y="1424" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1888" y="1776" name="XLXI_4" orien="R0">
        </instance>
        <instance x="512" y="640" name="XLXI_9" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="512" y1="416" y2="416" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="416" name="CLK" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1408" y1="544" y2="544" x1="896" />
            <wire x2="1888" y1="544" y2="544" x1="1408" />
            <wire x2="1408" y1="544" y2="912" x1="1408" />
            <wire x2="1888" y1="912" y2="912" x1="1408" />
            <wire x2="1408" y1="912" y2="1264" x1="1408" />
            <wire x2="1888" y1="1264" y2="1264" x1="1408" />
            <wire x2="1408" y1="1264" y2="1616" x1="1408" />
            <wire x2="1888" y1="1616" y2="1616" x1="1408" />
        </branch>
        <branch name="Switch1">
            <wire x2="1888" y1="608" y2="608" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="608" name="Switch1" orien="R180" />
        <branch name="Switch2">
            <wire x2="1888" y1="672" y2="672" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="672" name="Switch2" orien="R180" />
        <branch name="Switch3">
            <wire x2="1888" y1="976" y2="976" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="976" name="Switch3" orien="R180" />
        <branch name="Switch4">
            <wire x2="1888" y1="1040" y2="1040" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1040" name="Switch4" orien="R180" />
        <branch name="Switch5">
            <wire x2="1888" y1="1328" y2="1328" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1328" name="Switch5" orien="R180" />
        <branch name="Switch6">
            <wire x2="1888" y1="1392" y2="1392" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1392" name="Switch6" orien="R180" />
        <branch name="Switch7">
            <wire x2="1888" y1="1680" y2="1680" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1680" name="Switch7" orien="R180" />
        <branch name="Switch8">
            <wire x2="1888" y1="1744" y2="1744" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1744" name="Switch8" orien="R180" />
        <branch name="SwitchOut8">
            <wire x2="2304" y1="1744" y2="1744" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1744" name="SwitchOut8" orien="R0" />
        <branch name="SwitchOut7">
            <wire x2="2304" y1="1616" y2="1616" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1616" name="SwitchOut7" orien="R0" />
        <branch name="SwitchOut6">
            <wire x2="2304" y1="1392" y2="1392" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1392" name="SwitchOut6" orien="R0" />
        <branch name="SwitchOut5">
            <wire x2="2304" y1="1264" y2="1264" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1264" name="SwitchOut5" orien="R0" />
        <branch name="SwitchOut4">
            <wire x2="2304" y1="1040" y2="1040" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1040" name="SwitchOut4" orien="R0" />
        <branch name="SwitchOut3">
            <wire x2="2304" y1="912" y2="912" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="912" name="SwitchOut3" orien="R0" />
        <branch name="SwitchOut2">
            <wire x2="2304" y1="672" y2="672" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="672" name="SwitchOut2" orien="R0" />
        <branch name="SwitchOut1">
            <wire x2="2304" y1="544" y2="544" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="544" name="SwitchOut1" orien="R0" />
    </sheet>
</drawing>