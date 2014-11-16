<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_29" />
        <signal name="XLXN_31" />
        <signal name="XLXN_30" />
        <signal name="XLXN_43" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="C" />
        <signal name="XLXN_54" />
        <signal name="DIV5" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="DIV5" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="ftce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="cd4cle" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="XLXN_8" name="CLR" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="L" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_19" name="Q0" />
            <blockpin signalname="XLXN_4" name="Q1" />
            <blockpin signalname="XLXN_11" name="Q2" />
            <blockpin signalname="XLXN_5" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="ftce" name="XLXI_7">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_58" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_57" name="T" />
            <blockpin signalname="XLXN_30" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_15">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="XLXN_12" name="I3" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="ftce" name="XLXI_6">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_58" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_56" name="T" />
            <blockpin signalname="XLXN_29" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_18">
            <blockpin signalname="XLXN_43" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_19">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="DIV5" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="XLXN_58" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3424" y="3008" name="XLXI_1" orien="R0" />
        <instance x="3040" y="3040" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="3008" y1="2816" y2="3120" x1="3008" />
            <wire x2="3104" y1="3120" y2="3120" x1="3008" />
            <wire x2="3424" y1="2816" y2="2816" x1="3008" />
            <wire x2="3104" y1="3040" y2="3120" x1="3104" />
        </branch>
        <instance x="4016" y="2528" name="XLXI_3" orien="R0" />
        <instance x="4016" y="2656" name="XLXI_4" orien="R0" />
        <instance x="4400" y="2688" name="XLXI_5" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="4400" y1="2496" y2="2496" x1="4240" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="4400" y1="2624" y2="2624" x1="4240" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="3424" y1="2976" y2="3184" x1="3424" />
            <wire x2="4736" y1="3184" y2="3184" x1="3424" />
            <wire x2="4736" y1="2528" y2="2528" x1="4656" />
            <wire x2="4736" y1="2528" y2="3184" x1="4736" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="3936" y1="2496" y2="2496" x1="3808" />
            <wire x2="3968" y1="2496" y2="2496" x1="3936" />
            <wire x2="4016" y1="2496" y2="2496" x1="3968" />
            <wire x2="3968" y1="2496" y2="2896" x1="3968" />
            <wire x2="5328" y1="2896" y2="2896" x1="3968" />
            <wire x2="3936" y1="1904" y2="2496" x1="3936" />
            <wire x2="4240" y1="1904" y2="1904" x1="3936" />
        </branch>
        <instance x="4240" y="1840" name="XLXI_9" orien="R0" />
        <instance x="4240" y="1936" name="XLXI_11" orien="R0" />
        <instance x="4240" y="2016" name="XLXI_13" orien="R0" />
        <instance x="4240" y="2096" name="XLXI_14" orien="R0" />
        <instance x="4720" y="2096" name="XLXI_15" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="4720" y1="1808" y2="1808" x1="4464" />
            <wire x2="4720" y1="1808" y2="1840" x1="4720" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="4720" y1="1904" y2="1904" x1="4464" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="4592" y1="1984" y2="1984" x1="4464" />
            <wire x2="4592" y1="1968" y2="1984" x1="4592" />
            <wire x2="4720" y1="1968" y2="1968" x1="4592" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="4720" y1="2064" y2="2064" x1="4464" />
            <wire x2="4720" y1="2032" y2="2064" x1="4720" />
        </branch>
        <instance x="5328" y="3088" name="XLXI_18" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="3984" y1="2432" y2="2432" x1="3808" />
            <wire x2="4016" y1="2432" y2="2432" x1="3984" />
            <wire x2="4400" y1="2432" y2="2432" x1="4016" />
            <wire x2="3984" y1="2432" y2="2832" x1="3984" />
            <wire x2="5328" y1="2832" y2="2832" x1="3984" />
            <wire x2="4016" y1="1808" y2="2432" x1="4016" />
            <wire x2="4240" y1="1808" y2="1808" x1="4016" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="5328" y1="2960" y2="2960" x1="5072" />
        </branch>
        <instance x="5344" y="2192" name="XLXI_6" orien="R0" />
        <instance x="5840" y="3184" name="XLXI_7" orien="R0" />
        <instance x="6320" y="2576" name="XLXI_19" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="5744" y1="1936" y2="1936" x1="5728" />
            <wire x2="5744" y1="1936" y2="2448" x1="5744" />
            <wire x2="6320" y1="2448" y2="2448" x1="5744" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="6240" y1="2928" y2="2928" x1="6224" />
            <wire x2="6320" y1="2512" y2="2512" x1="6240" />
            <wire x2="6240" y1="2512" y2="2928" x1="6240" />
        </branch>
        <instance x="4848" y="2992" name="XLXI_17" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="3872" y1="2560" y2="2560" x1="3808" />
            <wire x2="3936" y1="2560" y2="2560" x1="3872" />
            <wire x2="4400" y1="2560" y2="2560" x1="3936" />
            <wire x2="3936" y1="2560" y2="2960" x1="3936" />
            <wire x2="4848" y1="2960" y2="2960" x1="3936" />
            <wire x2="3872" y1="1984" y2="2560" x1="3872" />
            <wire x2="4240" y1="1984" y2="1984" x1="3872" />
        </branch>
        <instance x="4864" y="3056" name="XLXI_16" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="3856" y1="2624" y2="2624" x1="3808" />
            <wire x2="3888" y1="2624" y2="2624" x1="3856" />
            <wire x2="4016" y1="2624" y2="2624" x1="3888" />
            <wire x2="3888" y1="2624" y2="3024" x1="3888" />
            <wire x2="4864" y1="3024" y2="3024" x1="3888" />
            <wire x2="3856" y1="2064" y2="2624" x1="3856" />
            <wire x2="4240" y1="2064" y2="2064" x1="3856" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="5328" y1="3024" y2="3024" x1="5088" />
        </branch>
        <branch name="C">
            <wire x2="3296" y1="3504" y2="3504" x1="3120" />
            <wire x2="4832" y1="3504" y2="3504" x1="3296" />
            <wire x2="5776" y1="3504" y2="3504" x1="4832" />
            <wire x2="3424" y1="2880" y2="2880" x1="3296" />
            <wire x2="3296" y1="2880" y2="3504" x1="3296" />
            <wire x2="5344" y1="2064" y2="2064" x1="4832" />
            <wire x2="4832" y1="2064" y2="3504" x1="4832" />
            <wire x2="5840" y1="3056" y2="3056" x1="5776" />
            <wire x2="5776" y1="3056" y2="3504" x1="5776" />
        </branch>
        <iomarker fontsize="28" x="3120" y="3504" name="C" orien="R180" />
        <branch name="DIV5">
            <wire x2="6608" y1="2480" y2="2480" x1="6576" />
        </branch>
        <iomarker fontsize="28" x="6608" y="2480" name="DIV5" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="5344" y1="1936" y2="1936" x1="4976" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="5840" y1="2928" y2="2928" x1="5584" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="4992" y1="2000" y2="2448" x1="4992" />
            <wire x2="5104" y1="2448" y2="2448" x1="4992" />
            <wire x2="5648" y1="2448" y2="2448" x1="5104" />
            <wire x2="5648" y1="2448" y2="2992" x1="5648" />
            <wire x2="5840" y1="2992" y2="2992" x1="5648" />
            <wire x2="5344" y1="2000" y2="2000" x1="4992" />
            <wire x2="5104" y1="2352" y2="2448" x1="5104" />
        </branch>
        <instance x="5040" y="2352" name="XLXI_20" orien="R0" />
    </sheet>
</drawing>