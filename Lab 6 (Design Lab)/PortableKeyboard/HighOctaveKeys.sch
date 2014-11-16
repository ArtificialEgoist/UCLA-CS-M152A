<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="KeyC5" />
        <signal name="KeyD5" />
        <signal name="KeyE5" />
        <signal name="KeyF5" />
        <signal name="KeyG5" />
        <signal name="KeyA5" />
        <signal name="KeyB5" />
        <signal name="KeyC6" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="KeyC5" />
        <port polarity="Output" name="KeyD5" />
        <port polarity="Output" name="KeyE5" />
        <port polarity="Output" name="KeyF5" />
        <port polarity="Output" name="KeyG5" />
        <port polarity="Output" name="KeyA5" />
        <port polarity="Output" name="KeyB5" />
        <port polarity="Output" name="KeyC6" />
        <blockdef name="C5">
            <timestamp>2014-5-29T22:5:6</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="D5">
            <timestamp>2014-5-29T22:3:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="E5">
            <timestamp>2014-5-29T22:2:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="F5">
            <timestamp>2014-5-29T22:1:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="G5">
            <timestamp>2014-5-29T22:1:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="A5">
            <timestamp>2014-5-29T22:1:32</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="B5">
            <timestamp>2014-5-29T22:1:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="HighC">
            <timestamp>2014-5-29T21:48:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="C5" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyC5" name="NCLK" />
        </block>
        <block symbolname="D5" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyD5" name="NCLK" />
        </block>
        <block symbolname="E5" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyE5" name="NCLK" />
        </block>
        <block symbolname="F5" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyF5" name="NCLK" />
        </block>
        <block symbolname="G5" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyG5" name="NCLK" />
        </block>
        <block symbolname="A5" name="XLXI_6">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyA5" name="NCLK" />
        </block>
        <block symbolname="B5" name="XLXI_7">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyB5" name="NCLK" />
        </block>
        <block symbolname="HighC" name="XLXI_9">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin name="reset" />
            <blockpin signalname="KeyC6" name="NCLK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1504" y="448" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1504" y="672" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1504" y="896" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1504" y="1120" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1504" y="1344" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1504" y="1568" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1504" y="2016" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1504" y="1792" name="XLXI_7" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="960" y1="1136" y2="1136" x1="720" />
            <wire x2="960" y1="1136" y2="1248" x1="960" />
            <wire x2="1504" y1="1248" y2="1248" x1="960" />
            <wire x2="960" y1="1248" y2="1472" x1="960" />
            <wire x2="1504" y1="1472" y2="1472" x1="960" />
            <wire x2="960" y1="1472" y2="1696" x1="960" />
            <wire x2="1504" y1="1696" y2="1696" x1="960" />
            <wire x2="960" y1="1696" y2="1920" x1="960" />
            <wire x2="1504" y1="1920" y2="1920" x1="960" />
            <wire x2="1504" y1="352" y2="352" x1="960" />
            <wire x2="960" y1="352" y2="576" x1="960" />
            <wire x2="1504" y1="576" y2="576" x1="960" />
            <wire x2="960" y1="576" y2="800" x1="960" />
            <wire x2="1504" y1="800" y2="800" x1="960" />
            <wire x2="960" y1="800" y2="1024" x1="960" />
            <wire x2="1504" y1="1024" y2="1024" x1="960" />
            <wire x2="960" y1="1024" y2="1136" x1="960" />
        </branch>
        <iomarker fontsize="28" x="720" y="1136" name="CLK" orien="R180" />
        <branch name="KeyC5">
            <wire x2="1920" y1="352" y2="352" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="352" name="KeyC5" orien="R0" />
        <branch name="KeyD5">
            <wire x2="1920" y1="576" y2="576" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="576" name="KeyD5" orien="R0" />
        <branch name="KeyE5">
            <wire x2="1920" y1="800" y2="800" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="800" name="KeyE5" orien="R0" />
        <branch name="KeyF5">
            <wire x2="1920" y1="1024" y2="1024" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1024" name="KeyF5" orien="R0" />
        <branch name="KeyG5">
            <wire x2="1920" y1="1248" y2="1248" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1248" name="KeyG5" orien="R0" />
        <branch name="KeyA5">
            <wire x2="1920" y1="1472" y2="1472" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1472" name="KeyA5" orien="R0" />
        <branch name="KeyB5">
            <wire x2="1920" y1="1696" y2="1696" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1696" name="KeyB5" orien="R0" />
        <branch name="KeyC6">
            <wire x2="1920" y1="1920" y2="1920" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1920" name="KeyC6" orien="R0" />
    </sheet>
</drawing>