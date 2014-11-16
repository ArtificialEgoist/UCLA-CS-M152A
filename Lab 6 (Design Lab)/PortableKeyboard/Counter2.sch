<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="C" />
        <signal name="DIV2" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="DIV2" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="ftce" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_1" name="T" />
            <blockpin signalname="DIV2" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3296" y="2800" name="XLXI_1" orien="R0" />
        <instance x="2816" y="2960" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2880" y1="2960" y2="3040" x1="2880" />
            <wire x2="2976" y1="3040" y2="3040" x1="2880" />
            <wire x2="3136" y1="3040" y2="3040" x1="2976" />
            <wire x2="2976" y1="2544" y2="3040" x1="2976" />
            <wire x2="3296" y1="2544" y2="2544" x1="2976" />
            <wire x2="3136" y1="2608" y2="3040" x1="3136" />
            <wire x2="3296" y1="2608" y2="2608" x1="3136" />
        </branch>
        <branch name="C">
            <wire x2="3296" y1="2672" y2="2672" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2736" y="2672" name="C" orien="R180" />
        <branch name="DIV2">
            <wire x2="3712" y1="2544" y2="2544" x1="3680" />
        </branch>
        <iomarker fontsize="28" x="3712" y="2544" name="DIV2" orien="R0" />
    </sheet>
</drawing>