<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="F1Hz" />
        <signal name="XLXN_11" />
        <signal name="F2Hz" />
        <signal name="XLXN_13" />
        <signal name="XLXN_17" />
        <signal name="F4Hz" />
        <signal name="XLXN_20" />
        <signal name="F500Hz" />
        <signal name="C" />
        <port polarity="Output" name="F1Hz" />
        <port polarity="Output" name="F2Hz" />
        <port polarity="Output" name="F4Hz" />
        <port polarity="Output" name="F500Hz" />
        <port polarity="Input" name="C" />
        <blockdef name="Counter10">
            <timestamp>2014-5-13T3:28:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Counter5">
            <timestamp>2014-5-13T3:21:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Counter2">
            <timestamp>2014-5-13T3:21:14</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Counter10" name="XLXI_7">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_5" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_8">
            <blockpin signalname="XLXN_5" name="C" />
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
        <block symbolname="Counter10" name="XLXI_12">
            <blockpin signalname="XLXN_20" name="C" />
            <blockpin signalname="XLXN_17" name="DIV10" />
        </block>
        <block symbolname="Counter10" name="XLXI_13">
            <blockpin signalname="XLXN_17" name="C" />
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
        <block symbolname="Counter5" name="XLXI_16">
            <blockpin signalname="XLXN_13" name="C" />
            <blockpin signalname="F4Hz" name="DIV5" />
        </block>
        <block symbolname="Counter5" name="XLXI_17">
            <blockpin signalname="XLXN_17" name="C" />
            <blockpin signalname="XLXN_13" name="DIV5" />
        </block>
        <block symbolname="Counter2" name="XLXI_18">
            <blockpin signalname="XLXN_20" name="C" />
            <blockpin signalname="F500Hz" name="DIV2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="224" y="2480" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="640" y1="2448" y2="2448" x1="608" />
        </branch>
        <instance x="640" y="2480" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1056" y1="2448" y2="2448" x1="1024" />
        </branch>
        <instance x="1056" y="2480" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="1472" y1="2448" y2="2448" x1="1440" />
        </branch>
        <instance x="1472" y="2480" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1888" y1="2448" y2="2448" x1="1856" />
        </branch>
        <instance x="1888" y="2480" name="XLXI_11" orien="R0">
        </instance>
        <instance x="2400" y="2480" name="XLXI_12" orien="R0">
        </instance>
        <instance x="2896" y="2480" name="XLXI_13" orien="R0">
        </instance>
        <instance x="3376" y="2480" name="XLXI_14" orien="R0">
        </instance>
        <branch name="F1Hz">
            <wire x2="3792" y1="2448" y2="2448" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="2448" name="F1Hz" orien="R0" />
        <instance x="3376" y="2144" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="3328" y1="2448" y2="2448" x1="3280" />
            <wire x2="3376" y1="2448" y2="2448" x1="3328" />
            <wire x2="3376" y1="2112" y2="2112" x1="3328" />
            <wire x2="3328" y1="2112" y2="2448" x1="3328" />
        </branch>
        <branch name="F2Hz">
            <wire x2="3792" y1="2112" y2="2112" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="2112" name="F2Hz" orien="R0" />
        <instance x="3040" y="1856" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="3040" y1="1824" y2="1824" x1="3008" />
        </branch>
        <instance x="2624" y="1856" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="2624" y1="1824" y2="1824" x1="2544" />
            <wire x2="2544" y1="1824" y2="1936" x1="2544" />
            <wire x2="2848" y1="1936" y2="1936" x1="2544" />
            <wire x2="2848" y1="1936" y2="2448" x1="2848" />
            <wire x2="2896" y1="2448" y2="2448" x1="2848" />
            <wire x2="2848" y1="2448" y2="2448" x1="2784" />
        </branch>
        <branch name="F4Hz">
            <wire x2="3456" y1="1824" y2="1824" x1="3424" />
        </branch>
        <iomarker fontsize="28" x="3456" y="1824" name="F4Hz" orien="R0" />
        <instance x="2560" y="1552" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="2336" y1="2448" y2="2448" x1="2272" />
            <wire x2="2400" y1="2448" y2="2448" x1="2336" />
            <wire x2="2560" y1="1520" y2="1520" x1="2336" />
            <wire x2="2336" y1="1520" y2="2448" x1="2336" />
        </branch>
        <branch name="F500Hz">
            <wire x2="3360" y1="1520" y2="1520" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3360" y="1520" name="F500Hz" orien="R0" />
        <branch name="C">
            <wire x2="224" y1="2448" y2="2448" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="2448" name="C" orien="R180" />
    </sheet>
</drawing>