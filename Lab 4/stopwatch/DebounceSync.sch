<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="INPUT_FIRST" />
        <signal name="OUTPUT_FIRST" />
        <signal name="XLXN_12" />
        <signal name="CLK_2" />
        <signal name="INPUT_FOURTH" />
        <signal name="OUTPUT_FOURTH" />
        <signal name="INPUT_THIRD" />
        <signal name="OUTPUT_THIRD" />
        <signal name="INPUT_SECOND" />
        <signal name="OUTPUT_SECOND" />
        <signal name="XLXN_9" />
        <signal name="XLXN_8" />
        <signal name="CLK" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_46" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <port polarity="Input" name="INPUT_FIRST" />
        <port polarity="Output" name="OUTPUT_FIRST" />
        <port polarity="Input" name="CLK_2" />
        <port polarity="Input" name="INPUT_FOURTH" />
        <port polarity="Output" name="OUTPUT_FOURTH" />
        <port polarity="Input" name="INPUT_THIRD" />
        <port polarity="Output" name="OUTPUT_THIRD" />
        <port polarity="Input" name="INPUT_SECOND" />
        <port polarity="Output" name="OUTPUT_SECOND" />
        <port polarity="Input" name="CLK" />
        <blockdef name="debounce">
            <timestamp>2014-5-13T3:20:45</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="debounce" name="XLXI_1">
            <blockpin signalname="INPUT_FIRST" name="SIG_IN" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_49" name="SIG_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_4">
            <blockpin signalname="INPUT_FOURTH" name="SIG_IN" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_51" name="SIG_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_3">
            <blockpin signalname="INPUT_THIRD" name="SIG_IN" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_50" name="SIG_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_2">
            <blockpin signalname="INPUT_SECOND" name="SIG_IN" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_12" name="SIG_OUT" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_13">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="OUTPUT_SECOND" name="CLR" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_11">
            <blockpin signalname="CLK_2" name="C" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="OUTPUT_SECOND" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_28">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="OUTPUT_FIRST" name="CLR" />
            <blockpin signalname="XLXN_46" name="D" />
            <blockpin signalname="XLXN_56" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_29">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="OUTPUT_THIRD" name="CLR" />
            <blockpin signalname="XLXN_43" name="D" />
            <blockpin signalname="XLXN_55" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_30">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="OUTPUT_FOURTH" name="CLR" />
            <blockpin signalname="XLXN_44" name="D" />
            <blockpin signalname="XLXN_54" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_32">
            <blockpin signalname="CLK_2" name="C" />
            <blockpin signalname="XLXN_56" name="D" />
            <blockpin signalname="OUTPUT_FIRST" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_33">
            <blockpin signalname="CLK_2" name="C" />
            <blockpin signalname="XLXN_55" name="D" />
            <blockpin signalname="OUTPUT_THIRD" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_34">
            <blockpin signalname="CLK_2" name="C" />
            <blockpin signalname="XLXN_54" name="D" />
            <blockpin signalname="OUTPUT_FOURTH" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_36">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_37">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_39">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="656" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="400" y="176" name="CLK" orien="R270" />
        <iomarker fontsize="28" x="2384" y="224" name="CLK_2" orien="R270" />
        <instance x="656" y="1920" name="XLXI_4" orien="R0">
        </instance>
        <instance x="640" y="1536" name="XLXI_3" orien="R0">
        </instance>
        <instance x="656" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <branch name="OUTPUT_SECOND">
            <wire x2="1744" y1="1152" y2="1232" x1="1744" />
            <wire x2="3040" y1="1232" y2="1232" x1="1744" />
            <wire x2="3040" y1="928" y2="928" x1="2928" />
            <wire x2="3168" y1="928" y2="928" x1="3040" />
            <wire x2="3040" y1="928" y2="1232" x1="3040" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1744" y1="928" y2="928" x1="1664" />
        </branch>
        <instance x="2544" y="1184" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="3168" y="928" name="OUTPUT_SECOND" orien="R0" />
        <branch name="OUTPUT_FOURTH">
            <wire x2="1744" y1="2016" y2="2080" x1="1744" />
            <wire x2="3008" y1="2080" y2="2080" x1="1744" />
            <wire x2="3008" y1="1792" y2="1792" x1="2928" />
            <wire x2="3184" y1="1792" y2="1792" x1="3008" />
            <wire x2="3008" y1="1792" y2="2080" x1="3008" />
        </branch>
        <branch name="OUTPUT_THIRD">
            <wire x2="1744" y1="1632" y2="1712" x1="1744" />
            <wire x2="3008" y1="1712" y2="1712" x1="1744" />
            <wire x2="3008" y1="1408" y2="1408" x1="2928" />
            <wire x2="3152" y1="1408" y2="1408" x1="3008" />
            <wire x2="3008" y1="1408" y2="1712" x1="3008" />
        </branch>
        <branch name="OUTPUT_FIRST">
            <wire x2="1744" y1="752" y2="848" x1="1744" />
            <wire x2="2992" y1="848" y2="848" x1="1744" />
            <wire x2="2992" y1="528" y2="528" x1="2912" />
            <wire x2="3168" y1="528" y2="528" x1="2992" />
            <wire x2="2992" y1="528" y2="848" x1="2992" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1744" y1="1408" y2="1408" x1="1680" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1392" y1="560" y2="560" x1="1040" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1424" y1="1440" y2="1440" x1="1024" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1424" y1="1824" y2="1824" x1="1040" />
        </branch>
        <instance x="1424" y="1888" name="XLXI_37" orien="R0" />
        <branch name="XLXN_54">
            <wire x2="1408" y1="1648" y2="1760" x1="1408" />
            <wire x2="1424" y1="1760" y2="1760" x1="1408" />
            <wire x2="2192" y1="1648" y2="1648" x1="1408" />
            <wire x2="2192" y1="1648" y2="1792" x1="2192" />
            <wire x2="2544" y1="1792" y2="1792" x1="2192" />
            <wire x2="2192" y1="1792" y2="1792" x1="2128" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1744" y1="1792" y2="1792" x1="1680" />
        </branch>
        <instance x="1744" y="2048" name="XLXI_30" orien="R0" />
        <instance x="1424" y="1504" name="XLXI_36" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1408" y1="1264" y2="1376" x1="1408" />
            <wire x2="1424" y1="1376" y2="1376" x1="1408" />
            <wire x2="2192" y1="1264" y2="1264" x1="1408" />
            <wire x2="2192" y1="1264" y2="1408" x1="2192" />
            <wire x2="2544" y1="1408" y2="1408" x1="2192" />
            <wire x2="2192" y1="1408" y2="1408" x1="2128" />
        </branch>
        <instance x="1744" y="1664" name="XLXI_29" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1408" y1="960" y2="960" x1="1040" />
        </branch>
        <instance x="1408" y="1024" name="XLXI_12" orien="R0" />
        <instance x="1744" y="1184" name="XLXI_13" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1376" y1="784" y2="896" x1="1376" />
            <wire x2="1408" y1="896" y2="896" x1="1376" />
            <wire x2="2288" y1="784" y2="784" x1="1376" />
            <wire x2="2288" y1="784" y2="928" x1="2288" />
            <wire x2="2544" y1="928" y2="928" x1="2288" />
            <wire x2="2288" y1="928" y2="928" x1="2128" />
        </branch>
        <instance x="1392" y="624" name="XLXI_39" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1376" y1="400" y2="496" x1="1376" />
            <wire x2="1392" y1="496" y2="496" x1="1376" />
            <wire x2="2192" y1="400" y2="400" x1="1376" />
            <wire x2="2192" y1="400" y2="528" x1="2192" />
            <wire x2="2528" y1="528" y2="528" x1="2192" />
            <wire x2="2192" y1="528" y2="528" x1="2128" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1744" y1="528" y2="528" x1="1648" />
        </branch>
        <instance x="1744" y="784" name="XLXI_28" orien="R0" />
        <instance x="2528" y="784" name="XLXI_32" orien="R0" />
        <instance x="2544" y="1664" name="XLXI_33" orien="R0" />
        <instance x="2544" y="2048" name="XLXI_34" orien="R0" />
        <iomarker fontsize="28" x="3168" y="528" name="OUTPUT_FIRST" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1408" name="OUTPUT_THIRD" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1792" name="OUTPUT_FOURTH" orien="R0" />
        <branch name="CLK_2">
            <wire x2="2384" y1="224" y2="656" x1="2384" />
            <wire x2="2528" y1="656" y2="656" x1="2384" />
            <wire x2="2384" y1="656" y2="1056" x1="2384" />
            <wire x2="2544" y1="1056" y2="1056" x1="2384" />
            <wire x2="2384" y1="1056" y2="1536" x1="2384" />
            <wire x2="2544" y1="1536" y2="1536" x1="2384" />
            <wire x2="2384" y1="1536" y2="1920" x1="2384" />
            <wire x2="2544" y1="1920" y2="1920" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="208" y="560" name="INPUT_FIRST" orien="R180" />
        <branch name="INPUT_FIRST">
            <wire x2="656" y1="560" y2="560" x1="208" />
        </branch>
        <iomarker fontsize="28" x="272" y="960" name="INPUT_SECOND" orien="R180" />
        <branch name="INPUT_SECOND">
            <wire x2="656" y1="960" y2="960" x1="272" />
        </branch>
        <iomarker fontsize="28" x="240" y="1440" name="INPUT_THIRD" orien="R180" />
        <branch name="INPUT_THIRD">
            <wire x2="640" y1="1440" y2="1440" x1="240" />
        </branch>
        <iomarker fontsize="28" x="224" y="1824" name="INPUT_FOURTH" orien="R180" />
        <branch name="INPUT_FOURTH">
            <wire x2="656" y1="1824" y2="1824" x1="224" />
        </branch>
        <branch name="CLK">
            <wire x2="400" y1="176" y2="304" x1="400" />
            <wire x2="1072" y1="304" y2="304" x1="400" />
            <wire x2="1072" y1="304" y2="656" x1="1072" />
            <wire x2="1744" y1="656" y2="656" x1="1072" />
            <wire x2="1072" y1="656" y2="1056" x1="1072" />
            <wire x2="1744" y1="1056" y2="1056" x1="1072" />
            <wire x2="1072" y1="1056" y2="1536" x1="1072" />
            <wire x2="1744" y1="1536" y2="1536" x1="1072" />
            <wire x2="1072" y1="1536" y2="1920" x1="1072" />
            <wire x2="1744" y1="1920" y2="1920" x1="1072" />
            <wire x2="400" y1="304" y2="624" x1="400" />
            <wire x2="656" y1="624" y2="624" x1="400" />
            <wire x2="400" y1="624" y2="1024" x1="400" />
            <wire x2="656" y1="1024" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="1504" x1="400" />
            <wire x2="640" y1="1504" y2="1504" x1="400" />
            <wire x2="400" y1="1504" y2="1888" x1="400" />
            <wire x2="656" y1="1888" y2="1888" x1="400" />
        </branch>
    </sheet>
</drawing>