<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_17" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="Button1" />
        <signal name="Button4" />
        <signal name="Button3" />
        <signal name="Button2" />
        <signal name="Button5" />
        <signal name="Button8" />
        <signal name="Button7" />
        <signal name="Button6" />
        <signal name="ButtonOut1" />
        <signal name="ButtonOut4" />
        <signal name="ButtonOut3" />
        <signal name="ButtonOut2" />
        <signal name="ButtonOut5" />
        <signal name="ButtonOut8" />
        <signal name="ButtonOut7" />
        <signal name="ButtonOut6" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Button1" />
        <port polarity="Input" name="Button4" />
        <port polarity="Input" name="Button3" />
        <port polarity="Input" name="Button2" />
        <port polarity="Input" name="Button5" />
        <port polarity="Input" name="Button8" />
        <port polarity="Input" name="Button7" />
        <port polarity="Input" name="Button6" />
        <port polarity="Output" name="ButtonOut1" />
        <port polarity="Output" name="ButtonOut4" />
        <port polarity="Output" name="ButtonOut3" />
        <port polarity="Output" name="ButtonOut2" />
        <port polarity="Output" name="ButtonOut5" />
        <port polarity="Output" name="ButtonOut8" />
        <port polarity="Output" name="ButtonOut7" />
        <port polarity="Output" name="ButtonOut6" />
        <blockdef name="DebounceSync">
            <timestamp>2014-5-31T19:43:14</timestamp>
            <rect width="384" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <line x2="512" y1="-256" y2="-256" x1="448" />
            <line x2="512" y1="-160" y2="-160" x1="448" />
            <line x2="512" y1="-64" y2="-64" x1="448" />
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
        <block symbolname="ClockModule" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="F1Hz" />
            <blockpin signalname="XLXN_4" name="F2Hz" />
            <blockpin name="F500Hz" />
            <blockpin signalname="XLXN_2" name="F50MHz" />
        </block>
        <block symbolname="DebounceSync" name="XLXI_1">
            <blockpin signalname="Button1" name="INPUT_FIRST" />
            <blockpin signalname="XLXN_4" name="CLK_2" />
            <blockpin signalname="Button4" name="INPUT_FOURTH" />
            <blockpin signalname="Button3" name="INPUT_THIRD" />
            <blockpin signalname="Button2" name="INPUT_SECOND" />
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="ButtonOut1" name="OUTPUT_FIRST" />
            <blockpin signalname="ButtonOut4" name="OUTPUT_FOURTH" />
            <blockpin signalname="ButtonOut3" name="OUTPUT_THIRD" />
            <blockpin signalname="ButtonOut2" name="OUTPUT_SECOND" />
        </block>
        <block symbolname="DebounceSync" name="XLXI_2">
            <blockpin signalname="Button5" name="INPUT_FIRST" />
            <blockpin signalname="XLXN_4" name="CLK_2" />
            <blockpin signalname="Button8" name="INPUT_FOURTH" />
            <blockpin signalname="Button7" name="INPUT_THIRD" />
            <blockpin signalname="Button6" name="INPUT_SECOND" />
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="ButtonOut5" name="OUTPUT_FIRST" />
            <blockpin signalname="ButtonOut8" name="OUTPUT_FOURTH" />
            <blockpin signalname="ButtonOut7" name="OUTPUT_THIRD" />
            <blockpin signalname="ButtonOut6" name="OUTPUT_SECOND" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="336" y1="1184" y2="1184" x1="240" />
        </branch>
        <instance x="336" y="1408" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="240" y="1184" name="CLK" orien="R180" />
        <instance x="1936" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1936" y="1952" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1376" y1="1376" y2="1376" x1="720" />
            <wire x2="1376" y1="1376" y2="1920" x1="1376" />
            <wire x2="1936" y1="1920" y2="1920" x1="1376" />
            <wire x2="1936" y1="1168" y2="1168" x1="1376" />
            <wire x2="1376" y1="1168" y2="1376" x1="1376" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1520" y1="1248" y2="1248" x1="720" />
            <wire x2="1520" y1="1248" y2="1664" x1="1520" />
            <wire x2="1936" y1="1664" y2="1664" x1="1520" />
            <wire x2="1936" y1="912" y2="912" x1="1520" />
            <wire x2="1520" y1="912" y2="1248" x1="1520" />
        </branch>
        <branch name="Button1">
            <wire x2="1936" y1="848" y2="848" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="848" name="Button1" orien="R180" />
        <branch name="Button4">
            <wire x2="1936" y1="976" y2="976" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="976" name="Button4" orien="R180" />
        <branch name="Button3">
            <wire x2="1936" y1="1040" y2="1040" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1040" name="Button3" orien="R180" />
        <branch name="Button2">
            <wire x2="1936" y1="1104" y2="1104" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1104" name="Button2" orien="R180" />
        <branch name="Button5">
            <wire x2="1936" y1="1600" y2="1600" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1600" name="Button5" orien="R180" />
        <branch name="Button8">
            <wire x2="1936" y1="1728" y2="1728" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1728" name="Button8" orien="R180" />
        <branch name="Button7">
            <wire x2="1936" y1="1792" y2="1792" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1792" name="Button7" orien="R180" />
        <branch name="Button6">
            <wire x2="1936" y1="1856" y2="1856" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1856" name="Button6" orien="R180" />
        <branch name="ButtonOut1">
            <wire x2="2480" y1="848" y2="848" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="848" name="ButtonOut1" orien="R0" />
        <branch name="ButtonOut4">
            <wire x2="2480" y1="944" y2="944" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="944" name="ButtonOut4" orien="R0" />
        <branch name="ButtonOut3">
            <wire x2="2480" y1="1040" y2="1040" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1040" name="ButtonOut3" orien="R0" />
        <branch name="ButtonOut2">
            <wire x2="2480" y1="1136" y2="1136" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1136" name="ButtonOut2" orien="R0" />
        <branch name="ButtonOut5">
            <wire x2="2480" y1="1600" y2="1600" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1600" name="ButtonOut5" orien="R0" />
        <branch name="ButtonOut8">
            <wire x2="2480" y1="1696" y2="1696" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1696" name="ButtonOut8" orien="R0" />
        <branch name="ButtonOut7">
            <wire x2="2480" y1="1792" y2="1792" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1792" name="ButtonOut7" orien="R0" />
        <branch name="ButtonOut6">
            <wire x2="2480" y1="1888" y2="1888" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1888" name="ButtonOut6" orien="R0" />
    </sheet>
</drawing>