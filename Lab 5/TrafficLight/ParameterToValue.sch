<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I(1)" />
        <signal name="I(0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_34" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="I(1:0)" />
        <signal name="XLXN_52(1:0)" />
        <signal name="O(1)" />
        <signal name="O(3)" />
        <signal name="O(3:0)" />
        <signal name="O(0)" />
        <signal name="O(2)" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <port polarity="Input" name="I(1:0)" />
        <port polarity="Output" name="O(3:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
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
        <block symbolname="nor2" name="XLXI_3">
            <blockpin signalname="I(0)" name="I0" />
            <blockpin signalname="I(1)" name="I1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_34" name="I" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="I(0)" name="I" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="O(1)" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="O(3)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I(1)">
            <wire x2="1392" y1="1232" y2="1232" x1="1072" />
            <wire x2="1072" y1="1232" y2="1312" x1="1072" />
        </branch>
        <branch name="I(0)">
            <wire x2="1136" y1="1568" y2="1568" x1="1072" />
            <wire x2="1136" y1="1568" y2="1792" x1="1136" />
            <wire x2="1216" y1="1792" y2="1792" x1="1136" />
            <wire x2="1392" y1="1296" y2="1296" x1="1136" />
            <wire x2="1136" y1="1296" y2="1568" x1="1136" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1488" y1="1792" y2="1792" x1="1440" />
        </branch>
        <branch name="I(1:0)">
            <wire x2="976" y1="1440" y2="1440" x1="800" />
            <wire x2="976" y1="1440" y2="1568" x1="976" />
            <wire x2="976" y1="1568" y2="1728" x1="976" />
            <wire x2="976" y1="1152" y2="1312" x1="976" />
            <wire x2="976" y1="1312" y2="1440" x1="976" />
        </branch>
        <bustap x2="1072" y1="1312" y2="1312" x1="976" />
        <bustap x2="1072" y1="1568" y2="1568" x1="976" />
        <iomarker fontsize="28" x="800" y="1440" name="I(1:0)" orien="R180" />
        <instance x="1488" y="1824" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="2032" y="1392" name="O(3:0)" orien="R0" />
        <instance x="1584" y="1536" name="XLXI_1" orien="R0" />
        <instance x="1600" y="1152" name="XLXI_2" orien="R0" />
        <bustap x2="1760" y1="1792" y2="1792" x1="1856" />
        <bustap x2="1760" y1="1536" y2="1536" x1="1856" />
        <bustap x2="1760" y1="1264" y2="1264" x1="1856" />
        <bustap x2="1760" y1="1024" y2="1024" x1="1856" />
        <branch name="O(1)">
            <wire x2="1760" y1="1536" y2="1536" x1="1648" />
        </branch>
        <branch name="O(3)">
            <wire x2="1760" y1="1024" y2="1024" x1="1664" />
        </branch>
        <branch name="O(3:0)">
            <wire x2="1856" y1="944" y2="1024" x1="1856" />
            <wire x2="1856" y1="1024" y2="1264" x1="1856" />
            <wire x2="1856" y1="1264" y2="1392" x1="1856" />
            <wire x2="1856" y1="1392" y2="1536" x1="1856" />
            <wire x2="1856" y1="1536" y2="1792" x1="1856" />
            <wire x2="1856" y1="1792" y2="1856" x1="1856" />
            <wire x2="2032" y1="1392" y2="1392" x1="1856" />
        </branch>
        <branch name="O(0)">
            <wire x2="1744" y1="1792" y2="1792" x1="1712" />
            <wire x2="1760" y1="1792" y2="1792" x1="1744" />
        </branch>
        <branch name="O(2)">
            <wire x2="1760" y1="1264" y2="1264" x1="1648" />
        </branch>
        <instance x="1392" y="1360" name="XLXI_3" orien="R0" />
        <instance x="1216" y="1824" name="XLXI_8" orien="R0" />
    </sheet>
</drawing>