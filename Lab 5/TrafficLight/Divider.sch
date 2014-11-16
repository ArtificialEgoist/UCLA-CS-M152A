<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="F1Hz" />
        <signal name="XLXN_11" />
        <signal name="F2Hz" />
        <signal name="XLXN_20" />
        <signal name="F500Hz" />
        <signal name="C" />
        <signal name="XLXN_21" />
        <signal name="XLXN_25" />
        <signal name="F50MHz" />
        <port polarity="Output" name="F1Hz" />
        <port polarity="Output" name="F2Hz" />
        <port polarity="Output" name="F500Hz" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="F50MHz" />
        <blockdef name="Counter10">
            <timestamp>2014-5-22T11:15:54</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <block symbolname="Counter10" name="XLXI_7">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_25" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_8">
            <blockpin signalname="XLXN_25" name="C" />
            <blockpin signalname="XLXN_6" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_9">
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="XLXN_7" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_10">
            <blockpin signalname="XLXN_7" name="C" />
            <blockpin signalname="XLXN_8" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_11">
            <blockpin signalname="XLXN_8" name="C" />
            <blockpin signalname="XLXN_20" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_13">
            <blockpin signalname="XLXN_21" name="C" />
            <blockpin signalname="XLXN_11" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_14">
            <blockpin signalname="XLXN_11" name="C" />
            <blockpin signalname="F1Hz" name="DIV10" />
        </block>
        <block symbolname="Counter5" name="XLXI_15">
            <blockpin signalname="XLXN_11" name="C" />
            <blockpin signalname="F2Hz" name="DIV5" />
        </block>
        <block symbolname="Counter10" name="XLXI_12">
            <blockpin signalname="XLXN_20" name="C" />
            <blockpin signalname="XLXN_21" name="DIV10" />
        </block>
        <block symbolname="Counter2" name="XLXI_45">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="F50MHz" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_46">
            <blockpin signalname="XLXN_20" name="C" />
            <blockpin signalname="F500Hz" name="DIV2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="976" y="2688" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1392" y="2688" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1808" y1="2656" y2="2656" x1="1776" />
        </branch>
        <instance x="1808" y="2688" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="2224" y1="2656" y2="2656" x1="2192" />
        </branch>
        <instance x="2224" y="2688" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="2640" y1="2656" y2="2656" x1="2608" />
        </branch>
        <instance x="2640" y="2688" name="XLXI_11" orien="R0">
        </instance>
        <instance x="3648" y="2688" name="XLXI_13" orien="R0">
        </instance>
        <instance x="4128" y="2688" name="XLXI_14" orien="R0">
        </instance>
        <branch name="F1Hz">
            <wire x2="4544" y1="2656" y2="2656" x1="4512" />
        </branch>
        <instance x="4128" y="2352" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="4080" y1="2656" y2="2656" x1="4032" />
            <wire x2="4128" y1="2656" y2="2656" x1="4080" />
            <wire x2="4128" y1="2320" y2="2320" x1="4080" />
            <wire x2="4080" y1="2320" y2="2656" x1="4080" />
        </branch>
        <branch name="F2Hz">
            <wire x2="4544" y1="2320" y2="2320" x1="4512" />
        </branch>
        <branch name="F500Hz">
            <wire x2="4112" y1="1728" y2="1728" x1="3696" />
        </branch>
        <branch name="C">
            <wire x2="912" y1="2656" y2="2656" x1="800" />
            <wire x2="976" y1="2656" y2="2656" x1="912" />
            <wire x2="3312" y1="1392" y2="1392" x1="912" />
            <wire x2="912" y1="1392" y2="2656" x1="912" />
        </branch>
        <instance x="3152" y="2688" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="3648" y1="2656" y2="2656" x1="3536" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1392" y1="2656" y2="2656" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="4544" y="2656" name="F1Hz" orien="R0" />
        <iomarker fontsize="28" x="4544" y="2320" name="F2Hz" orien="R0" />
        <iomarker fontsize="28" x="4112" y="1728" name="F500Hz" orien="R0" />
        <iomarker fontsize="28" x="800" y="2656" name="C" orien="R180" />
        <iomarker fontsize="28" x="4080" y="1392" name="F50MHz" orien="R0" />
        <branch name="F50MHz">
            <wire x2="4080" y1="1392" y2="1392" x1="3696" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="3088" y1="2656" y2="2656" x1="3024" />
            <wire x2="3152" y1="2656" y2="2656" x1="3088" />
            <wire x2="3088" y1="1728" y2="2656" x1="3088" />
            <wire x2="3312" y1="1728" y2="1728" x1="3088" />
        </branch>
        <instance x="3312" y="1760" name="XLXI_46" orien="R0">
        </instance>
        <instance x="3312" y="1424" name="XLXI_45" orien="R0">
        </instance>
    </sheet>
</drawing>