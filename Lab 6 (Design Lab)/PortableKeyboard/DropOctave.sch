<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Cin" />
        <signal name="Din" />
        <signal name="Ein" />
        <signal name="Fin" />
        <signal name="Gin" />
        <signal name="Ain" />
        <signal name="Bin" />
        <signal name="HighCin" />
        <signal name="Bout" />
        <signal name="HighCout" />
        <signal name="Aout" />
        <signal name="Gout" />
        <signal name="Fout" />
        <signal name="Eout" />
        <signal name="Dout" />
        <signal name="Cout" />
        <port polarity="Input" name="Cin" />
        <port polarity="Input" name="Din" />
        <port polarity="Input" name="Ein" />
        <port polarity="Input" name="Fin" />
        <port polarity="Input" name="Gin" />
        <port polarity="Input" name="Ain" />
        <port polarity="Input" name="Bin" />
        <port polarity="Input" name="HighCin" />
        <port polarity="Output" name="Bout" />
        <port polarity="Output" name="HighCout" />
        <port polarity="Output" name="Aout" />
        <port polarity="Output" name="Gout" />
        <port polarity="Output" name="Fout" />
        <port polarity="Output" name="Eout" />
        <port polarity="Output" name="Dout" />
        <port polarity="Output" name="Cout" />
        <blockdef name="Counter2">
            <timestamp>2014-5-31T19:47:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Counter2" name="XLXI_5">
            <blockpin signalname="HighCin" name="C" />
            <blockpin signalname="HighCout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_6">
            <blockpin signalname="Bin" name="C" />
            <blockpin signalname="Bout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_7">
            <blockpin signalname="Ain" name="C" />
            <blockpin signalname="Aout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_8">
            <blockpin signalname="Gin" name="C" />
            <blockpin signalname="Gout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_9">
            <blockpin signalname="Fin" name="C" />
            <blockpin signalname="Fout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_10">
            <blockpin signalname="Ein" name="C" />
            <blockpin signalname="Eout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_11">
            <blockpin signalname="Din" name="C" />
            <blockpin signalname="Dout" name="DIV2" />
        </block>
        <block symbolname="Counter2" name="XLXI_12">
            <blockpin signalname="Cin" name="C" />
            <blockpin signalname="Cout" name="DIV2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1360" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1248" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1248" y="1072" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1248" y="928" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1248" y="784" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1248" y="640" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1248" y="496" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1248" y="352" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Cin">
            <wire x2="1248" y1="320" y2="320" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="320" name="Cin" orien="R180" />
        <branch name="Din">
            <wire x2="1248" y1="464" y2="464" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="464" name="Din" orien="R180" />
        <branch name="Ein">
            <wire x2="1248" y1="608" y2="608" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="608" name="Ein" orien="R180" />
        <branch name="Fin">
            <wire x2="1248" y1="752" y2="752" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="752" name="Fin" orien="R180" />
        <branch name="Gin">
            <wire x2="1248" y1="896" y2="896" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="896" name="Gin" orien="R180" />
        <branch name="Ain">
            <wire x2="1248" y1="1040" y2="1040" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1040" name="Ain" orien="R180" />
        <branch name="Bin">
            <wire x2="1248" y1="1184" y2="1184" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1184" name="Bin" orien="R180" />
        <branch name="HighCin">
            <wire x2="1248" y1="1328" y2="1328" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1328" name="HighCin" orien="R180" />
        <branch name="Bout">
            <wire x2="1664" y1="1184" y2="1184" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="1184" name="Bout" orien="R0" />
        <branch name="HighCout">
            <wire x2="1664" y1="1328" y2="1328" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="1328" name="HighCout" orien="R0" />
        <branch name="Aout">
            <wire x2="1664" y1="1040" y2="1040" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="1040" name="Aout" orien="R0" />
        <branch name="Gout">
            <wire x2="1664" y1="896" y2="896" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="896" name="Gout" orien="R0" />
        <branch name="Fout">
            <wire x2="1664" y1="752" y2="752" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="752" name="Fout" orien="R0" />
        <branch name="Eout">
            <wire x2="1664" y1="608" y2="608" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="608" name="Eout" orien="R0" />
        <branch name="Dout">
            <wire x2="1664" y1="464" y2="464" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="464" name="Dout" orien="R0" />
        <branch name="Cout">
            <wire x2="1664" y1="320" y2="320" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="320" name="Cout" orien="R0" />
    </sheet>
</drawing>