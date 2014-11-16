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
        <signal name="I(3)" />
        <signal name="I(2)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="Timeout" />
        <signal name="I(0)" />
        <signal name="I(1)" />
        <signal name="XLXN_37(3:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="I(3:0)" />
        <signal name="XLXN_41(3:0)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_47" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Timeout" />
        <port polarity="Input" name="I(3:0)" />
        <blockdef name="cd4cle">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-640" height="576" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="cd4cle" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="Timeout" name="CLR" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="L" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_31" name="Q0" />
            <blockpin signalname="XLXN_27" name="Q1" />
            <blockpin signalname="XLXN_26" name="Q2" />
            <blockpin signalname="XLXN_15" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="xnor2" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="I(3)" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="I(2)" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_7">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="I(1)" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_8">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="I(0)" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin signalname="Timeout" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="1168" y1="1824" y2="1824" x1="752" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="896" y1="1712" y2="1760" x1="896" />
            <wire x2="1168" y1="1760" y2="1760" x1="896" />
        </branch>
        <instance x="1168" y="1952" name="XLXI_1" orien="R0" />
        <branch name="I(3)">
            <wire x2="1856" y1="752" y2="752" x1="1072" />
            <wire x2="1856" y1="752" y2="768" x1="1856" />
            <wire x2="1872" y1="768" y2="768" x1="1856" />
        </branch>
        <branch name="I(2)">
            <wire x2="1920" y1="880" y2="880" x1="1072" />
            <wire x2="1920" y1="880" y2="1008" x1="1920" />
            <wire x2="1936" y1="1008" y2="1008" x1="1920" />
        </branch>
        <instance x="1872" y="896" name="XLXI_5" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1760" y1="1568" y2="1568" x1="1552" />
            <wire x2="1872" y1="832" y2="832" x1="1760" />
            <wire x2="1760" y1="832" y2="1568" x1="1760" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1792" y1="1504" y2="1504" x1="1552" />
            <wire x2="1792" y1="1072" y2="1504" x1="1792" />
            <wire x2="1936" y1="1072" y2="1072" x1="1792" />
        </branch>
        <instance x="1936" y="1136" name="XLXI_6" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1888" y1="1440" y2="1440" x1="1552" />
            <wire x2="1888" y1="1248" y2="1440" x1="1888" />
            <wire x2="1984" y1="1248" y2="1248" x1="1888" />
        </branch>
        <instance x="1984" y="1312" name="XLXI_7" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1552" y1="1376" y2="1408" x1="1552" />
            <wire x2="2064" y1="1408" y2="1408" x1="1552" />
        </branch>
        <instance x="2064" y="1472" name="XLXI_8" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="2448" y1="800" y2="800" x1="2128" />
            <wire x2="2448" y1="800" y2="1008" x1="2448" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2448" y1="1376" y2="1376" x1="2320" />
            <wire x2="2448" y1="1200" y2="1376" x1="2448" />
        </branch>
        <branch name="Timeout">
            <wire x2="1168" y1="1920" y2="2000" x1="1168" />
            <wire x2="2864" y1="2000" y2="2000" x1="1168" />
            <wire x2="2864" y1="1104" y2="1104" x1="2704" />
            <wire x2="2976" y1="1104" y2="1104" x1="2864" />
            <wire x2="2864" y1="1104" y2="2000" x1="2864" />
        </branch>
        <branch name="I(0)">
            <wire x2="1568" y1="1136" y2="1136" x1="1072" />
            <wire x2="1568" y1="1136" y2="1344" x1="1568" />
            <wire x2="2064" y1="1344" y2="1344" x1="1568" />
        </branch>
        <branch name="I(1)">
            <wire x2="1520" y1="1008" y2="1008" x1="1072" />
            <wire x2="1520" y1="1008" y2="1184" x1="1520" />
            <wire x2="1984" y1="1184" y2="1184" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="752" y="1824" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2976" y="1104" name="Timeout" orien="R0" />
        <branch name="I(3:0)">
            <wire x2="976" y1="944" y2="944" x1="768" />
            <wire x2="976" y1="944" y2="1008" x1="976" />
            <wire x2="976" y1="1008" y2="1136" x1="976" />
            <wire x2="976" y1="1136" y2="1296" x1="976" />
            <wire x2="976" y1="624" y2="752" x1="976" />
            <wire x2="976" y1="752" y2="880" x1="976" />
            <wire x2="976" y1="880" y2="944" x1="976" />
        </branch>
        <bustap x2="1072" y1="752" y2="752" x1="976" />
        <bustap x2="1072" y1="880" y2="880" x1="976" />
        <bustap x2="1072" y1="1008" y2="1008" x1="976" />
        <bustap x2="1072" y1="1136" y2="1136" x1="976" />
        <iomarker fontsize="28" x="768" y="944" name="I(3:0)" orien="R180" />
        <instance x="832" y="1712" name="XLXI_2" orien="R0" />
        <instance x="2448" y="1264" name="XLXI_9" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="2256" y1="1040" y2="1040" x1="2192" />
            <wire x2="2256" y1="1040" y2="1072" x1="2256" />
            <wire x2="2448" y1="1072" y2="1072" x1="2256" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2256" y1="1216" y2="1216" x1="2240" />
            <wire x2="2448" y1="1136" y2="1136" x1="2256" />
            <wire x2="2256" y1="1136" y2="1216" x1="2256" />
        </branch>
    </sheet>
</drawing>