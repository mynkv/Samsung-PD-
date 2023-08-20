# Samsung-PD-
## Day-0-Invoking-tools

I invoked tools on day-0 using these commands, each briefly explained.

	
 <details>
 <summary>dc_shell </summary>
Design Compiler is the command line interface of Synopsys synthesis tool and is invoked by either typing dc_shell in a UNIX shell. The dc_shell is the original format that is based on Synopsys's own language while dc_shell-t uses the standard Tcl language.
Below is the screenshot showing sucessful launch of dc_shell:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e1d8985e957a169015f340f7cc1de32cf8976d5/Samsung_PD_%23day0/dc_shell.png">
</details>

 <details>
 <summary>icc2_shell </summary>
IC Compiler II is a complete netlist-to-GDSII implementation system that includes early design exploration and prototyping, detailed design planning, block implementation, chip assembly and sign-off driven design closure. I invoked icc2_shell using the following command: icc2_shell
Below is the screenshot showing sucessful launch of icc2_shell:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/62d7ee871bd844bd10a8d7179474934facc356a3/Samsung_PD_%23day0/icc2_shell.png">
</details>

 <details>
 <summary>lc_shell </summary>
The Library Compiler tool from Synopsys captures ASIC libraries and translates them into Synopsys internal database format for physical synthesis or into VHDL format for simulation. I invoked lc_shell using the following command: lc_shell
Below is the screenshot showing sucessful launch of lc_shell:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/62d7ee871bd844bd10a8d7179474934facc356a3/Samsung_PD_%23day0/lc_shell.png">
</details>

 <details>
 <summary>pt_shell </summary>
Synopsys' PrimeTime static timing analysis tool provides a single, golden, trusted signoff solution for timing, signal integrity, power and variation-aware analysis. I invoked pt_shell using the following commands: pt_shell
Below is the screenshot showing sucessful launch of pt_shell:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/62d7ee871bd844bd10a8d7179474934facc356a3/Samsung_PD_%23day0/pt_shell.png">
</details>

 <details>
 <summary>iverilog</summary>
Icarus Verilog is an implementation of the Verilog hardware description language compiler that generates netlists in the desired format. I invoked iverilog using the following commands: iverilog
Below is the screenshot showing sucessful launch of iverilog:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f2f500b02358a0ffd22f6ab4a733df28374119b0/iverilog.PNG">
</details>

 <details>
 <summary>yosys </summary>
Yosys is a framework for RTL synthesis and more. I invoked yosys using the following commands: yosys
Below is the screenshot showing sucessful launch of yosys:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f2f500b02358a0ffd22f6ab4a733df28374119b0/yosys.PNG">
</details>

 <details>
 <summary>gtkwave </summary>

  
GTKWave is the best free wave viewer and is the recommended viewer by Icarus Verilog simulation tool. The GTKWave software is used as a simulation tool to verify the Verilog design code through a testbench. I invoked gtkwave using the following commands: gtkwave
Below is the screenshot showing sucessful launch of gtkwave:

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3dc72d18e69a8d032ac187e060f722427e034ef3/Samsung_PD_%23day0/gtkave.PNG">
</details>


## Day-1-Introduction to RTL and Synthesis

Let us first discuss several terms:

RTL : RTL stnds for register transistor level. It is the implementation of the specifications of the design.

Iverilog : Icarus Verilog is an implementation of the Verilog hardware description language compiler that generates netlists in the desired format.

Design : It is a set of verilog codes, which meets the given specifications. Design may have one or more primary inputs and outputs.

Testbench : Testbench is a code module that describes the stimulus to a logic design and checks whether the design's outputs match its specification. Testbench does not have primay inpur or output.

Simulator : Simultor is a tool used to check adherence of RTL to specifications. It looks for changes in the input and correspondingly output. Following image shows the working of the simulator

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6ede0c2a3604a48c1a2c22a82f43d898a15e064f/simulator.png">

 <details>
 <summary>Environment Setup</summary>

Environment Setup includes tool flow setup and file setup. For setting up the environment import the library files and verilog files into your directory from github. Command to do so is : **git clone link.git**. Below screenshot shows the cloning of directories from github, and the files inside the directories. Command to view files inside directories is : ls. 

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e0dc7fffa135b027e14a3d91350622731803ce3/Cloning%20git.PNG">

In the image above we can see the files inside the directories "vsdflow" and "sky130RTLDesignANDSynthesisWorkshop".
</details>

 <details>
 <summary>Working with iverilog and gtkwave</summary>

Inside the folder verilog_files in the directory "sky130RTLDesignANDSynthesisWorkshop" we have all the verilog design files as well as testbenches. To lload these files into the iverilog, first change directory to verilog_files and to load files use command : **iverilog design.v tb_xyz.v**. Below image shows the all the files inside verilog_files, verilog_model.
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e0dc7fffa135b027e14a3d91350622731803ce3/files%20under%20diff%20directories.PNG">

After **iverilog design.v tb_xyz.v** command a.out executable file is created which is used to dump the output into the vcd file. Now execute a.out by command : **./a.out**, after this a vcd file is created. Open the vcd file in gtkwave by using the following command : gtkwave **name.vcd**. Below image shows the execution for good_mux design file and its testbench.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f41ffd6297d24485a22ffe519de2e79ea50f5915/verilog.PNG">

Gtkwave output for the good_mux vcd file is shown below.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f41ffd6297d24485a22ffe519de2e79ea50f5915/gtkwave.PNG">

</details>

 <details>
 <summary>Design and testbench structure</summary>

To view the design or testbench file use command : vim file_mane.v. Below figures shows the design files for good_mux and its testbench
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9b4f3b27cd43f1ee50d3190ece7e0a372cd85db5/mux_design.png">
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9b4f3b27cd43f1ee50d3190ece7e0a372cd85db5/tb_mux.png">

</details>

 <details>
 <summary>Introduction to Yosys</summary>

Yosys is the synthesizer used to convert the RTL into the netlist. Netlist is the representation of the design in the form of the cells from library. Below figure shows the flow for the yosys synthesizer.
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b0dee97319264489ff2f5620d28c60efd2e4964/yosys_Setup.PNG">

 To verify the synthesis same testbench is given along with the netlist to observe the funtionality of the design.
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b0dee97319264489ff2f5620d28c60efd2e4964/verifysynthesis.PNG">

</details>







