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

Environment Setup includes tool flow setup and file setup. For setting up the environment import the library files and verilog files into your directory from github. Command to do so is : **git clone link.git**. Below screenshot shows the cloning of directories from github, and the files inside the directories. Command to view files inside directories is : **ls**. <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e0dc7fffa135b027e14a3d91350622731803ce3/Cloning%20git.PNG">

In the image above we can see the files inside the directories "vsdflow" and "sky130RTLDesignANDSynthesisWorkshop".
</details>

 <details>
 <summary>Working with iverilog and gtkwave</summary>

Inside the folder verilog_files in the directory "sky130RTLDesignANDSynthesisWorkshop" we have all the verilog design files as well as testbenches. To lload these files into the iverilog, first change directory to verilog_files and to load files use command : **iverilog design.v tb_xyz.v**. Below image shows the all the files inside verilog_files, verilog_model.<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e0dc7fffa135b027e14a3d91350622731803ce3/files%20under%20diff%20directories.PNG">

After **iverilog design.v tb_xyz.v** command a.out executable file is created which is used to dump the output into the vcd file. Now execute a.out by command : **./a.out**, after this a vcd file is created. Open the vcd file in gtkwave by using the following command : gtkwave **name.vcd**. Below image shows the execution for good_mux design file and its testbench.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f41ffd6297d24485a22ffe519de2e79ea50f5915/verilog.PNG">

Gtkwave output for the good_mux vcd file is shown below.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f41ffd6297d24485a22ffe519de2e79ea50f5915/gtkwave.PNG">

</details>

 <details>
 <summary>Design and testbench structure</summary>

To view the design or testbench file use command : vim file_mane.v. Below figures shows the design files for good_mux and its testbench.<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9b4f3b27cd43f1ee50d3190ece7e0a372cd85db5/mux_design.png">
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9b4f3b27cd43f1ee50d3190ece7e0a372cd85db5/tb_mux.png">

</details>

 <details>
 <summary>Introduction to Yosys</summary>

Yosys is the synthesizer used to convert the RTL into the netlist. Netlist is the representation of the design in the form of the cells from library. Below figure shows the flow for the yosys synthesizer.<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b0dee97319264489ff2f5620d28c60efd2e4964/yosys_Setup.PNG">

 To verify the synthesis same testbench is given along with the netlist to observe the funtionality of the design.<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b0dee97319264489ff2f5620d28c60efd2e4964/verifysynthesis.PNG">

</details>

<details>
 <summary>Introduction to Logic Synthesis</summary>

Synthesis is the  conversion of RTL to netlist using library file. Below figure shows the synthesis flow. 
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22d9c52faace141b21dc7da24cc196928b6c52a3/Synthesisflow.PNG">

<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c884dc9a3a35e04a740aa1ad498671849b18a3a/synthesizer%20_illustration.PNG">
The . lib (library) file contains important information about the electrical behavior of the standard cells used in the IC design. It includes data such as cell timing models, power characteristics, voltage thresholds, and other parameters necessary for accurate timing analysis. 
In the library we have fast cells to meet the setup time constraing and slow cells to meet up the hold time constraint.

 
</details>

<details>
 <summary>Yosys</summary>
	
Steps in the yosys are as follows :
	
1. Yosys is the synthesizer we are using. Command to invoke yosys is : **yosys**.<br>
2. Inside yosys, first we need to read the library file. Command to read the library file is : **read_liberty -lib ../path_where_library_is**.<br>
3. Now read the verilog file by using the command : **read_verilog file_name.v**.<br>
4. After this we need to specify the module for synthesis by using command : **synth -top file_name**.<br>
5. Now we move on to generating the netlist. Command to generate the netlist is : **abc -liberty ../path**. Path we specifies is the library path for the library which we want to use. This also gives the report about the design such as number of i/p and o/p ext. Below image shows the report for the design good_mux.<br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/95aaab7969f9daedac9753f19158df9484d434e0/info_design.PNG"><br>
6. To see the graphical representation of the design, we give command : **show**. Below figure shows the graphical representation of good_mux.<br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0916fd2212262c81d86e6af8d7ec4a9186f6b9d6/design_graphical.PNG">.<br>
7. To write the netlist we give command : **write_verilog filename_netlist.v**.<br>
8. Now to see the generated netlist we use command : **!vim filename_netlist.v**. Below figure shows the generated netlist for a latch.<br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0916fd2212262c81d86e6af8d7ec4a9186f6b9d6/netlist.jpeg">.<br>


 
</details>

## Day-2-synthesis-FFcoding-styles

The library file contains the definitions of all the available standard cells for a particular technology and is used for RTL to gate level conversion. In other words it is the cells that the synthesizer is allowed to use for conversion. The library which we are using is **sky130_fd_sc_hd_tt_025C_1v80**, here: <br>
1. tt - Typical Library
2. 025C - Temperature
3. 1v80 - Voltage
Command to open lib file is: **vim path-of_lib**. PVT (Process, Voltage, Temperature) determines how our silicon is going to work i.e. fast, slow or typical.
 
<details>
 <summary>Comparison of different cells of same gate.</summary><br>
The provided image illustrates a comparison between 3 different configurations of 2-input AND gates. It's evident that when the gate's physical size is enlarged, its performance improves; however, this enhancement comes at the expense of increased production costs. Consequently, a comprehensive design library encompasses a spectrum of cell types, spanning from high-speed to slower variants. Invariably, there exists a delicate balance between the occupied area and the operational efficiency of these cells.<br><br>


<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a8d3ae0ddc0f504590c562c1a09af0d4b3f336cf/Samsung_PD_%23day0/1_cell_comparison.png"><br><br>
To check the functionality of a cell we can loof for its verilog code by command: **:sp ../my_lib/verilog_model/cell_name.behavioral.v**
</details>

<details>
 <summary>Hierarchial and Flat Netlist</summary><br>
**Hirarchial Netlist** <br>
A hierarchical level netlist refers to a structured representation of a digital circuit's connectivity and components, organized in a hierarchical manner. In this approach, the circuit is broken down into smaller functional blocks, which are then represented as modules or subcircuits. Each module encapsulates its internal logic and connectivity, which is connected to other modules through defined input and output ports.<br>
In a hierarchical level netlist, each module has its own associated netlist, which details the interconnections of its internal components. The top-level netlist connects the various modules and their respective input and output ports. <br>
Let us consider a design with 2 modules, deatils of those two modules is as shown in fig below.<br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/2_multipleodules.png">

Regarding the design comprised of two modules, the images below depict both its visual representation in graphical form and its netlist structured in a hierarchical manner.<br><br>														
	<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/Samsung_PD_%23day0/3_gui_multiple_module.PNG">					<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/Samsung_PD_%23day0/3_netlist_hier.PNG"><br><br>

 
**Flatten Netlist**<br>
A flattened netlist refers to a representation of a digital circuit where all hierarchical levels have been removed, and the entire design is presented as a single, monolithic netlist. In contrast to a hierarchical netlist, which maintains the modular structure of a design, a flattened netlist combines all modules and subcircuits into a single interconnected network of gates, flip-flops, and other components.
For the above design of two modules, the images below depict both its visual representation in graphical form and its netlist structured in a flattened manner..<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/Samsung_PD_%23day0/3_gui_flat.PNG">					               <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/Samsung_PD_%23day0/3_netlist_flat1.PNG">
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268e117f68eff72b7fc2649fcad4b7e756aada1d/Samsung_PD_%23day0/3_netlist_flat2.PNG"><br><br>


</details>

<details>
 <summary>Why sub module level design.</summary><br>

Hierarchical netlists are preferred over flattened netlists due to several advantages they offer in managing the complexity of modern digital circuit designs:<br><br>

1. Modularity and Abstraction: Hierarchical netlists allow the design to be organized into separate functional modules. Each module encapsulates a specific functionality, leading to a clearer understanding of the overall system. This modularity enables abstraction, where engineers can work on individual modules without being overwhelmed by the entire design.<br><br>

2. Ease of Design and Collaboration: Hierarchical netlists promote efficient teamwork. Engineers can work concurrently on different modules without conflicting with each other's work. This separation also enables the reuse of well-tested modules in various projects, saving time and effort.<br><br>

3. Simpler Debugging and Verification: When a problem arises, hierarchical netlists allow engineers to isolate and debug issues within specific modules. This targeted approach simplifies the debugging process, as opposed to searching through a single flattened netlist for errors.<br><br>

4. Performance Optimization: Synthesis tools can more effectively optimize hierarchical netlists, as they have a clearer understanding of module boundaries. This can result in improved performance, area utilization, and power efficiency.<br><br>

5. Simulation Efficiency: Hierarchical netlists allow for efficient simulation by focusing simulations on specific modules instead of the entire design. This speeds up verification and reduces simulation complexity.<br><br>

6. Maintainability and Scalability: As designs evolve and scale, maintaining a hierarchical structure remains manageable. Adding new modules or modifying existing ones is easier, and the overall design remains comprehensible.<br><br>

To see the netlist or the gui of a submodule in the design, command for synthesis is: **synth -top module_name**. Below image shows the graphical illustration of the sub module1. <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/3_sub_module.PNG"><br><br>


</details>

<details>
 <summary>D-Flip Flops and their coding styles</summary><br>

A flip-flop is a fundamental digital electronic circuit component used to store binary information. It serves as a basic building block for memory elements and sequential logic circuits in digital systems. Flip-flops are designed to retain their state until a specific signal triggers a change, making them crucial for storing data and creating time-dependent operations in digital circuits.<br>
Glitches can emerge due to the presence of combinational circuits within a design. To mitigate the propagation of these glitches into subsequent combinational circuits, a strategic approach involves introducing flip-flops between the initial combinational circuit and its output. Various coding styles for the flops are discussed below.<br><br>

command to specify library in case of D-FF: **dfflibmap -liberty library_path**.<br><br>
<details>
 <summary>Asynchronous Set</summary><br>

An asynchronous set in a flip-flop allows you to directly set the output of the flip-flop to a specific state regardless of the clock signal. When the asynchronous set input is activated, typically by asserting a specific signal (e.g., pulling it high), the flip-flop's output will immediately transition to the set state, regardless of the clock cycle. This feature can be useful in certain scenarios where you need to ensure a particular starting state for the flip-flop, regardless of the clock timing.<br><br>

Coding of DFF with Asynchronous Set:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/4_asyn_set.PNG"><br>

Graphical representation of DFF with Asynchronous set:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/6-gui_asyn_set.PNG"><br>

GTKWAve output of DFF with Asynchronous Set:
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/5_gtk_asyn.PNG"><br>

	
</details>

<details>
 <summary>Synchronous reset</summary><br>

Synchronous reset enables controlled and synchronized resetting of the circuit's state based on the clock signal. Unlike asynchronous reset, where the reset signal can affect the circuit output at any time, synchronous reset ensures that the reset operation occurs only at a specific clock edge. In synchronous reset, a dedicated reset signal is provided to the flip-flop or sequential circuit. However, this reset signal is synchronized with the clock signal. The circuit's state is only changed to the reset state when the clock signal transitions (either rising edge or falling edge), ensuring that the reset operation happens predictably within the clock cycle.<br><br>

Coding of DFF with Synchronous reset:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/4_dff_sync.PNG"><br>

Graphical representation of DFF with Synchronous reset:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/6_gui_sync.PNG"><br>

GTKWAve output of DFF with Synchronous reset:
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/5_gtk_syn.PNG"><br>

	
</details>

<details>
 <summary>Asynchronous reset and Synchronous reset</summary><br>

Asynchronous reset and Synchronous reset flip flop combines the functionality of the both. <br><br>

Coding of DFF with Asynchronous reset and Synchronous reset:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/4_dff_asyn_syn.PNG"><br>

Graphical representation of DFF with Asynchronous reset and Synchronous reset:<br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/6_gui_syn_asyn.PNG"><br>

GTKWAve output of DFF with Asynchronous reset and Synchronous reset:
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/887a9469e03cc4cd92f3b6cf902c2179de9a498e/Samsung_PD_%23day0/5_gtk_syn_asyn.PNG"><br>

	
</details>


</details>

<details>
 <summary>Optimising Design</summary><br>

1. Multiplication by 2: Shift the binary number 1 bit left, and pu "0" at the LSB.<br>
   Below image shows thegraphical representation of multiplier by 2:<br>
   <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0f1af4e8178810f113fef96c397925b1e0c2a421/Screenshot_2023-08-23_11-06-53.png"><br>
   Netlist for multiplier by 2: <br>
    <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0f1af4e8178810f113fef96c397925b1e0c2a421/milt_2_net.png"><br>
3. Multiplication by 4: Shift the binary number 2 bit left, and pu "0" at the LSB and 'LSB + 1'.

<details>
 <summary>Special Case</summary><br>
 Let us consider a 3 bit number a = {a[2], a[1], a[0]}.<br>
 Suppose we need to find 9a. <br>
 so, 9a = 8a + a ;<br>
 9a = {a[2], a[1], a[0], a[2], a[1], a[0]}<br>

 Below image shows thegraphical representation of multiplier by 9:<br>
   <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0f1af4e8178810f113fef96c397925b1e0c2a421/gui_mult_8.png"><br>
   Netlist for multiplier by 9: <br>
    <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0f1af4e8178810f113fef96c397925b1e0c2a421/mult_8_net.png"><br>

 So for this kind of assignment there is no cell generated. Hence the need of multiplier is eliminated.<br>


	
</details>
	
</details>


## Day-3-Logic-Optimization

Combinational logic optimization is a process used in digital circuit design to improve the efficiency, speed, and overall performance of digital circuits. Combinational logic refers to logic circuits where the outputs depend solely on the current inputs, with no memory or feedback elements. The goal of optimization is to minimize the complexity of the logic circuit while maintaining the desired functionality. Techniques to optimise combinational circuits are: <br><br>
1. Constant Propagation.
2. Boolean logic optimization.

<details>
<summary>Examples of Combinational Logic</summary>
	
<details>
<summary>Example for constant propagation</summary><br>
	
 Let us consider an exression: Y = (A.B + C)<br>
 
 The expected synthesis of the above function is as shown in figure below:<br><br>
 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4607.jpeg"><br>

 
In the original expression one AND gate and one NOR gate is used.<br>
 If A is grounded in the above expression then: Y = C'<br>
 	Now only one NOT gate is used.<br>
  
  After optimisation we get only a NOT gate as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4608.jpeg"><br>
  
So, both area and speed of operation is improved.<br>
 	
</details>

<details>
<summary> Example for Boolean logic optimization </summary> <br>
	
 Let us consider an exression: Y = a ? (b ? c:(c ? a:0)):(!c) <br>

 The expected synthesis of the above function is as shown in figure below:<br><br>
 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>
 
Y = a'c' + a.(b'ac + bc) <br>
  = a'c' + ab'c + abc <br>
  = a'c' + ac <br>
  = a ex_nor b

The optimised design will only contain a ex-nor gate, instead og 3 mux.
 	
</details>

<details>
<summary> Examples in yosys </summary> <br>

 <details>
<summary> Example 1 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/1_optcheck_verilog.png"><br>	<br>

The expected synthesis of the above verilog model is as shown in figure below:<br><br>
 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>
 

Here :<br>	 
	 y = a ? b:0  <br>
	   = a.b + a.0 <br>
	   = a.b <br><br>
The optimised design is as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/1_optcheck_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/1_optcheck_net.png"><br>	
</details>

<details>
<summary> Example 2 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/2_optcheck_verilog.png"><br>	<br>

The expected synthesis of the above verilog model is as shown in figure below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4605.jpeg"><br>
 
Here :<br>	 
	y = a ? 1:b  <br>
	   = a + a'.b <br>
	   = a + b <br><br>
The optimised design is as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/2_optcheck_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/2_optcheck_net.png"><br>	
</details>

<details>
<summary> Example 3 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/41c7129ae2201155a42693cb74310202ad028e34/3_optcheck_verilog.png"><br>	<br>


The expected synthesis of the above verilog model is as shown in figure below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4604.jpeg"><br>
 
Here :<br>	 
	y = a ? (c ? b:0):0  <br>
	   = a ( cb + c'.0) <br>
	   = abc <br><br>
The optimised design is as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b34bd0cc1c7ed9ed79b89bc028505ab0607466b/3_optcheck_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b34bd0cc1c7ed9ed79b89bc028505ab0607466b/3_optcheck_net.png"><br>	
</details>

<details>
<summary> Example 4 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b34bd0cc1c7ed9ed79b89bc028505ab0607466b/4__optcheck_verilog.png"><br><br>

The expected synthesis of the above verilog model is as shown in figure below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4606.jpeg"><br>
 
Here :<br>	 
	y = a ? (c ? b:0):0  <br>
	   = a ( bac + b'c ) + a'c' <br>
	   = abc + ab'c + a'c' <br>
	   = a ex-nor b <br><br>
The optimised design is as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b34bd0cc1c7ed9ed79b89bc028505ab0607466b/4_optcheck_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2b34bd0cc1c7ed9ed79b89bc028505ab0607466b/4_optcheck_net.png"><br>	
</details>

<details>
<summary> Example 5 </summary> <br>
Consider the verilog model with multiple modules as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/5_multi_opt1.png"><br>	<br>
In the code above, submodule1 is called 1 time and submodule2 is called 2 time, i.e. 1 AND gate and 2 OR gates, but this that does not happen beacause one of the input is zero to U2 and one input is 1 in U1.
Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/5_multi_opt1_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/5_multi_opt1_net.png"><br>	
</details>

<details>
<summary> Example 6 </summary> <br>
Consider the verilog model with multiple modules as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/6_multi_opt2.png"><br>	<br>
In the code above, submodule is called 4 times, i.e. AND gate is called 4 timess, but this that does not happen beacause one of the input is zero.
Graphical reperesentation of above example:<br><br>
Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/5_multi_opt1_gui.png"><br>	
Netlist of above example:<br><br>
<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/5_multi_opt1_net.png"><br>	
</details>

 	
</details>



</details>

Sequential logic optimization is a process in digital circuit design aimed at improving the performance, power efficiency, and/or area utilization of a sequential logic circuit. Sequential logic circuits are a type of digital circuit that includes memory elements, such as flip-flops or latches, which store information over time. These circuits are commonly found in applications such as microprocessors, memory units, and communication systems.


<details>
<summary>Example for Sequencial logic optimization </summary> <br>

 
<details>
<summary> Example 1 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_c1_verilog.png"><br>	<br>
GtkWave simulation of above example:<br><br>
<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_c1_gtk.png"><br>	
Graphical reperesentation of above example:<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con1_gui.PNG"><br>	
</details>

<details>
<summary> Example 2 </summary> <br>

Consider the following verilog code: <br><br>
always@ (posedge clk, posedge rst)<br>
begin<br>
if(rst)<br>
q <= 1;<br>
else <br>
q <= 1;<br>
end<br><br>
GtkWave simulation of above example:<br><br>
<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con2_gtk.PNG"><br>
Stats for the given module are as shown:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con2_stat.PNG"><br>	
Graphical reperesentation of above example:<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con2_gui.PNG"><br>	
</details>

<details>
<summary> Example 3 </summary> <br>
Consider the verilog model as shown in fig below: <br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con3_verilog.PNG"><br>	<br>
GtkWave simulation of above example:<br><br>
<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con3_gtk.PNG"><br>	
Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con3_gui.PNG"><br>	
</details>

<details>
<summary> Example 4 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con4_verilog.PNG"><br>
GtkWave simulation of above example:<br><br>
<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con4_gtk.PNG"><br>
Stats for the given module are as shown:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con4_stat.PNG"><br>	
Graphical reperesentation of above example:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con4_gui.PNG"><br>	
</details>

<details>
<summary> Example 5 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/7_dff_con5_verilog.PNG"><br>
GtkWave simulation of above example:<br><br>
<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/7_dff_con5_gtk.PNG"><br>
Graphical reperesentation of above example:<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/7_dff_con5_gui.PNG"><br>	
</details><br>	
</details>


</details>

<details>
<summary>Unused Output Synthesis </summary> <br>

Consider the following counter example as shown in fig below: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_counter1_verilog.PNG"><br>
Here we can clearly see that only th emsb of the counter is used for the output, rest 2 bits are unused. Now let for a counter:<br><br>
<img width="250" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/77849ff7b577447e818144a1686bbe129eb72ef3/Day3/table.PNG"><br>
Here count[0] is toggling for every clock cycle so the circuit can be optimised. Stats of above example:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_counter1_stat.PNG"><br>
Graphical reperesentation of above example:<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_count1_gui.PNG"><br>
Netlist for the counter module: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_count1_net.PNG"><br>

</details><br>	

## Day-4-Introduction-to-GLS

GLS, an acronym for Gate Level Simulation, involves executing a testbench using the netlist of the design as the Design Under Test (DUT). The primary objectives of GLS are as follows:<br><br>

1. **Validate Logical Accuracy**: GLS aims to confirm the correctness of the design's logic post-synthesis. By employing the netlist representation, it ensures that the synthesized design aligns with the intended logical functionality.<br><br>
2. **Verify Timing Consistency**: GLS plays a vital role in verifying that the timing aspects of the design are properly reflected in the netlist. This involves assessing whether the signal propagation delays and timing constraints are appropriately adhered to.<br><br>
It's crucial to highlight that functional verification of the design is of utmost importance to prevent any discrepancies known as Synthesis Simulation Mismatches from arising. This process aims to bridge the gap between the pre-synthesis and post-synthesis behaviors of the design.






	
 <details>
 <summary>Synthesis Simulation Mismatches </summary> <br>
Why Synthesis Simulation Mismatches occur:<br><br>
1. Missing Sensitivity List.<br>
2. Blocking and Non-Blocking Assignment.<br>
3. Non standard Verilog coding.<br><br>

 <details>
 <summary>Missing Sensitivity List </summary><br>
Consider an example of mux coded as:<br><br>
always@(sel)<br>
begin <br>
if(sel)<br>
y=i1;<br>
else<br>
y=i0;<br>
end<br><br>

In the previous code snippet, the always block is activated solely when there's a transition in the 'sel' signal. If the 'sel' signal remains constant, any changes in 'i0' and 'i1' will not manifest in the output. In this scenario, if the design isn't adjusted, it might inadvertently result in the synthesis of a double-edged flip-flop instead of a multiplexer. To ensure accurate synthesis of a multiplexer, the appropriate sensitivity list should be defined as **always @ (*)**.
</details>

 <details>
 <summary>Synthesis and Simulation Mismatches due to Blocking and Non Blocking Assignment</summary><br>
	 
Consider an example of shift register coded as:<br><br>
	 
always@(popsedge clk, posedge rst)<br>
begin <br>
if(rst)<br>
q0 = 1'b0;<br>
q1 = 1'b0;<br>
else<br>
q0 = d;<br>
q1 = q0;<br>
end <br><br>

Above code will synthesize a single flipflop as output q0 will be synthesized as a wire as shown in the figuree below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/ff_2.PNG"><br><br>

Correct code for the shift register will be:<br><br>

always@(popsedge clk, posedge rst)<br>
begin <br>
if(rst)<br>
q0 = 1'b0;<br>
q = 1'b0;<br>
else<br>
q = q0;<br>
q0 = d;<br>
end <br><br>

Above code will synthesize a two bit shift register as shown in the figuree below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/ff_1.PNG"><br><br>

t's worth emphasizing that when dealing with sequential circuits, utilizing non-blocking assignments is crucial to mitigate the potential for Synthesis Simulation mismatches.

</details>

</details>

<details>
 <summary>GLS: Gate level synthesis</summary><br><br>

Gate-level synthesis is a process in digital design where a high-level hardware description, often written in a hardware description language (HDL) such as Verilog or VHDL, is translated into a gate-level representation. This representation consists of actual logic gates, flip-flops, and other basic digital components from a target technology library.<br<br>

The gate-level synthesis process involves several steps:<br<br>

1. Parsing and Elaboration: The input HDL code is parsed to create an abstract syntax tree (AST). This tree is then elaborated to handle modules, instances, and other design hierarchies.<br<br>

2. Hierarchical Flattening: The design hierarchy is often flattened, converting the hierarchical structure into a flat list of interconnected components. This simplifies the translation to gate-level elements.<br<br>

3. Technology Mapping: The HDL constructs are mapped to specific gate-level components from the target technology library. For example, HDL flip-flops might be mapped to D flip-flops in the library.<br<br>

4. Logic Optimization: Logic optimization techniques are applied to minimize the number of gates, reduce delays, and improve overall performance. This may involve techniques like Boolean logic simplification, common subexpression elimination, and technology-specific optimizations.<br<br>

5. Timing Analysis and Constraint Application: Timing constraints, specifying the maximum allowed delay for critical paths, are applied. Timing analysis tools are used to ensure that the design meets these constraints.<br<br>

6. Gate-Level Simulation: After synthesis, gate-level simulation is often performed to verify that the synthesized design behaves correctly compared to the original high-level description.<br<br>

7. Design Verification and Testing: The gate-level design is subjected to verification and testing processes to ensure its correctness and functionality.<br<br>

Command to do GLS: **iverilog ../mylib/verilog_model/primitives.v ../mylib/verilog_model/sky130_fd_sc_hd.v netlist_path.v testbench_path.v**.<br><br>

<details>
<summary>Example 1 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/1_ter_verilog.png"><br>
GtkWave simulation of above example:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/1_ter_gtk.png"><br>
Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/1_ter_gui.png"><br>	
Simulation results for GLS:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/1_ter_GLS.png"><br>	<br>

In this particular case, the simulation results obtained from running the design with the testbench and simulating the netlist with the same testbench match perfectly. As a result, there are no indications of synthesis simulation mismatches, underscoring the correctness of the design.

</details><br>

<details>
<summary>Example 2 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/2_badmux_verilog.png"><br>
GtkWave simulation of above example:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/2_badmux_gtk.png"><br><br>
In the provided simulation results for the 2-to-1 MUX, the output exclusively changes when there's a modification in the selection (sel) line. This behavior stems from the fact that the sensitivity list within the always block solely comprises the 'sel' input. However, let's now explore the outcome when subjecting the identical stimulus to the netlist.
Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/2_badmux_mux_gui.png"><br>	
Netlist for the given example:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/2_badmux_net.png"><br>	
Simulation result after GLS:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/9f38bb7643eaa2609fd3595fec3307b14e36915d/%23day4/2_badmux_gls.png"><br><br>	
Despite the incorrect sensitivity list, when applying the same stimulus to design netlist, the simulation results align with our expectations. This positive outcome suggests that the generated netlist for the 2-to-1 MUX is accurate, even though there may be discrepancies in how the sensitivity list is handled. As a result, the post-GLS simulation results are satisfactory.<br><br>
</details><br>	

<details>
<summary>Example 3 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/4_good_mux_verilog.png"><br>
GtkWave simulation of above example:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/4_good_mux_gtk.png"><br><br>

Graphical reperesentation of above example:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/4_good_mux_gui.png"><br>	
Netlist for the given example:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/4_goodmux_net.png"><br>	
Simulation result after GLS:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/4_good_mux_gls.png"><br><br>	
In this example we have correct sensitivity list, when applying the same stimulus to design as well as netlist, the simulation results remain same and align with our expectations. This positive outcome suggests that the generated netlist for the 2-to-1 MUX and its design is accurate. As a result, the post-GLS simulation results are satisfactory.<br><br>
</details><br>	

<details>
<summary>Example 4 </summary> <br>

Consider the following verilog code as shown in fig below: <br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c83f706def1e81c50d20c3c252e3418641f0a7d4/%23day4/3_caveat_verilog.png"><br>
Hardware for the above verilog code consists of a AND and a OR gate as shown in fig below: <br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/5a3ea9400e8496424e88b1ffcd9a92df552238b0/%23day4/3_caveat_hardware.PNG"><br>

When test bench is given as stimulus to the verilog code of the blocking_caveat, simulation result comes out as follows:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c83f706def1e81c50d20c3c252e3418641f0a7d4/%23day4/3_caveat_gtk.png"><br>

In this scenario, it's evident that the evaluation of 'x' occurs subsequent to the evaluation of 'd'. Consequently, whenever the always block is triggered, the prior value of 'x' is utilized to evaluate 'd'. Following that, the assessment of 'x' takes place based on the updated values of 'a' and 'b'. This sequence of events is a direct outcome of the usage of blocking assignment statements. Now, let's delve into the outcome when we apply the same stimulus to both the original design and its corresponding netlist. The graphical representation of the aforementioned example is depicted below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c83f706def1e81c50d20c3c252e3418641f0a7d4/%23day4/3_caveat_gui.png"><br>	

Netlist for the given example:<br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/268f2e257b644293ffcc6b9e73dd5b926537780f/%23day4/3_bloicking_caveat_net.png"><br>	

Simulation results for after GLS:<br><br>
<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c83f706def1e81c50d20c3c252e3418641f0a7d4/%23day4/3_caveat_gls.png"><br><br>

Upon subjecting the netlist of the design to the stimulus, a reversal in the evaluation sequence occurs. Initially, 'x' undergoes evaluation, utilizing the fresh values of 'a' and 'b'. Subsequently, the evaluation of 'd' takes place, drawing from the revised value of 'x'. Interestingly, the issue stemming from the use of blocking assignment doesn't manifest when applying the same stimulus to the design's netlist.

</details>
</details>

## Day-5-DFT

<details>
<summary>Introduction </summary> <br>

**Testbility**<br>

Testability in the context of logic design refers to the ease with which a digital circuit or system can be tested to ensure that it functions correctly according to its design specifications. A testable design allows for efficient and effective testing procedures, which is crucial for identifying and fixing errors before the circuit is manufactured or deployed. Two key aspects of testability are controllability and observability.<br>

**DFT**<br>

Design for Testability (DFT) is a set of techniques and methodologies employed during the design process of integrated circuits (ICs) to enhance their testability and ensure effective testing after fabrication. The goal of DFT is to make it easier to identify manufacturing defects, functional errors, or other issues within the IC, which helps improve the overall reliability of semiconductor devices. DFT techniques involve adding specialized circuitry to the design that facilitates efficient and accurate testing.<br>

Key motivations behind implementing Design for Testability (DFT) techniques:<br>

* **Easier Testing Process:**<br>
DFT techniques significantly simplify the testing process by providing standardized and efficient ways to inject test patterns, observe internal signals, and analyze the responses. Without DFT, testing complex integrated circuits would be a challenging task, as it would require specialized and often custom solutions for each design.<br>

* **Improved Manufacturing Quality:**<br>
DFT helps in identifying defects and errors during the manufacturing process. By thoroughly testing a design using DFT methods, potential manufacturing defects such as faulty transistors, short circuits, or open connections can be detected and addressed before the product reaches the market. This leads to a higher-quality end product with fewer defects.<br>

* **Reduced Time to Market:**<br>
DFT plays a crucial role in speeding up the product development cycle. It enables faster debugging and validation of designs by allowing engineers to quickly identify and address issues during the testing phase. The ability to quickly pinpoint problems and fix them translates to a shorter overall design cycle, allowing products to reach the market sooner.<br>

* **Long-Term Reliability:**<br>
DFT not only ensures short-term quality but also contributes to the long-term reliability of a design. By thoroughly testing a chip before it is released, potential reliability issues can be addressed in advance. This is particularly important for applications where downtime or failures are costly, such as in aerospace, automotive, medical, and telecommunications industries.<br>

* **Cost Savings:**<br>
Detecting and fixing issues during the design phase is far more cost-effective than addressing them after manufacturing. DFT helps in identifying design flaws and manufacturing defects early, saving resources that would otherwise be spent on expensive post-manufacturing fixes or recalls.<br>

* **Efficient Diagnosis and Repair:**<br>
DFT techniques provide detailed information about the nature and location of faults. This not only streamlines the debugging process but also enables more accurate diagnosis and repair. Engineers can quickly identify whether a fault is due to a design flaw, a manufacturing defect, or an external factor, making the problem-solving process more efficient.<br>

* **Scalability and Complexity Management:**<br>
As integrated circuits become more complex and compact, traditional testing methods become less viable. DFT techniques provide a structured approach to testing, even in highly complex designs, ensuring that all aspects of the circuit are adequately exercised and validated.<br>

Certainly, there are three main levels of testing that occur after semiconductor chips are fabricated: chip level testing, board level testing, and system level testing. Each level of testing serves a specific purpose and contributes to ensuring the overall quality and functionality of the final product. Let's delve into each level: <br>

* **Chip Level Testing:**<br>
At the chip level, individual semiconductor chips are tested to verify their functionality and to identify any manufacturing defects. This level of testing focuses on the integrated circuits themselves, ensuring that the logic gates, memory cells, and other components on the chip operate as expected. Chip level testing often involves the use of test patterns and techniques provided by DFT (Design for Testability) methods.<br>
**Purpose:** Chip level testing aims to detect defects in the manufacturing process, such as faulty transistors, open or shorted connections, and other issues that might affect the chip's performance or reliability.<br>

* **Board Level Testing:**<br>
After the individual chips are fabricated and tested, they are assembled onto printed circuit boards (PCBs) to create functional electronic systems. Board level testing involves testing the PCB along with its assembled components, including chips, connectors, passive components, and more. This level of testing ensures that the PCB itself is correctly designed and that all components are properly connected and functioning.<br>
**Purpose:** Board level testing helps identify issues related to interconnections, solder joints, power distribution, and any potential defects introduced during the assembly process. It also verifies that the chips interact correctly with each other on the board.<br>

* **System Level Testing:**<br>
System level testing involves evaluating the complete electronic system or device, which could consist of multiple interconnected boards, chips, and external components. This testing verifies the system's overall functionality, performance, and compliance with specifications. System level testing considers real-world operating conditions and user scenarios.<br>
**Purpose:** System level testing ensures that the final product meets its intended functionality and performance goals. It identifies issues that might arise from interactions between different components and subsystems, as well as software and hardware compatibility.<br>

Certainly, Design for Testability (DFT) techniques offer various benefits and also come with some drawbacks. Let's elaborate on the pros and cons you've mentioned:<br>

Pros:

* **Improved Test Coverage:**<br>
DFT techniques, such as scan chains and Built-In Self-Test (BIST), enable the testing of a greater portion of a chip's logic paths. This results in higher test coverage, which means that a larger portion of the design is tested for potential defects. Improved test coverage increases the likelihood of detecting faults, enhancing the overall reliability of the chip.<br>

* **Reduces Tester Complexity:**<br>
DFT simplifies the testing process by providing standardized mechanisms for injecting test patterns and observing internal signals. This reduces the complexity of the external test equipment required to validate the chip's functionality. Standardized test access mechanisms, like scan chains, make it easier to interface with the chip for testing purposes.<br>

* **Easy to Debug:**<br>
DFT methods provide enhanced observability and controllability, making it easier to identify and isolate faulty parts of the design. When a chip fails a test, DFT techniques can help pinpoint the location and nature of the failure, speeding up the debugging process.<br>

Cons:<br>

* **Increases Complexity of Design:**<br>
Implementing DFT techniques requires adding extra circuitry to the design. This additional circuitry can increase the overall complexity of the chip, making the design process more intricate and potentially increasing the risk of introducing errors during the design phase.<br>

* **Increases Area, Power, Timing, and Package Pins:**<br>
DFT structures, such as scan chains, take up silicon area on the chip, which can lead to increased power consumption and potentially affect the chip's performance due to added capacitance. Additionally, DFT techniques may require extra pins for test access, which can affect the chip's packaging and pinout.<br>

* **Dependency on External Tools:**<br>
Implementing some DFT methods, such as scan-based testing or boundary scan (JTAG), often requires specialized software tools and test equipment. This dependency on external tools and workflows can introduce complexities in the design process and increase the overall development time.<br>

* **Cost Implications:**<br>
While DFT can enhance testability and improve chip quality, it can also add costs to the design and manufacturing process. The extra resources required for implementing and verifying DFT structures need to be balanced against the benefits gained from better testing and quality assurance.<br>

* **Impact on Timing and Performance:**<br>
DFT structures can introduce additional delays in the chip's operation due to increased logic paths and signal routing. This can potentially affect the chip's overall timing performance, especially in designs where timing is critical.<br>

Terminologies in DFT:<br>

* **Controllability:**<br>
Controllability refers to the ease with which you can set a specific signal line within a digital circuit to a desired logic level. In DFT, controllability is crucial because it determines how effectively you can apply test patterns to activate specific paths and logic conditions within the circuit. Higher controllability means you can easily control the inputs to achieve the desired internal states for testing.<br>

* **Observability:**<br>
Observability is the ability to accurately measure the logic value of a signal line at a specific point in the circuit. Good observability means that you can effectively observe the state of internal signals and outputs during testing, which is essential for verifying the circuit's behavior and detecting potential faults.<br>

* **Fault:**<br>
A fault in the context of DFT represents a defect or physical damage at the functional level of abstraction within a digital circuit. A fault might arise due to manufacturing defects, aging, or other factors. Not all faults lead to system failures, but they can potentially impact the functionality or reliability of the circuit.<br>

* **Error:**<br>
An error is the unintended deviation from the expected behavior caused by a fault. When a fault is activated during the circuit's operation, it can result in incorrect logic behavior, which in turn can lead to errors in the circuit's output or behavior.<br>

* **Failure:**<br>
A failure occurs when a system, device, or circuit does not produce the expected or desired output. Failures are the result of errors that occur during the system's operation.<br>

* **Fault Coverage:**<br>
Fault coverage is a metric used to quantify the effectiveness of testing in detecting logical faults within a digital circuit. It represents the percentage of potential faults (defects or errors) that are detected and identified by the applied test patterns. A higher fault coverage indicates a more thorough testing process.<br>

Certainly, DFT techniques, or Design for Testability techniques, are strategies and methodologies integrated into the design process to enhance the efficiency and effectiveness of testing and verification for integrated circuits (ICs) or electronic systems. These techniques are aimed at ensuring that the manufactured devices can be thoroughly and accurately tested to identify potential defects, errors, or faults. These are discussed below:<br>

**Ad hoc design methods:**<br>

* **Custom Logic Design:**<br>
Custom logic design involves creating specialized circuitry or modifications to existing logic to facilitate testing. This might include adding multiplexers, decoders, or control logic that enable specific test patterns to be applied or observed more effectively.<br>

* **Layout Modification:**<br>
Layout modifications refer to making changes to the physical layout of the circuit to improve testability. This could involve repositioning components, adding additional metal layers for better signal routing, or adjusting the placement of critical paths to enhance observability.<br>

* **Specialized Clocking Schemes:**<br>
Creating custom clocking schemes can help in enhancing testability. For example, using scan chains to load test patterns into flip-flops can be considered a specialized clocking scheme.<br>

* **Custom Testing Methods:**<br>
Custom testing methods involve developing unique test patterns or procedures specifically designed to target challenging parts of the design that may not be adequately covered by standard testing techniques.<br>

* **Design Rule Exceptions:**<br>
In some cases, design rule exceptions might be necessary to accommodate DFT structures. For example, certain spacing or area constraints might need to be relaxed to accommodate the insertion of scan chains.<br>

* **Power Optimization Techniques:**<br>
Power-aware testing involves designing test patterns that consider the power consumption characteristics of the circuit. This might involve techniques to minimize power usage during test application or designing tests that stress power-related issues.<br>

* **Mixed-Signal Customization:**<br>
In mixed-signal designs, ad-hoc techniques could involve customizing analog-to-digital converter (ADC) or digital-to-analog converter (DAC) test procedures to ensure accurate testing of both analog and digital portions of the circuit.<br>

* **Avoid Combinational Feedback:**<br>
Combinational feedback loops can complicate testing. Ad-hoc techniques could involve restructuring the design to avoid such loops, making testing more manageable.<br>

**Structured Design for Testability**<br>
Structured Design for Testability (DFT) is a systematic approach to incorporating design techniques that improve the testability and test coverage of integrated circuits (ICs). This method focuses on the integration of specific circuit structures and methodologies to facilitate efficient testing and fault detection during the manufacturing process. Three common structured DFT techniques are scan chains, boundary scan (JTAG), and memory Built-In Self-Test (BIST).<br>

* **Scan Chains:**<br>
Scan chains are a core element of structured DFT. These chains consist of flip-flops that are interconnected in a serial manner. The primary purpose of scan chains is to enable the insertion and 		propagation of test patterns through the circuit. During the testing phase, the design's functional clock is paused, and the test patterns are serially loaded into the scan chain. This effectively 		converts the design into a "scan mode," allowing for efficient testing and observation of internal nodes.<br>

	Scan chains improve testability by:<br>
	* Allowing a comprehensive test pattern to be shifted into the circuit, activating various paths and detecting potential defects.<br>
	* Enabling efficient fault identification and debugging through a controlled testing environment.<br>
	* Simplifying the generation of test patterns using Automatic Test Pattern Generation (ATPG) tools.<br>

* **Boundary Scan (JTAG):**<br>
The Joint Test Action Group (JTAG) standard defines a boundary scan architecture that adds specialized circuitry at the inputs and outputs of ICs. The boundary scan registers allow for testing and debugging of interconnections on printed circuit boards (PCBs) and within IC packages.<br>

	Boundary scan enhances testability by:<br>
  	* Providing standardized access to the pins of ICs, which simplifies external connections and makes PCB testing more efficient.<br>
	* Enabling testing of interconnections that are difficult to access through external test probes.<br>
	* Offering additional functionality beyond testing, such as programming devices in-system or performing board-level diagnostics.<br>

* **Memory Built-In Self-Test (MBIST):**
MBIST involves incorporating specialized circuitry within the memory components of the IC to enable self-testing. This technique is particularly useful for testing embedded memories, such as RAMs or ROMs.<br>

	MBIST improves testability by:<br>
	* Facilitating comprehensive testing of memory cells and arrays without external test equipment.<br>
	* Reducing the complexity of memory testing and ensuring high test coverage.<br>
	* Identifying faults or defects within memory cells, which are critical components in many designs.<br>

</details><br>	



## Day-6-Introduction to logic Synthesis

 <details>
 <summary>Introduction</summary>

* **Digital Circuits:**<br><br>
A digital circuit is an electronic circuit that processes digital signals or binary data, which consists of discrete values, typically represented as 0s and 1s. These circuits are the fundamental building blocks of digital electronics and are widely used in various electronic devices and systems, including computers, smartphones, televisions, and many other electronic appliances. These descriptions have been articulated within the behavioral model of a design implemented in HDL or VHDL. The specification conveyed through a programming language constitutes the RTL representation. <br><br>

	Here are some key components and concepts associated with digital circuits:.<br><br>
 
	* Logic Gates.<br>
	* Sequential Logic Circuits.<br>
	* Combinatinal Logic Circuits.<br>
	* Integrated Circuits (ICs).<br>
	* Binary Representation.<br>
	* Binary Representation.<br>

* **Synthesis:** <br><br>
Synthesis in VLSI (Very Large Scale Integration) refers to the process of translating a high-level hardware description language (HDL) representation of a digital circuit, typically written in languages like VHDL or Verilog, into a netlist of lower-level logic gates and flip-flops. <br><br>

* **.lib file:** <br><br>
In the context of physical design in VLSI (Very Large Scale Integration), ".lib" files, short for library files, are essential components. These files contain information about the standard cells and their characteristics used in a specific semiconductor manufacturing process. Here's a breakdown of what ".lib" files typically include:

	* **Cell Definitions**: ".lib" files contain definitions for standard cells. These cells are fundamental building blocks of digital integrated circuits and include logic gates (e.g., AND, OR, NAND, 		NOR, XOR), flip-flops, latches, multiplexers, etc. Each cell definition includes details about the cell's functionality, input and output pins, and timing information.

	* **Timing Data**: Timing data is critical for the physical design process. ".lib" files include information about the timing characteristics of each standard cell, such as input and output delay, 		setup time, hold time, and transition times. This data helps in accurately estimating the overall performance and timing constraints of the designed chip.

	* **Power Data**: Power consumption is a crucial consideration in VLSI design. ".lib" files may also include information about the power characteristics of standard cells, including static power 		(leakage power) and dynamic power (power consumed during transitions).

	* **Area Information**: ".lib" files often include data about the physical area occupied by each standard cell. This information is essential for estimating the chip's overall size and layout.

	* **Voltage and Temperature Dependencies**: Some ".lib" files may provide data that varies with voltage and temperature, enabling designers to consider different operating conditions.

	* **Library Variants**: In more advanced processes, different variants of standard cells (e.g., low-power variants, high-performance variants) may be available. ".lib" files might include data for 		various library variants to support different design goals.
	In VLSI design, libraries often include both faster and slower cells to accommodate various design goals and trade-offs. Here's why having such cells is important:

	* **Performance Optimization**: Faster cells are designed to have shorter propagation delays and faster switching times. They are crucial for achieving high-speed operation in digital circuits. In 		applications where speed is a primary concern, such as microprocessors or high-frequency communication interfaces, designers use these faster cells to meet stringent timing constraints.

	* **Power Consumption Reduction**: Slower cells, on the other hand, are designed with a focus on reducing power consumption. They often have larger transistor sizes and slower switching 			characteristics, which result in lower dynamic power consumption. In battery-powered devices, IoT applications, and scenarios where power efficiency is a priority, slower cells can help extend 		the battery life and reduce heat generation.

	* **Timing Closure**: In VLSI design, designers need to ensure that the logic paths within the chip meet specific timing requirements. This involves balancing the arrival times of signals at different 	parts of the circuit. Slower cells can be strategically inserted in longer paths to help balance timing and achieve timing closure without violating setup and hold time constraints.

	* **Mixed-Signal and Analog Blocks**: In mixed-signal and analog-digital integrated circuits, slower cells may be used in the digital portions of the design to avoid signal integrity issues and 		interference with analog components. This ensures that the digital signals do not introduce noise or distortion into the analog sections.

	* **Variability Mitigation**: Semiconductor manufacturing processes introduce variability in transistor characteristics, which can affect the performance of digital cells. Having both faster and slower 	cells allows designers to account for this variability. They can select cells that are more robust against process variations, ensuring the chip's reliability and yield.

	* **Design Flexibility**: The availability of both faster and slower cells provides designers with flexibility to make trade-offs between performance, power, and area. Depending on the specific 		requirements of the project, designers can choose the appropriate cells to optimize their design for different parameters.

* **Synthesis Illustration:** <br><br>

  <img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/0e97a0b9aae10cc7cbe30c82d5c8777714e89e7b/day6/Synthesis_illustration.PNG"><br><br>

* **Implementation of design and its selection:** <br><br>

Consider an Example assign y = (a & b) | (b & c) | (c & a), this statement ca be implemented in 3 different ways as shown below.

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/afa496f7f575ff5edb3d107217c9b9685ffd69af/day6/Implementation123.PNG"><br><br>

Now, let's examine the various parameters associated with the different implementations, as displayed in the table below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/afa496f7f575ff5edb3d107217c9b9685ffd69af/day6/Implementation_comparison.PNG"><br><br>

Based on the information provided, it's clear that:<br><br>

1. Implementation 3 is optimal for maximizing performance, but it may potentially introduce hold violations due to its faster characteristics.<br>

2. Implementations 1 and 2 exhibit similar delay characteristics, but they differ in terms of area utilization. The choice between them depends on the specific project requirements and objectives.<br>

Ultimately, selecting a design involves making trade-offs among various parameters. The decision hinges on the project's specific specifications and objectives, highlighting the inherent complexity of balancing performance, area, and other factors in VLSI design.

* **Constraints:** <br>
In physical design in VLSI (Very Large Scale Integration), constraints are essential specifications and limitations that guide the placement and routing of the components on the integrated circuit (IC) layout. These constraints help ensure that the final chip meets the desired performance, power consumption, and manufacturability goals. Here are some common types of constraints in VLSI physical design:<br><br>

	* **Timing Constraints**: These constraints define the required timing characteristics of the circuit. They include setup time, hold time, clock-to-q delay, clock skew, and maximum operating frequency. 	Meeting timing constraints ensures that signals propagate correctly and meet the required data arrival times.<br><br>

	* **Power Constraints**: Power constraints specify the maximum allowable power consumption for the chip or specific regions within it. These constraints help manage dynamic power (power consumed during 	transitions) and static power (leakage power) to meet power efficiency goals.<br><br>

	* **Area Constraints**: Area constraints determine the maximum allowable chip size or the area allocated to specific blocks or functions within the chip. Meeting area constraints ensures efficient use of 	silicon real estate.<br><br>

	* **Signal Integrity Constraints**: These constraints address signal quality and integrity. They include requirements for signal voltage levels, noise margins, and constraints related to minimizing signal 	delay variations, such as skew constraints.<br><br>

	* **Design for Manufacturing (DFM) Constraints**: DFM constraints aim to improve manufacturability and yield. They involve specifying rules and guidelines for aspects like lithography, metal layer 		density, and design rule compliance to ensure the chip can be manufactured reliably.<br><br>

	* **Routing Constraints**: Routing constraints dictate the routing resources available, such as the number of metal layers, track spacing, and via utilization. These constraints ensure that the 		interconnections between components can be routed without congestion or excessive delays.<br><br>

	* **Clock Constraints**: Clock constraints define the clocking scheme for the design, including clock domains, clock sources, and clock tree synthesis specifications. Proper clock constraints are crucial 	for synchronous operation and minimizing clock skew.<br><br>

	* **Physical Constraints**: These constraints include information about the physical characteristics of the chip, such as pad placement, package type, and floorplan requirements.<br><br>

	* **Environmental Constraints**: Some designs may have constraints related to environmental factors like temperature and voltage variations, especially in automotive or aerospace applications.<br><br>

	* **Functional Constraints**: These constraints relate to the specific functionality and behavior of the chip, including requirements for input and output pins, interface standards, and operational modes.<br><br>

</details>

<details>
<summary>Design Compiler </summary>
Design Compiler, developed by Synopsys, is a widely used electronic design automation (EDA) tool for logic synthesis in the field of Very Large Scale Integration (VLSI) design. Here are its key uses and advantages:<br>

Uses:<br>

* **Logic Synthesis:** Design Compiler takes a high-level hardware description (usually in VHDL or Verilog) and translates it into a gate-level netlist. This netlist consists of logic gates and flip-flops that implement the specified functionality. It optimizes the design for factors such as area, power consumption, and speed.<br><br>

* **Technology Mapping**: The tool maps the logic functions in the design to specific cells available in the target technology library (e.g., standard cells in CMOS processes). This step involves selecting the most appropriate gates to implement the desired functionality.<br><br>

* **Clock Tree Synthesis**: Design Compiler helps create a balanced and efficient clock distribution network (clock tree) to ensure synchronous operation within the design. Proper clock tree synthesis is critical for avoiding clock skew and meeting timing constraints.<br><br>

* **Area Optimization**: It offers various optimization techniques to reduce the physical area occupied by the design, which is essential for minimizing chip size and cost.<br><br>

* **Timing Optimization**: Design Compiler aims to meet specified timing constraints by optimizing the placement of logic elements and minimizing signal delays. It performs optimizations like retiming and logic restructuring to achieve this.<br><br>

* **Power Optimization**: The tool provides features to reduce dynamic and static power consumption through techniques like clock gating, power gating, and efficient logic synthesis.<br><br>

Advantages:

* **Industry Standard**: Design Compiler is an industry-standard tool widely used by VLSI designers and semiconductor companies. It has a robust user base and extensive support.<br><br>

* **High Performance**: It's known for its ability to optimize designs for high performance and meet strict timing requirements, making it suitable for applications like microprocessors and high-speed interfaces.<br><br>

**Synopsys Design Constraints**:<br>
SDC stands for "Synopsys Design Constraints." It is a file format and set of constraints used in the field of electronic design automation (EDA) and Very Large Scale Integration (VLSI) design. SDC files are typically used in conjunction with tools like Synopsys Design Compiler to specify various timing and functional requirements for a digital design. Here's a more detailed explanation of SDC:<br><br>

1. **Timing Constraints**: SDC files primarily define timing constraints for a digital design. These constraints include information such as:<br>

	* **Clock definitions**: Specifying clock signals and their characteristics, like clock frequency and source.<br>

	* **Input and output delays**: Specifying maximum and minimum delay requirements for inputs and outputs relative to clock edges.<br>

	* **Setup and hold times**: Defining the setup time (time before the clock edge) and hold time (time after the clock edge) for flip-flops and other sequential elements.<br>

	* **Clock-to-Q delays**: Setting constraints on the time it takes for signals to propagate through sequential elements.<br>

	* **Maximum operating frequency**: Specifying the maximum clock frequency at which the design must operate correctly.<br>

2. **Area and Power Constraints**: In addition to timing constraints, SDC files may also include constraints related to chip area and power consumption, allowing designers to balance performance, area, and power efficiency.<br><br>

3. **Functional Constraints**: SDC files can contain functional constraints that specify certain behaviors or requirements for the design beyond just timing. These may include specifying the behavior of specific blocks or interfaces.<br><br>

4. **Design Hierarchy**: SDC files often account for design hierarchy, allowing constraints to be applied at various levels of the design, from the top-level chip to individual modules or cells.<br><br>

5. **Physical Constraints**: Some SDC files may include physical design constraints, such as placement preferences or rules related to physical design implementation.<br><br>

6. **Derivation of Constraints**: Constraints in SDC files can be derived from various sources, including chip specifications, desired performance characteristics, and vendor-specific libraries.<br><br>

**DC Setup:** <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d5078e9671741bca3ed0ef74e00ef0e56a3d3b4c/day6/DC_setup.PNG"><br><br>

**DC Synthesis flow:** <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/83994aa5ee163420356a0898ffea7147e1bebb78/day6/dc_flow.PNG"><br><br>

</details>

<details>
<summary>Labs on Design Compiler</summary> <br>

In VLSI (Very Large Scale Integration) design, a ".lib" file for Design Compiler is a library file specifically tailored for a particular Process, Voltage, and Temperature (PVT) corner:<br><br>

1. **Process Corner**: Semiconductor manufacturing processes have inherent variations. A PVT corner represents a specific combination of manufacturing process conditions, such as variations in transistor threshold voltage (Vt), channel length, and oxide thickness. These variations can significantly impact the performance, power consumption, and reliability of integrated circuits. Therefore, it's essential to characterize and model these variations for different corners.<br><br>

2. **Voltage Corner**: The voltage corner refers to the supply voltage level at which the integrated circuit operates. Different voltage levels can affect the power consumption, speed, and reliability of a chip. Low-voltage corners are often associated with lower power consumption but may sacrifice performance, while high-voltage corners offer higher performance at the cost of increased power.<br><br>

3. **Temperature Corner**: Temperature variations also play a crucial role in chip behavior. Integrated circuits may operate differently under different temperature conditions, affecting their performance and power characteristics. Extreme temperature corners, such as high-temperature or low-temperature scenarios, are essential to consider for reliable chip operation.<br><br>

Steps in DC Synthesis flow:<br><br>

STEP 1: Invoke c shell<br>
	Command: **c_shell**<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_dc_shell1.png"><br><br>

STEP 2: Invoke DC<br>
	Command: **dc_shell** <br><br>

 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_dc_shell1.png"><br><br>

STEP 3: Read standard cells from the tech.lib <br>
	Command: **echo $target_library** <br>
 	Command: **echo $link_library** <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_inag_libs.png"><br><br>

* The presence of an imaginary, non-existent library is evident because we have not yet configured the target and linked libraries. Let's examine the components that will be included in the generated netlist. <br><br>

STEP 4: Read verilog file<br>
	command: **read_verilog <file_with_path.v>** <br><br>
 
 <img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_read_design%20without_lib.png"><br><br>

* We received a warning stating, "Cannot read link library 'your library.db.'" This warning is triggered because we haven't configured the link library; instead, we've used a fictional library. <br><br>

* The file we've specified is named "lab1_flop_wit_en.v," and the anticipated GUI for this design is depicted in the image below. We will subsequently compare the expected GUI with the actual one.<br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/da83ae0c12e88db842e24adb38253d575b95752c/day6/expected%20_hardware.PNG"><br><br>

STEP 5: Write the netlist.<br>
	command: write -f verilog -out <name_to_give.v><br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_write_netlist.png"><br><br>


STEP 6: Lets see the generated netlist.<br>
 	command: sh gvim <name.v> <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_netlist_without_lib.png"><br><br>

* In this observation, we notice that the cells currently in use originate from the Gtech.lib library, which is readily available in the DC's memory. However, our initial anticipation was for the utilization of the sky 130 library, which has not occurred. This discrepancy can be attributed to the fact that the target and link library settings have not been specified. In order to employ the sky 130 library, it is imperative to configure both the target and link library settings accordingly. In the following steps, we will delve into how to achieve this. <br><br>

STEP 7: Setting link and target library.<br>
	command: **set target_library <sky130.db_path>** <br>
	command: **set link_library {* <sky130.db_path> }**  OR **set link_library {* $target_library}** <br><br>

* The use of '*' symbolizes that the libraries already present in the DC memory are not replaced or erased. Instead, they are supplemented with the addition of new libraries, coexisting alongside the existing ones. <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_set_tl_ll_link.png"><br><br>

STEP 8: command: **link**  <br>

* The "link" command in DC typically refers to a command used in digital design or electronic design automation (EDA) tools like Synopsys Design Compiler. This command is used to link or connect various design and library files, enabling the creation of a complete, synthesized design.<br><br>

STEP 9: command: **compile** <br>

* In the context of digital design and electronic design automation (EDA) tools like Synopsys Design Compiler (DC), the "compile" command is used to initiate the synthesis process. The "compile" command in DC typically requires specifying input files, design constraints, and other configuration options. <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_compile_1.png"><br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/1_compile_2.png"><br><br>

STEP 10: Now lets write and see the new generated netlist:<br>
command: **write -f verilog -out <name.v>** <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/2_netlist_with%20lib.png"><br><br>

* Here we can see the cells used are from sky130 library as expected. <br><br>

STEP 11: Write the ddc file. <br>
command: **write -f ddc -out <name.ddc>** <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1fc97850bebc958e21465a671a638a0a9a2d8e3/day66/2_write_ddc.png"><br><br>

* In the context of Synopsys Design Compiler (DC) and digital design, a ".ddc" file typically refers to a design constraints file. Design constraints are essential specifications and requirements that guide the synthesis and optimization process, ensuring that the resulting design meets the desired performance, power, and area goals.<br><br>

STEP 12: Exit the dc_shell. <br>
command: **exit** <br><br>

STEP 13: command: **csh** <br><br>

STEP 14: Invoke the design vision. <br>
command: **design_vision** <br><br>

* Design Vision is a part of the Synopsys suite of Electronic Design Automation (EDA) tools, and it is commonly used for RTL (Register Transfer Level) synthesis and formal verification tasks in digital design. Specifically, Design Vision is the front-end tool that interfaces with other Synopsys tools like Design Compiler and Formality to perform these tasks.<br><br>

STEP 15: In the design vision:<br>
	command: **read_ddc <ddc_file_name.ddc>** <br><br>

 * read_ddc - it saves all the information in the toolmemory in that particular session. <br><br>

STEP 16: Within the Design Vision graphical user interface (GUI) window, open the previously generated netlist both before and after specifying the link and the target library.<br>

command: **read_verlog <netlist_name.v>** <br><br>

* Netlist before specifying the link and target library: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bd0add3ac55c44efe21a651c0028bcc8c04ed25c/day66/3_netlist_without_lib_in_gui.png"><br><br>

* Netlist after specifying the link and target library: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bd0add3ac55c44efe21a651c0028bcc8c04ed25c/day66/3_read_ddc.png"><br><br>

STEP 17: Take a look at the graphical user interface (GUI) generated both before and after specifying the link and the target library. <br><br>

* GUI before specifying the link and target library: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bd0add3ac55c44efe21a651c0028bcc8c04ed25c/day66/4_gui_withoutlib.png"><br><br>

* GUI after specifying the link and target library: <br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bd0add3ac55c44efe21a651c0028bcc8c04ed25c/day66/4_gui.png"><br><br>

* Numerous .db files consistently exist within the DC environment, and they are indispensable components that should not be overlooked. Additionally, it is mandatory to manually configure the link and target library settings every time we initiate the DC shell. To streamline this process and enable the automatic reading of the link and target library, we can create a file named ".synopsys_dc.setup" in the home directory and incorporate the following two commands within it:<br><br>

	* command 1: **set target_library <target_lib_path.db>**<br>
   	* command 2: set link_library {* $target_library}<br><br>

* Below image shows the ".synopsys_dc.setup" file:<br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8848905775eeb26277d79512832833576e798c8e/day66/5_synopsys_setup.png"><br><br>

* The figure below illustrates that by configuring the ".synopsys_dc.setup" file in the home directory, there is no longer a need to manually specify the target library and link library each time we launch the dc shell.<br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6363bc16aa3fdacc64018e9b04a8560b27b59360/day66/5_automatic_lib_set.png"><br><br> 



</details>

<details>
 <summary>Labs on TCL </summary><br>
Tcl is a scripting language that is often pronounced as "tickle." Tcl is a versatile and easy-to-learn scripting language that is commonly used for a wide range of tasks, including automation, text processing, and building graphical user interfaces (GUIs). Various commands of tickle are discused:<br><br>

<details>
<summary>Set </summary>
	
* In Tcl (Tool Command Language), the set command is used to create and assign values to variables. It has the following syntax: **set variableName value**. <br>
eg:<br>
```ruby
set name "John Doe"
set age 30
``` 
* You can also use the set command to retrieve the value of a variable.<br>
eg:<br>
```ruby
set myVariable "Hello, World!"
echo $myVariable
```

 * We can also use curly braces {} to specify variable names, which is useful when you want to access variables with special characters in their names.<br>
eg:<br>
```ruby
	set {my var} "Special Variable"
	echo $my\ var
```

 * Set command with [] can be used for nesting the commands.<br>
eg:<br>
```ruby
	set a [expr $a + $b]
```


</details>

<details>
<summary>if-else </summary><br>
Syntax:<br>
	
```ruby
if { condition } <br>
	{ statements if true } 
else <br>
	{ statements if false } 
```
eg: <br>

```ruby
	if { $a < 10}
 		{ echo "$a is less than 10"; }
	else
 		{ echo "$a is greater than 10"; }
```

</details>

<details>
<summary>while loop </summary><br>

Syntax:<br><br>	

```ruby
while { condition } 
	{ statements}
```

eg:<br>

```ruby
set i 0
while { $i < 10} {
echo $i;
incr i;
}
```
</details>

<details>
<summary>for loop </summary><br>
Syntax:<br><br>	

```ruby
for {looping variable} {condition} { looping variable modifications } { 	
statements 
}
```
eg: <br>

```ruby
for {set i 0} {$i < 10} {incr i} { 
echo $i; 
}
```

</details>

<details>
<summary>foreach </summary><br>
Syntax:<br><br>	

```ruby
foreach var list {
statements
}
```

</details>

* Here's a terminal output for the **set**, **echo**, and **incr** commands: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8848905775eeb26277d79512832833576e798c8e/day66/6_set_incr.png"><br><br> 

* Here is the terminal output for the "for" loop: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2d4a8d1310458e773c34bdbaffc9ccf2417cac6e/day66/for_loop_errors.PNG"><br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2dab7d790715ea22c604af32b753eb16cf87d9a0/day66/correct_for_loop.PNG"><br><br>

* Here is the terminal output for the "while" loop: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/16e3d72f323e52eed82a61c02cb7628ac467d32a/day66/while_loop.PNG"><br><br>

* Here is an example of creating a list, and also demonstrating how to utilize a foreach loop to print each element of the list separately: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/feaf80a37dcc811e03158f3fa1cf20a0569335cd/day66/list.PNG"><br><br>

* To get all the cells from the loaded library we use command : **get_lib_cells**. Figure below shows all the "and" cells of the choosen library. <br>

<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2dab7d790715ea22c604af32b753eb16cf87d9a0/day66/9_lib_cells.png"><br><br>

* Let's try to explore the use of a foreach loop to iterate through the previously mentioned list and display its elements one by one.<br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2dab7d790715ea22c604af32b753eb16cf87d9a0/day66/9_lib_cells_foreach.png"><br><br>

* In the image above, you may have noticed that 'sel' is displayed instead of cells. This occurred because we mistakenly treated elements obtained from the get_lib_cells function as a list when, in fact, they are a collection. Collections are enclosed within curly brackets, as seen in the image for **get_lib_cells** */*and*. Collections are similar to pointers, and to iterate through and display their elements one by one using a foreach loop, the correct syntax is provided below: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/aab328d62a67cd5f437406fdb1f71948ec8a6a5e/day66/foreach_collection.PNG"><br><br>

* We have the flexibility to create a Tcl file and incorporate various custom code snippets as needed, which can significantly enhance our efficiency. <br>
* To generate a Tcl file, initiate by opening a file using the command: **sh gvim name**, and save it with the **.tcl** extension. 
* To launch the tcl file use command: **source name.tcl** <br>
* An illustration of this is presented in the figure below.<br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/aab328d62a67cd5f437406fdb1f71948ec8a6a5e/day66/tickle.PNG"><br><br>

* "In this context, it's important to highlight that if we intend to showcase the result of an arithmetic operation, we should use the following syntax: echo [expr arithmatic_expression]. <br>


</details>

## Day-7-STA
	
<details>
<summary>Introduction </summary><br>
	
Static timing analysis is a method of validating the timing performance of a design by checking all possible paths for timing violations under worst-case conditions. It considers the worst possible delay through each logic element, but not the logical operation of the circuit.<br><br>
In comparison to circuit simulation, static timing analysis is:<br>
* Faster - It is faster because it does not need to simulate multiple test vectors<br>
* More Thorough - It is more thorough because it checks the worst-case timing for all possible logic conditions, not just those sensitized by a particular set of test vectors.<br>
* Once again Note this thing_ Static timing analysis checks the design only for proper timing, not for correct logical Functionality.<br>

Maximum and Minimum delay constraints: <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d53020a66fe32f2484b5042169c435bbbef2c925/day7/1.PNG"> <br><br>

* Tclk > Tcq_a + Tcomb + Tsetup_b<br>
* Lets introduce buffer components into the clock path of a D Flip-Flop (DFF_B) without specifying any minimum delay requirements. <br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7fc98da248bda002ca4cb47a2b83d836347b5c48/day7/2.PNG"><br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7fc98da248bda002ca4cb47a2b83d836347b5c48/day7/3.PNG"><br><br>
* When there's zero delay in the clock path of DFF_B, data sent by DFF_A at the first clock edge arrives at DFF_B precisely at the following (second) clock edge, defining the setup time (Tsetup) for DFF_B. However, when we introduce delay into DFF_B's clock path, it extends the setup window, subsequently reducing the likelihood of a setup violation occurring.<br>
* If we have a hold window also, i.e. minimum delay the:<br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4c56f5f9de209893a58149e163ee7ecd4c94c51f/day7/4.PNG"><br><br>
*Introducing delay in the clock path of DFF_B results in an expanded hold window for DFF_B. Consequently, the probability of DFF_A transmitting additional data within that extended window increases, raising the potential for a hold violation. Therefore, adding clock path delay to the capture flip-flop may not be advisable in terms of meeting the hold criteria.<br>
* Timing equations with skew:
  	* Tclk > Tcq_a + Tcomb + Tsetup_b - Tskew<br>
	* Thold_b < Tcq_a + Tcomb - Tskew<br>
* The delay of a gate in a digital circuit is determined by the RC time constant, where R represents the resistance (related to current) and C signifies the load capacitance. When a gate transitions from one logic state to another, it must charge or discharge the load capacitance. Higher current allows for quicker charging or discharging, reducing delay. Conversely, a larger load capacitance increases delay. This relationship highlights the crucial trade-off between power consumption and speed in digital design, as increasing current to minimize delay results in higher power consumption, while reducing power consumption typically lengthens the gate's delay. Below image depicts the same:<br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4c56f5f9de209893a58149e163ee7ecd4c94c51f/day7/5.PNG"><br><br>

</details>

<details>
<summary>Timing arcs and constraints </summary><br>
	
Timing Arc represents the timing relationship between 2 Pins of any element or Block or any boundaries. Basically it represents the timing characteristic of the element or block or Boundaries.
Timing arc has a Start-point and an Endpoint.<br>
* The start-point can be an Input, output or inout.<br>
* The End is always an output pin or an inout pin (with few exception).<br>
	* Most of the Time arc Endpoint is always an output pin. But there are few cases where it can be input pin.<br>
	* These are constraint timing arc. Like Setup, Hold, Recovery or Removal constraint. These are between input to input pins.<br>
* Below image shows the timing arc in a combinational cell.<br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2dbc35402281cbbe1da36204935b3e3c84d14309/day7/4.1.PNG"><br><br>
* Timing arc in Sequential cell
  	* Delay from clock to Q for D-FF.<br>
   	* Delay from clock to Q, D to Q for D latch. <br>
    	* Setup and Hold time.<br>
     	* Below image shows the timing arcs for a D-FF and a D-Latch.<br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4c56f5f9de209893a58149e163ee7ecd4c94c51f/day7/6.PNG"><br><br>

* Setup and hold for a flip flop are around the sampling edge of a clock. Below table shares one of the most important information regarding delay. <br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8bfd13b29321bf29e98ce56100ee17e3b368f0aa/day7/4.2.png"><br><br>

</details>

<details>
<summary>Timing Paths </summary><br>
	
* A timing path refer to the logical paths within a circuit that dictate the flow of data and are critical for timing analysis. These paths help determine how signals propagate through a digital system and are essential for ensuring that the circuit operates correctly and meets timing constraints. <br>

* A timing path have a starting as well as ending point. <br>
	
	* Start Point<br>
 
		* Input port of the design (because the input data can be launched from some external source). <br>
		* Clock pin of the flip-flop/latch/memory (sequential cell). <br>
  
	* End Point <br>
 
		* Data input pin of the flip-flop/latch/memory (sequential cell). <br>
		* Output port of the design (because the output data can be captured by some external sink). <br>

* If we use all the combination of 2 types of Starting Point and 2 types of End Point, we can say that there are 4 types of Timing Paths on the basis of Start and End point.<br>
 
	* Input pin/port to Register(flip-flop). <br>
	* Input pin/port to Output pin/port. <br>
	* Register (flip-flop) to Register (flip-flop). <br>
	* Register (flip-flop) to Output pin/port. <br>

* See the following fig: <br><br>
	
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03dc7329c998ffc98ae2fb8d2937ac9779478197/day7/8.jpg"><br><br>

* PATH1 - starts at an input port and ends at the data input of a sequential element. (Input port to Register). <br>
* PATH2- starts at the clock pin of a sequential element and ends at the data input of a sequential element (Register to Register). <br>
* PATH3- starts at the clock pin of a sequential element and ends at an output port. (Register to Output port). <br>
* PATH4- starts at an input port and ends at an output port (Input port to Output port). <br><br>

NOTE: The clock determines the delay in the combinational circuit, not vice versa. The clock period sets an upper limit on the delays in all "register-to-register" paths. Constraints specify which cells to use in the combinational logic of these paths. Therefore, all the combinational logic between registers must be optimized with respect to the clock's timing requirements.<br><br> 

* Paths that start from a register within the design and terminate at a register located outside the design are referred to as "register-to-out" paths. These paths are constrained by both the external output delay and the clock period.<br>
* Consider the image shown below.<br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b62aaaa493bea031dec1e3ce56b8ccadb11ae5e0/day7/9.PNG"><br><br>

* Looking at the provided image, let's focus on the path from D_FF1 to D_FF2. If we analyze a single clock period, a portion of that period will be consumed by the time requirement (Tcq) of D_FF1 and the delay introduced by the output combinational logic. The remaining part of the clock period must be allocated for the external path, and this allocation is known as the output external delay. <br><br>

* Paths that start from a register outside the design and terminate at a register located inside the design are referred to as "In-to-reg" paths. These paths are constrained by both the input external delay and the clock period.<br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/179fb23da04071ffe16ca8807b72b5f6b372c297/day7/10.PNG"><br><br>

* Similarly Looking at the above image, let's focus on the path from D_FF1 to D_FF2. If we analyze a single clock period, a portion of that period will be consumed by the setup time requirement (Tcq) of D_FF2 and the delay introduced by the output combinational logic. The remaining part of the clock period must be allocated for the D_FF1-to-input port path, and this allocation is known as the input external delay. <br><br>

* Together, the paths that extend from inputs to registers (In-to-reg paths) and from registers to outputs (reg-to-out paths) are collectively referred to as IO paths. The modeling of delay discussed earlier in relation to these paths is commonly known as IO delay modeling.<br><br>


</details>

<details>
<summary> Library </summary><br>
	
1. **Default Max transition** <br><br>
* There is a predefined capacitance limit for the load connected to a specific gate, and this limit must not be exceeded. In cases where the load capacitance surpasses this limit, additional buffer stages are introduced at the output of that particular gate to evenly distribute the load.<br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ea45d3daee64f6f6eebf666f84f6b40070fd84c0/day7/11.png"><br><br>

* The image below provides a representation of a standard library and offers details regarding its contents, such as:<br>
	* Time unit: ns <br>
	* Voltage unit: V <br>
 	* Current unit: mA <br>
  	* Leakage Power unit: nW <br>
	* Some others parameters are shown in the image below. <br>
 
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ea45d3daee64f6f6eebf666f84f6b40070fd84c0/day7/1_parameters.png"><br><br>

2. **Delay Model: Look Up Table**: <br><br>

* LUTs play a crucial role in modern FPGA (Field-Programmable Gate Array) and ASIC (Application-Specific Integrated Circuit) designs. Here's an overview of what a LUT is and how it is used in VLSI physical design:<br>

* Definition of a LUT:<br>

	* A Look-Up Table is essentially a memory element or a data storage structure that stores predefined output values for all possible input combinations of a logic function.<br>
	* It can be thought of as a truth table in hardware form, where the LUT stores the output values for each possible input combination.<br>

* Structure of a LUT:<br>

	* A typical LUT consists of multiple input pins (often referred to as address lines) and one or more output pins.<br>
	* The number of input pins is determined by the number of variables in the logic function it represents. For example, a 2-input LUT would have two input pins, and an 8-input LUT would have eight input 	pins.<br>
	* The number of output pins is typically one, but there can be multiple outputs in some designs.<br>
	* Inside the LUT, there is a memory array where the output values for all possible input combinations are stored.<br>
 
 * Consider the LUT shown below, here x, y and z are the delay values corresponding to the specific capacitance value and input transition. <br><br>

<img width="300" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/fc77fb31936f2a3f8eb490cbf786e6776f44e396/day7/13.PNG"><br><br>

* If the input transition is 0.07 and the output load capacitance is 0.12, and these specific values are not available in the table, the system will interpolate between the entries for blocks B1, B2, C1, and C2 to determine the corresponding delay value. <br>


* We encounter various versions of the same gate, each offering distinct characteristics. The following images provides details about the area, capacitance, clock pin, direction, leakage and function power for these different variations of the same gate.<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/14.PNG"><br><br>
<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/15.PNG"><br><br>
<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/4_and_function_index_lut.png"><br><br>

3. **Unateness**: <br><br>

* In digital circuits, "unateness" refers to the unate property of a Boolean function or a signal within the circuit. The unate property characterizes how a Boolean function behaves with respect to the variables (inputs) it depends on. There are two types of unateness: positive unateness and negative unateness.<br>

* Positive Unateness:<br>

	*A Boolean function or signal is positively unate with respect to a variable if, when that variable increases (from 0 to 1), the function's output can only either stay the same or increase. In other 		words, increasing the input variable can only result in the same or a higher output value.<br>

* Negative Unateness:<br>

	* A Boolean function or signal is negatively unate with respect to a variable if, when that variable increases (from 0 to 1), the function's output can only either stay the same or decrease. In this 		case, increasing the input variable can only lead to the same or a lower output value.<br>

* Non-Unate Function:<br>

	* A Boolean function or signal is considered non-unate if its behavior with respect to at least one of its input variables is not strictly monotonic. In other words, changing the value of that input 		variable does not consistently lead to a clear increase or decrease in the function's output.<br>


* The unateness of a Boolean function or signal is an important concept in digital circuit analysis and optimization for several reasons:<br>

	* Simplification: Unate functions are easier to simplify than non-unate functions. Positive unate functions can be minimized using techniques like the Quine-McCluskey method, while negative unate 		functions can be minimized using the Petrick's method.<br>

	* Timing Analysis: Unateness properties are used in timing analysis to determine the critical path delay in digital circuits. This information helps in optimizing circuit performance.<br>

	* Logic Synthesis: Unateness information is used by logic synthesis tools to optimize the implementation of digital circuits, reducing area and power consumption.<br>

	* Test Generation: Unateness properties can be exploited in test generation algorithms to improve test coverage and reduce the number of test patterns required to test a digital circuit.<br>

* Below image shows the unateness of the AND cells: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/5_timing_unate_path.png"> <br><br>

* Unateness in Sequential circuits: <br>

 	* The output of a flip-flop remains constant regardless of the clock edge; instead, it depends solely on the input D of the flip-flop, indicating that flip-flops exhibit non-unate behavior. The image 	below illustrates the non-unateness of a D-flip-flop. <br><br>

   	* A rising edge indicates a positive-edge-triggered flip-flop, while a falling edge represents a negative-edge-triggered flip-flop. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/6_ff_unate_type.png"><br><br>

* The image below illustrates the clock's active edge concerning the setup and hold time for a D Flip Flop. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/7_setup_hold_rise_fall.png"><br><br>

* The image below illustrates the clock's active edge concerning the setup and hold time for a D Latch. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7/8__latch_setup_rise_fall.png"><br><br>

</details>

<details>
<summary>Labs on .lib inside dc compiler</summary><br>

Step 1: <br>
```ruby
csh
dc_shell
```

Step 2: Check whether your target and link library are set or not.<br><br>
```ruby
list_lib
```

Step 3: Listing all the AND cells of the library.<br>

<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7_1/14.png"><br><br>

Step 4: Displaying the collection of AND cells individually. <br> 

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7_1/15.png"><br><br>

Step 5: Listing of all the pins and their respective functions for a specific AND gate cell. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7_1/14.1.png"><br><br>

Step 6: TCL program that accepts a list of cells as input and then displays the output pins along with their corresponding functionalities. <br>

```ruby
set mylist [list sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2_8 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2b_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2b_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand2b_4 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand3_1 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand3_2 \
sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__nand3_4 ];

foreach var $mylist {
  foreach_in_collection var_pins [get_lib_pins ${var}/* ] {
      set pin_name [get_object_name $var_pins];
      set pin_dir [get_lib_attribute $pin_name direction];
      if { $pin_dir == 2 } {


          set pin_func [get_lib_attribute $pin_name function];

          echo $pin_name $pin_dir $pin_func ;
       }
    }
}
```
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3ff18905e55176bbae6c96b9643141df7720a6cf/day7_1/15.1.PNG"><br><br>

Step 7: Checking the direction and the funtionality a pin of a cell. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4430771daf71f22e570155579058ab2918662030/day7_1/direction_function.PNG"><br><br>

Step 8: For a particular pin checking its are, capacitance and whether its a clock pin or not. <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c1283b5e3e3b02a299a940502995b48bba982f3a/day7_1/area_cap_clk.PNG"><br><br>

Step 9: Printing all the sequential cells and examining their clock pins. If the clock attribute is set to true, it indicates that the pin functions as a clock port. <br>

<img width="1200" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e572e36b327c6d884c902391963185aed37f24b0/day7_1/filter_seq.PNG"><br><br>

Step 10: Listing all the attributes along with their class.<br>

```ruby
list_attributes
```

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/1e564cdc60344adfeae5c0be18ad52fd3fe20e2f/day7_1/19.png"><br><br>

</details>

## Day-8-Advanced-Constraints


<details>
<summary>Introduction</summary><br>

* **Clock Generator**: are pivotal elements within VLSI (Very Large Scale Integration) circuits, holding a central function in harmonizing diverse components within an integrated circuit (IC). Their primary role is to furnish clock signals, which serve as the temporal orchestrators for digital operations inside the IC. The design of clock generators is centered on producing clock signals with precise attributes, including frequency, duty cycle, and phase, tailored to satisfy the demands of the entire system.. <br>

* Types of clock generators:<br>

	* **Oscillators**: These are widely used as clock generators. They generate continuous periodic signals without an external input. Common types include RC oscillators, LC oscillators, and crystal oscillators.

	* **Phase-Locked Loops (PLLs)**: PLLs are versatile clock generators that can generate clock signals with adjustable frequency and phase. They are often used for clock synchronization and multiplication.

	* **Crystal Oscillators**: They are highly stable and accurate oscillators that use piezoelectric crystals to generate clock signals.
	
* **Clock Skew**: Clock skew refers to the difference in arrival times of a clock signal at various elements (such as flip-flops or latches) within a synchronous digital circuit. In a synchronous digital system, all the elements are driven by the same clock signal to ensure that operations happen at predictable times and that data is sampled correctly. However, due to various factors, the clock signal may not arrive simultaneously at all elements, leading to clock skew.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b8ba98416b1a43e4cadccf6d4f24bef27035e9f0/day8/1.1.PNG"><br><br>

* In the given diagram, R2 and R3 do not receive the clock signal simultaneously. The clock signal is generated and becomes active only during the Clock Tree Synthesis (CTS) process. Prior to that, the clock operates as if it's in an ideal network. During the synthesis phase, logic optimization is performed with the assumption of an ideal clock network.<br><br>

* There are two main types of clock skew:<br><br>

	* **Positive Clock Skew**: In this case, the clock signal arrives later at some elements compared to others. Positive skew can occur due to variations in trace lengths on a printed circuit board (PCB), differences in gate delays, or other factors. It means that the data at elements with positive skew are sampled slightly later than at elements with negative skew.<br>
 	* Ts + Skew ≤ Tcq + Tcomb + Tst <br>

	* **Negative Clock Skew**: Conversely, negative clock skew occurs when the clock signal arrives earlier at some elements compared to others. This can also result from variations in trace lengths, gate delays, or other factors. Elements with negative skew sample data slightly earlier than those with positive skew.<br>
 	* Tc2q + Tcomb ≥ Thold + Tskew 

* Setup and Hold Time Violations: Clock skew can lead to setup time violations, where data may not be stable for the required setup time before a clock edge arrives at some elements but is stable for too long at others. Conversely, hold time violations can occur when data remains stable for too long after the clock edge.<br>

* **Clock jitter**: refers to the fluctuation or lack of precision in the timing of a clock signal, which leads to deviations of the actual clock signal edges from their expected, evenly spaced positions. Clock jitter can arise from various sources and can exert notable effects on the operational efficiency and dependability of digital systems.<br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/1.2.PNG">

* **Clock latency**: denotes the temporal delay or propagation delay encountered by a clock signal as it traverses from its origin to different points within an integrated circuit (IC) or digital system. It denotes the duration required for the clock signal to navigate through various components, interconnections, and buffers before it reaches its intended destination. <br>

	* **Source latency**:, also recognized as clock source latency, pertains to the delay or latency that arises from the clock generation circuitry at its inception, preceding the distribution of the clock signal to other segments of the integrated circuit (IC) or digital system. <br>

	* **Regarding network latency**: concerning a clock, it typically denotes the delay or temporal discrepancy that arises when transmitting a clock signal through a network or communication medium. <br>

</details>


<details>
 <summary>Lab on Advanced Constraints</summary>
We start the Design Compiles as follows: <br>
	
```ruby
csh
dc_shell
set target_library <path.db>
set link_library {* target_library}
```

* Reading the verilog file:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/1_verilog.png"><br><br>

* Expected GUI of the design is as shown:<br><br> 

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/21c0ce3660d128772bd4f316a4b2660beb8614f4/day8/1.3.PNG"><br><br>

* Compile the design using command: compile_ultra. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/2_compile_ultra.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/2_compile_ultra2.png"><br><br>

* Ports of the design with their direction are listed below: <br><br> 

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/3_ports_direction.png"><br><br>

* Command to get all the cells of the design: <br><br> 

```ruby
get_cells
```
* Hierarchial and physical cells: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/05296bdb13db556997158462c452490f79006d9e/day8/1.4.PNG"><br><br>

* Getting physical cells of the design with their reference name: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/963c63aafbb77d87da06b8ba40b013e99342cfd4/day8/1.5.PNG"><br><br>

* GUI of the design: <br><br>

<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/5_gui.png"><br><br>

* Enumerating all the nets, identifying their connected components, and specifying which components are actively transmitting signals on each connection: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/6_nets.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/7_nets_pins.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/7_nets_pins2.png"><br><br>

* In digital design a net can have only one driver. See the example in the figure given below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/1.6.PNG"><br><br>

* Getting all the pins of the design and listing them: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/23585bb65106044b6de2f77893b7b2e051013a53/day8/8_all_pins.png"><br><br>

* Getting all the clock pins of the design and listing them: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/9_all_pins_clock.png"><br><br>

* Identifying and listing the common elements or intersections between the set of input pins and clock pins in the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/10_all_pins_clock.png"><br><br>

* Obtaining a list of all the clock signals present in the design. Currently, there are no clock signals configured, as indicated in the figure below, which states, "No clocks have been established." <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/11_clocks_current_design.png"><br><br>

* Creating and removing the clock: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/12_create%20clock.png"><br><br>

* When analyzing the timing characteristics of the design in the absence of any defined clocks, the report indicates that the path is unconstrained. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/13_noclock_unconstrained_path.png"><br><br>

* After establishing the clock and conducting a timing report, the results are displayed as follows:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/14_clock_constrained_path.png"><br><br>

* Setting the clock latency, clock uncertainty, Setup delay and hold delay in the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/15_set_clock_par.png"><br><br>

* After setting the latency and uncertainty parameters the timing report comes out as follows: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/16_timing_after_par.png"><br><br>

* NOTE: In the provided figure, it's noticeable that after setting the clock latency and clock uncertainty, the slack has been adjusted from 9.55 to 9.05.

* Now if we want to see the timing report af a reg to reg path then:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f9f82c4e07afedf687642e3765fca2540a5e319b/day8/17_timing.png"><br><br>

* Input and output external delays are not subject to constraints. Below reports shows the same: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/18.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/19.png"><br><br>

* We model the input delay by commands: <br><br>

```ruby
set_input_delay -max 5 - clock [get_clocks MYCLK] [get_ports IN_A]

set_input_delay -max 5 - clock [get_clocks MYCLK] [get_ports IN_B]
```
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/20.png"><br><br>

* We have not yet restricted the minimum delay path. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/21.png"><br><br>

* The minimum delay path was constrained using command

```ruby
set_input_delay -min 1 - clock [get_clocks MYCLK] [get_ports IN_A]

set_input_delay -min 1 - clock [get_clocks MYCLK] [get_ports IN_B]
```

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/22.png"><br><br>

* Now we will add the input transition delay and output load to the design: <br><br>

```ruby
set_input_transition -max 0.3 [get_ports IN_A]

set_input_transition -max 0.3 [get_ports IN_B]

set_input_transition -min 0.1 [get_ports IN_A]

set_input_transition -min 0.1 [get_ports IN_B]
```

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/23.png"><br><br>

* Here we will add the output constraint delay: <br><br>

```ruby
set_output_delay -max 5 [get_clocks MYCLK] [get_ports OUT_Y]

set_output_delay -min 1 [get_clocks MYCLK][get_ports OUT_Y]
```

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/24.png"><br><br>

* The delay of the design is significantly influenced by the output load, and we will now incorporate the output load to observe how it impacts the delay. <br><br>

```ruby
set_load -max 0.3 [get_ports OUT_Y]
set_load -min 0.1 [get_ports OUT_Y]
```

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4712be044fb810b40c0f04ce7776213f8f4e5086/day8/25.png"><br><br>

```ruby
set_load -max 0.3 [get_ports OUT_Y]
set_load -min 0.3 [get_ports OUT_Y]
```
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/34c4ce3c66f6aae9bbcd8c6615c5425408259a41/day8/26.png"><br><br>


* In the context of Static Timing Analysis (STA), generated clocks are a critical concept. STA is a crucial step in digital design that helps ensure the proper operation of integrated circuits by verifying that all signals meet their timing requirements. Generated clocks are not actual physical clocks but are virtual clocks generated by the STA tool to represent specific signal transitions in the circuit.<br>

* Here are the types of generated clocks in STA:<br>

	* **Primary Clock (CLK)**: The primary clock is the main clock signal used to synchronize the operation of the entire digital circuit. It typically comes from an external source, such as a crystal oscillator or a clock generator. In STA, you'll often analyze how other signals within the design relate to this primary clock.<br>

	* **Derived Clocks**: Derived clocks are generated from the primary clock by applying clock dividers or multipliers. These clocks can have different frequencies and phases relative to the primary clock. STA tools analyze the timing relationships between these derived clocks and the primary clock to ensure proper operation.<br>

	* **Gated Clocks**: Gated clocks are generated by using logical gates to enable or disable the clock signal based on certain conditions or events. For example, a clock might be gated to enable it only when a specific condition is met. STA must account for the gating conditions to analyze the timing of signals associated with these clocks.<br>

	* **Internal Clocks**: These clocks are generated within the design and are not directly related to any external clock source. They are often used for various internal functions, such as synchronizing data transfers or controlling state machines. STA ensures that these internal clocks meet their timing requirements.<br>

	* **Generated Clocks for Asynchronous Interfaces**: In designs with asynchronous interfaces, there might be generated clocks that are not directly related to the primary clock domain. STA analyzes the timing of signals crossing these clock domains to prevent metastability issues and ensure proper data transfer.<br>

	**Virtual Clocks**: Virtual clocks are often used in advanced STA tools to represent specific signal transitions or events within the circuit. These clocks help analyze critical paths and ensure that signals meet their timing constraints at various points in the design.<br>

* In STA, you use these generated clock definitions to perform timing analysis, checking setup time, hold time, clock-to-q delays, and other timing constraints for the various signals in your design. Accurate clock definition and characterization are essential for a successful static timing analysis, ensuring that your digital circuit operates reliably and within specification.<br>

* Now we will create a generated clock in the design command for which are as follows: <br>

```ruby
create_generated_clock -name <name_of_generated_clock> - master <master_clock_name> -source [<master_clock_definition_point>] -div [<generated_clock_definition_point>]
```
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a9047d6b0e319a414bfe01af1a3942abc1ebe407/day8/44.png"><br><br>

* Timing report wrt generated clock: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a9047d6b0e319a414bfe01af1a3942abc1ebe407/day8/45.png"><br><br>

* Now we will constraint the generated clock by using the following commands: <br><br>

```ruby
set_clock_latency -max 1 [get_clocks MYGEN_CLK}
set_output_delay -max 5 [get_ports OUT_Y] -clock [get_clocks MYGEN_CLK]
set_output_delay -min 1 [get_ports OUT_Y] -clock [get_clocks MYGEN_CLK]
```

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a9047d6b0e319a414bfe01af1a3942abc1ebe407/day8/46.png"><br><br>

* We will incorporate a new clock signal named "out_div_clock" into our design. This new clock is essentially the inverse (inverted) of the primary clock signal used in the original design. This addition modifies our design as follows: <br><br>

```ruby
module lab8 circuit (input rst, input clk , input IN_A , input IN_B , output OUT_Y , output out_clk output reg out_div_clk)
reg REGA, REGB , REGC ;
always @ (posedge clk , posedge rst )
begin
	if(rst)
	begin
		REGA <= 1'b0 ;
		REGB <= 1'b0 ;
		REGC <= 1'b0 ;
		out_div_clk <= 1'b0 ;
	end
	else
	begin
		REGA= IN_A | IN_B;
		REGB<- IN_A ^ IN_B;
		REGC <= !(REGA & REGB) ;
		out_div_clk <= ~out_div_clk
	end
end

assign OUT_Y = ~REGC ;

assign out_clk = clk;

endmodule

```

* Now:<br>

```ruby
read_verilog <design-file_name>
create_clock -name MYCLK -per 10 [get_ports clk];
set_clock_latency -source 2 [get_clocks MYCLK];
set_clock_latency 1 [get_clocks MYCLK];
set_clock_uncertainty -setup 0.5 [get_clocks MYCLK];
set_clock_uncertainty -hold 0.1 [get_clocks MYCLK];
set_input_delay -max 4 -clock [get_clocks MYCLK] [get_ports IN_A];
set_input_delay -max 4 -clock [get_clocks MYCLK] [get_ports IN_B];
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports IN_A];
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports IN_B];
set_input_transition -max 0.4 [get_ports IN_A];
set_input_transition -max 0.4 [get_ports IN_B];
set_input_transition -min 0.1 [get_ports IN_A];
set_input_transition -min 0.1 [get_ports IN_B];
create_generated_clock -name MYGEN_CLK -master MYCLK -source [get_ports clk] -div 1 [get_ports out_clk];
create_generated_clock -name MYGEN_DIV_CLK -master MYCLK -source [get_ports clk] -div 2 [get_ports out_div_clk]; 
set_output_delay -max 4 -clock [get_clocks MYGEN_CLK] [get_ports OUT_Y];
set_output_delay -min 1 -clock [get_clocks MYGEN_CLK] [get_ports OUT_Y];
set_load -max 0.4 [get_ports OUT_Y];
set_load -min 0.1 [get_ports OUT_Y];
```

* To streamline the process and avoid repetitive tasks, we can create a script file that encompasses various parameters and characteristics related to the clocks, including clock definitions, clock latency, clock uncertainty, input delays, output delays, input transition times, generated clocks, and output load specifications. <br><br>

* Clock reports and port reports of the new design are shown in the images below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d68dc4cfdc416f69a68c46c7319c24b21226e587/day8/47.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d68dc4cfdc416f69a68c46c7319c24b21226e587/day8/48.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d68dc4cfdc416f69a68c46c7319c24b21226e587/day8/49.png"><br><br>




</details>


 <details>
 <summary>Lab on constraining input tp output path delay</summary><br>

* Insight on new commands:<br>
 
 ```ruby
all_inputs: This command lists or selects all the primary input (PI) ports in your design. Primary inputs are external signals or inputs to your digital circuit.

all_outputs: This command lists or selects all the primary output (PO) ports in your design. Primary outputs are external signals or outputs from your digital circuit.

all_clocks: This command lists or selects all the clock signals in your design. Clock signals are essential for synchronizing the operation of your digital circuit.

all_registers: This command lists or selects all the flip-flops or registers in your design. Registers are sequential elements that store data in your circuit.

all_registers -clock MYCLK: This command lists or selects all the flip-flops or registers in your design that are clocked by a specific clock signal named "MYCLK." It helps you identify registers associated with a particular clock domain.

all_fanout -from IN_A: This command lists or selects all the signals that are driven by (fanout from) a specific signal or net named "IN_A." It helps you identify all the downstream signals affected by a particular input.

all_fanout -flat -endpoints_only -from IN_A: This command lists or selects all the endpoint signals (e.g., flip-flops or output pins) that are directly driven by a specific signal "IN_A." It provides a list of the final destinations of a signal.

all_fanin -to REGA_reg/D: This command lists or selects all the signals that drive (fanin to) a specific data input of a register named "REGA_reg/D." It helps you identify all the sources feeding data into a particular register.

all_fanin -to REGA_reg/D -start: This command lists or selects all the signals that directly drive the data input of a register named "REGA_reg/D." The "-start" flag signifies that you want to identify only the immediate sources, excluding any further upstream logic.
```
* These commands are useful for querying and selecting various elements in your digital design, which can be beneficial for debugging, analysis, or applying specific optimizations during the synthesis process using dc_shell. Above commands in action are shown below:<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/32_commands.png"><br><br>


* Starting the lab to constraint the input to output path:

```ruby
csh
dc_shell
set target_library <path>
set link_library {* <path>}
read_verilog <file_path>
link
compile_ultra
```
* Design which we have loaded is:<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/27_verilog.png"><br><br>

* To source all the clocks which we created previously we will source the tickle script made previouly and will see the clocks generated: <br><br>

```ruby
sourch lab8_cons.tcl
```
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/28_all_clocks.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/29_report_timing.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/30_report_timing.png"><br><br>

* When we check the path to outpuz Z which is a direct input to output we see that it is uncontrained as shown in figure below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/31_report_timing_outz_unconstrained.png"><br><br>

* Now we will set the delay between all th einput to output paths.

```ruby
set_max_delay 0.1 -from [all_inputs] -to [get_port <output_port_name>]
```
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/33_set_op_delay_slack_violated.png"><br><br>

* Since we have not compiled the design it shows slack is violated. After compiling the design, it gets optimised and there slack violation is not seen. This is illustrated in the figure below:

```ruby
compilr_ultra
```
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/34_after_compileultra.png"><br><br>

* GUI of the optimised design is as shown: <br><br>

<img width="1400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dbc3cbdfa27fe9f700e399b99d36f1b5e158b2c1/day8/35_optimised.png"><br><br>

</details>

<details>
<summary> Using Virtual clock to constraint the input to output path</summary><br>

* Reset the design. <br><br>

* Making the virtual clock: <br>

```ruby
create_clock -name MYVCLK -per 10
```
* There is no source specified in for the virtual clock. Below figure shows ss for creating the virtual clock. <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/37_virtual_clock.png"><br><br>

* Information on all the clocks is given below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/38_virtualclock.png"><br><br>

* Since we have not compiled the design the path to OUT_Z is still unconstrained as shown: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/39_outz_unconstrained.png"><br><br>

* Now we will constraint the path to OUT_Z by using the virtual clock: <br>

```ruby
set_input_delay -max 5 [get_ports IN_C] -clock [get_clocks MYVCLK];
set_input_delay -max 5 [get_ports IN_D] -clock [get_clocks MYVCLK];
set_output_delay -max 4.9 [get_ports OUT_Z] -clock [get_clocks MYVCLK];
```
* We set the time period of the clock to 10 ns. Now out of 10 ns, 5 ns has gone into input delay and 4.9 ns is used up by the output path. So out of 10ns only 100 ps is left for the combinational delay of the XOR gate between IN_A, IN_C to OUT_Z. In the below we see that XOR gate needs 120 ps, but only 100 ps is available for the combination logic, hence slack is violated.

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/40_set_delays_slack_violate.png"><br><br>

* Now we will compile the design to optimise to fix slack violation as shown:<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/41_set_delays_slack_optimised.png"><br><br>

* It is noted that the input and the output delays are with respect to virtual clock now as shown:<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f6a2f53027c822123ffba3492a79b1108a823732/day8/42_verbode_ip_op_myvclk.png"><br><br>

 </details>

## Day-9-Optimization



<details>
<summary>Introduction</summary><br>

**GOALS** <br>

* Optimazation til the cost is met. <br>
* Improve the operational speed of the IC by minimizing delays, optimizing critical paths, and ensuring that the design meets specified timing requirements. <br>
* To prolong the battery life in portable devices and decrease power dissipation in data centers, efforts are directed at minimizing dynamic power consumption. Additionally, reducing static power, often referred to as leakage power, is crucial for decreasing the overall power usage during idle or standby states of the integrated circuit.
* Over optimization of one goal will harm other goals. <br>
* Goals for synthesis: <br>
	* Meet Timing <br>
 	* Meet Area <br>
  	* Meet Power <br>

**COMBINATION LOGIC OPTIMIZATION** <br>

* Combination logic optimization in VLSI (Very Large Scale Integration) design refers to the process of improving the performance, area efficiency, and power consumption of combinational logic circuits. Combinational logic is the part of a digital circuit that performs Boolean operations on inputs to produce outputs without any internal storage elements like flip-flops. Here are some key aspects of combination logic optimization: <br>

* **Logic Minimization**: One of the fundamental steps in combination logic optimization is reducing the number of logic gates and levels in the circuit. This is typically achieved through techniques like Boolean algebra simplification, Karnaugh maps, and Quine-McCluskey minimization. Fewer gates and levels lead to faster operation and reduced power consumption. <br>

* **Gate Selection**: Choosing the appropriate types of logic gates (AND, OR, XOR, etc.) based on the specific logic functions can have a significant impact on optimization. Some gates may be more area-efficient or have lower power consumption for specific functions. <br>

**Constant Propagation**: <br><br>

* Constant propagation optimization is a technique used in VLSI (Very Large Scale Integration) design to improve the efficiency and performance of digital circuits by identifying and replacing portions of the design with constant values or expressions. This optimization can lead to reduced logic complexity, better power efficiency, and improved timing. <br><br>

Let us consider an exression: Y = (A.B + C)<br>
 
The expected synthesis of the above function is as shown in figure below:<br><br>
 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4607.jpeg"><br>

 
In the original expression one AND gate and one NOR gate is used.<br>
 If A is grounded in the above expression then: Y = C'<br>
 	Now only one NOT gate is used.<br>
  
After optimisation we get only a NOT gate as shown below:<br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4608.jpeg"><br>
  
So, both area and speed of operation is improved.<br>

**Boolean Logic Optimization**: <br>

Let us consider an exression: Y = a ? (b ? c:(c ? a:0)):(!c) <br>

 The expected synthesis of the above function is as shown in figure below:<br><br>
 **<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>**
 
Y = a'c' + a.(b'ac + bc) <br>
  = a'c' + ab'c + abc <br>
  = a'c' + ac <br>
  = a ex_nor b

The optimised design will only contain a ex-nor gate, instead of 3 mux. <br>

**Resource Sharing**:<br>

Consider the expression: assign y = sel ? (a * b) : (c * d). This can be implemented in two ways as shown in the figure below: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/resourcesharing.png"><br><br>

* In the design on the left there are 2 multipliers and oneMUX while on the RHS we have one Multiplier and 2 MUX, cleary design on the right will have comparativeli less area, power and delay as compared to one the RHS. This was possible because the operations a*b and c*d do not occur at the same time, instead they only one of them occur at a time. o only one multiplier is =need to perform the task hence the muntiplier is shared depending on the "sel" input.<br>

**Logic Sharing**:<br>

```ruby
assign y = a & b & c;
assign y = (a & b) | c;
```
Above two statements can be implemented as shown in the figure below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/logic-sharing.png"><br><br>

On the right side of the image, output a*b of the AND is shared and hence the need of a 3 input AND gate is eliminated.

**Balanced vs Prefenrential Implementation**: <br>

```ruby
assign y = a & b & c & d & e;
```

Assuming 4 and 5 input AND gates, above statement can be implemented as shown in figure below: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/balanced_preferential.png"><br><br>

* The right side implementaion is preffered when: <br>

	* e to y path is very tight i.e. 'e' is a late arriving signal.<br>
 	* Say a to y, b to y, c to y, d to y paths are having sufficient time margin to meet the contraint, then e to y path can be given prefference. <br>
  	* Which design is preffered is decided why the contraints file. <br>


**SEQUENTIAL LOGIC OPTIMIZATION**

**Constant Propagation**<br><br>
Example:<br>
Consider the following verilog code: <br><br>

```ruby
always@ (posedge clk, posedge rst)
begin
if(rst)
q <= 1;
else 
q <= 1;
end
```

Graphical reperesentation of above example:<br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con2_gui.PNG"><br><br>

Here there are no flops inferred because output always remains high irrespective of the rst signal

**Optimisation of the unloaded outputs**:<br><br>
Consider the following counter example as shown in fig below: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_counter1_verilog.PNG"><br><br>
Here we can clearly see that only th emsb of the counter is used for the output, rest 2 bits are unused. Now let for a counter:<br><br>
<img width="250" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/77849ff7b577447e818144a1686bbe129eb72ef3/Day3/table.PNG"><br><br>
Here count[0] is toggling for every clock cycle so the circuit can be optimised. In GUI we can clearty see that only the inverter cell is used to implement the design, this also shown below<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_count1_gui.PNG"><br><br>
</details>


<details> 
<summary> Labs on Combinational Logic Optimization </summary> <br><br>

<details> 
<summary> Example1 : opt_check </summary> <br>

Consider the verilog code: <br>

```ruby
module opt_check (input a , input b , input c , output y1, output y2);
wire a1;
assign y1 = a?b:0;
assign y2 = ~((a1 & b) | c);
assign a1 = 1'b0;
endmodule
```

* Expected synthesis of the design is as shown below : <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/optcheck.png"><br><br>

Now if we consider the expression: <br>
y1 = a ? b:0 <br>
y1 = a.b + a'.0 <br>
y1 = a.b <br><br>

Similarly <br>
y2 = ~((a1 & b) | c) <br>
y2 = c' <br><br>

Expected Optimized Design: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/optcheck1.png"><br><br>


* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog opt_check.v
```
* Timing report of the design is as follows, we have not yet linked and compiled the design: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/1_read_timing.png"><br><br>

* Now

```ruby
link
compile
```
* Timing report after compiling the design: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/2_timing_aftercompile.png"><br><br>

In the timing report above, only an ANd cell is present in the path to y1. In the path to y2 we see only an inverter cell with 'c' as input, this is shown in GUI of the design in the figure below.

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/4_GUI.png"><br><br>

</details>

<details> 
<summary> Example2 : opt_check2 </summary> <br>

Consider the verilog code: <br>

```ruby
module opt_check2 (input a , input b , output y);
	assign y = a?1:b;
endmodule

```

* Expected synthesis of the design will contain a 2:1 mux with 'a' as select line, i0 = b and i1 = 1. <br><br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4605.jpeg"><br><br>


Now if we consider the expression: <br>
y = a ? 1:b <br>
y1 = a.1 + a'.b <br>
y1 = a + b <br><br>


* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog opt_check2.v
link
compile
```
* Timing report of the design is as follows: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/5_optcheck2_timinng_post_compile.png"><br>

In the timing report above, only an OR cell is present in the path to y, with a and b as inputs. Same is depicted in the GUI of the design shown below: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/6_GUI.png"><br>

</details>

<details> 
<summary> Example 3 : opt_check3 </summary> <br>

Consider the verilog code: <br>

```ruby
module opt_check3 (input a , input b, input c , output y);
	assign y = a?(c?b:0):0;
endmodule


```

* Expected synthesis of the design is as shown below : <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/opt_check3.png"><br><br>

Now if we consider the expression: <br>
y = a ? (c.b):0 <br>
y = a.b.c <br>


* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog opt_check3.v
link
compile
```
* Timing report of the design is as follows: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/7_optcheck3_timinng_post_compile.png"><br>

In the timing report above, only an 3 input AND cell is present in the path to y, with a, b and c as inputs. Same is depicted in the GUI of the design shown below: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/8_GUI.png"><br>

</details>
	
<details> 
<summary> Example 4 : opt_check4 </summary> <br>

Consider the verilog code: <br>

```ruby
module opt_check4 (input a , input b , input c , output y);
 assign y = a?(b?(a & c ):c):(!c);
 endmodule
```

* Expected synthesis of the design is as shown below : <br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4606.jpeg"><br><br>

Now if we consider the expression: <br>
y = a?(b?(a & c ):c):(!c)<br>
y = a ? (a.b.c + b'.c) : c' <br>
y = a.b.c + a.b'.c + a'c' <br>
y = a exnor c<br>


* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog opt_check4.v
link
compile
```
* Timing report of the design is as follows: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/9_optcheck4_timinng_post_compile.png"><br><br>

In the timing report above, only a X-NOR cell is present in the path to y, with a and c as inputs. Same is depicted in the GUI of the design shown below: <br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/13_GUI.png"><br><br>

* Now we will contraint the path from input to output as and check the timing vilation, if any. This is depicted in the image below.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/10_set_delay_timing_violate.png"><br><br>

* In the above image we see that slack is getting violated by 20 ps, as we constrainted the input to output path to 60 ps, and at the same time EXNOR gate requires 80 ps alone, hence slack is violated by 20 ps.<br>
* Now we will change the EXNOR gate with some other exnor gate. Timing report after using the new EXNOR gate is shown below is shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/11_change_xnor_timing_violate_up.png"><br><br>

* Here timimg violation increases from 20 ps to 50 ps because new EXNOR gate have 110 ps delay.<br>
* Lets try to optimise the design using compule_ultra. Timing report post com_ultra is shown below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/12_timing_after_compile.png"><br><br>

* Slack violation has come down to 20 ps again, as tool optimized the design and picked up the previos xnor gate which was used.

</details>

<details>
<summary> Example 5 : Resource sharing </summary> <br>

Consider the verilog code: <br>

```ruby
module resource_sharing_mult_check (input [3:0] a , input [3:0] b, input [3:0] c , input [3:0] d, output [7:0] y  , input sel);
	assign y = sel ? (a*b) : (c*d);
endmodule
```

* Expected synthesis of the design after resource sharing is as shown below : <br>

<img width="500" alt="[icc2_shell" src="hhttps://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/multiplie.png"><br><br>

Now if we consider the expression y = sel ? (a*b) : (c*d), here depending on the value of sel either a*b or c*d takes place. Both the operations never take place toghether. So we can optimise the design as follows: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br><br>

* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog resource_sharing_mult_check.v
link
compile_ultra
```
* Screenshot for ```read_verilog``` and ```compile_ultra``` is shown below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/14_readv_resourcesharing_compile.png"><br>

* Now lets write the ddc file and see the GUI of the design: <br>

```ruby
write -f ddc -out resource_sharing_mult_check1.ddc
```
GUI is shown below: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/15_GUI.png"><br><br>

In GUI we have multiplexer as shown: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/16_GUI_mux.png"><br><br>

In the GUI we can see the two Multiplexer and a multiplier, which is what the optimised design looks like with no constraints.<br>

* Area report of the design with no constraints is as shown below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/17_report_area.png"><br><br>

* Timing report of the design with no constraints is as shown: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/18_timing_pastcompile.png"><br><br>

* Setting the max delay from all inputs to all outputs paths to 2.5 ns and checking the timing report we see that slack is getting violated. This is shown in the design below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/19_set_delay_timing_violate.png"><br><br>

* Now we will optimise the design by ```compile_ultra```. Timing report of the design after optimization is as shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/20_timing_post_compile.png"><br><br>

* Now slack is met. Area report of the design after constraining the input to ouput paths is shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/21_area_report_2.png"><br><br>

* In the expected design we can see that paths from a, b, c and d to y have the same delay. Now if we tighten the paht from sel to y lets see what happens. This is shown in figure below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/22_sel_delay_timing_report.png"><br><br>

* In the above image we see that slack is getting violated by a huge time. We will now optimise the design by using ```compile_ultra``` and then check the timing report. This is shown in the image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/23_timing_post_compile.png"><br><br>

* Area report with constrained sel to output y is shown below: <br><br> 

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/25_area_report_3.png"><br><br>

* Here it is seen that the area has almost tripled, it shows that the instead of one multiplier, two multipliers are used. This can also be seen in the GUI of the design below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/24_GUI.png"><br><br>

* Now we will constraint the are using ```set_max_area 800```. Timing report after constraining the area is shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/26_timing_report_postareaconstraint.png"><br><br>

* Area report after contraining the are is as shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/27_area_report4.png"><br><br>

</details>

</details>


<details> 
<summary> Labs on Sequential Logic Optimization </summary> <br>

**Tie Cells**<br>

* To prevent potential damage to the delicate oxide layer of the MOSFETs in CMOS logic circuits, tie cells are essential when providing logic zero or one inputs to a flip-flop. The presence of tie cells safeguards against any fluctuations or disturbances at the gate of the MOSFET, which could otherwise compromise the integrity of the oxide layer, leading to adverse consequences for the chip's functionality and reliability.<br>

Tie cell description is givem in the images below:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/tiecell1.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6a7ad638a52dcd5418a8fb2b54034b661983d9b1/day9/tiecell2.png"><br><br>

* Other uses:<br>
  
	* Connectivity and Routing
	* Density and Area Utilization
	* Electromigration and Current Handling
	* Doping and Isolation
	* Manufacturing and Process Variation
	* ESD Protection
	* Well Tapping

<details>
<summary> Example 1 : dff_cont1 </summary> <br>
	
Consider the verilog code: <br>

```ruby
module dff_const1(input clk, input reset, output reg q);
always @(posedge clk, posedge reset)
begin
	if(reset)
		q <= 1'b0;
	else
		q <= 1'b1;
end

endmodule
```

* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const1.v
link
compile
```

* Cells of the design are shown in the figure below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/28_seq_dff_const1_cells.png"><br>

* Write the ddc file to view the GUI of the design: <br>

```ruby
write -f ddc -out dff-const1.ddc
```

* In the GUI of the design we can clearly see the Tie cells used to provice the logic 1. GUI of the design is as shown below: <br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/29_dff_c1_GUI.png"><br><br>

</details>

<details>
<summary> Example 2 : dff_cont2 </summary> <br>
	
Consider the verilog code: <br>

```ruby
module dff_const2(input clk, input reset, output reg q);
always @(posedge clk, posedge reset)
begin
	if(reset)
		q <= 1'b1;
	else
		q <= 1'b1;
end

endmodule
```

* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const2.v
link
compile
```

* Write the ddc file to view the GUI of the design: <br>

```ruby
write -f ddc -out dff-const2.ddc
```

* In the GUI of the design we can clearly see the Tie cells used to provice the logic 1. GUI of the design is as shown below: <br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/30_dff_c2_GUI.png"><br><br>

* We employ a command to prevent optimization from taking place ```set compile_seqmap_propagate_constants false```. Same is shown in the figure below.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/31_dff_c2_restrict_optimisation.png"><br><br>

* The graphical user interface (GUI) for the constrained customization design appears as depicted below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/32_dff_c2_restrict_optimisation.png"><br><br>

</details>


<details>
<summary> Example 3 : dff_cont3 </summary> <br>
	
Consider the verilog code: <br>

```ruby
module dff_const3(input clk, input reset, output reg q);
reg q1;

always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
		q <= 1'b1;
		q1 <= 1'b0;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule
```

* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const3.v
link
compile
write -f ddc -out dff_const3.ddc
```

* GUI of the design is as shown below: <br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/33_dff_c3_GUI.png"><br><br>

</details>


<details>
<summary> Example 4 : dff_cont4 </summary> <br>
	
Consider the verilog code: <br>

```ruby
module dff_const4(input clk, input reset, output reg q);
reg q1;

always @(posedge clk, posedge reset)
begin
	if(reset)
	begin
		q <= 1'b1;
		q1 <= 1'b1;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule
```

* Expected synthesis of the design is as shown below : <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br><br>


* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const4.v
link
compile
write -f ddc -out dff_const4.ddc
```

* GUI of the optimised design design is as shown below: <br><br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/34_dff_c4_GUI_unconstrained.png"><br><br>

* We employ a command to prevent optimization from taking place ```set compile_seqmap_propagate_constants false```. The graphical user interface (GUI) for the constrained customization design appears as depicted below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/34_dff_c5_GUI_constrained.png"><br><br>

</details>

</details>

<details>
<summary> Boundary Optimization </summary> <br>

Boundary optimization" typically refers to optimizing the boundary of a digital design, often for power, performance, or area (PPA) improvements. It involves optimizing the input and output (I/O) interfaces and the interface between digital blocks.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d32cf1d18cae59897643dca48b3fc447b94de244/day9/boundary_1.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d32cf1d18cae59897643dca48b3fc447b94de244/day9/boundary_2.png"><br><br>
	
Consider the verilog code: <br>

```ruby
module check_boundary (input clk , input res , input [3:0] val_in , output reg [3:0] val_out);
wire en;
internal_module u_im (.clk(clk) , .res(res) , .cnt_roll(en));

always @ (posedge clk , posedge res)
begin
	if(res)
		val_out <= 4'b0;
	else if(en)
		val_out <= val_in;	
end
endmodule

module internal_module (input clk , input res , output cnt_roll);
reg [2:0] cnt;

always @(posedge clk , posedge res)
begin
	if(res)
		cnt <= 3'b0;
	else
		cnt <= cnt + 1;
end

assign cnt_roll = (cnt == 3'b111);

endmodule
```

* Expected synthesis of the design is as shown below : <br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/boundary_3.png"><br>

* Reading the design as shown in image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/35_boundary_read.png"><br><br>

* Compiling the design as shown in image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/36_boundary_compile_ultra.png"><br><br>

* Cells of the design are shown in image below: <br><br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/37_boundary_cell_nohier.png"><br><br>

* GUI of the design design with no hierarchy is as shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/38_boundary_GUI_nohier.png"><br><br>

* We employ a command to prevent boundary optimization from taking place ```set_boundary_optimization u_im false```. u-im is the sub module in the design. The GUI of the design with intact hierarchy is shown in the images below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/39_boundary_cells_hier_set_no_hier_in_gui.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/40_compile_ultra.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/41_boundary_GUI_withhier.png"><br><br>

</details>

<details>
<summary> Register Retiming </summary> <br>

Register retiming is a technique used to optimize the performance of digital circuits by rearranging the registers in the circuit without changing its functionality. The primary goal of register retiming is to minimize the critical path delay, which is the longest path in the circuit from an input to an output.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/78ef74baa74f227c15b6a34610e241e443cf0f58/day9/reg_time1.png"><br><br>

In the aforementioned example, a significant positive slack of 48 ns is observed, indicating that the maximum achievable frequency for the design is 20 MHz. However, by breaking down the large logic blocks into smaller portions, we can enhance the design's performance. Currently, the tool doesn't evenly distribute the logic; it optimizes the design as much as possible. Thus, if the logic is distributed as illustrated, the critical path delay will reduce to 20 ns, resulting in an improved design performance capable of operating at 50 MHz. <br><br>
	
Consider the verilog code: <br>

```ruby
module check_reg_retime (input clk , input [3:0] a, input [3:0] b , output [7:0] c , input reset);

wire [7:0] mult;
assign mult = a * b;
reg [7:0] q1;
reg [7:0] q2;
reg [7:0] q3;

always @ (posedge clk , posedge reset)
begin
	if(reset)
	begin
		q1 <= 8'b0;
		q2 <= 8'b0;
		q3 <= 8'b0;
	end
	else
	begin
		q1 <= mult;
		q2 <= q1;
		q3 <= q2;
	end
end
assign c = q3;

endmodule
```

* Expected synthesis of the design is as shown below : <br>

<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/regtime2.png"><br>

* Reading the design as shown in image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/42_retime_read.png"><br><br>

* Compiling the design as shown in image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/43_retime_compile.png"><br><br>

* Timing report of the design shows that the path is uncontrained, as shown in image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/44_retime_timing_pastclock.png"><br><br>

* Now to add the clocks, input delays, output delays and other constraints, we will add a tcl file shown below: <br><br>

```ruby
#create_the_clocks
create_clock -name myclk -per 2 [get_ports clk];
#model the practicalities of the clock
set_clock_uncertainty -setup 0.3 [get_clocks myclk];
set_clock_uncertainty -hold 0.1 [get_clocks myclk];

#model IO delays
set_input_delay -max 1.2 -clock [get_clocks myclk] [all_inputs];
set_output_delay -max 1.2 -clock [get_clocks myclk] [all_outputs];

set_input_delay -min 0.5 -clock [get_clocks myclk] [all_inputs];
set_output_delay -min 0.5 -clock [get_clocks myclk] [all_outputs];

set_input_transition -max 0.2 [all_inputs];
set_input_transition -min 0.05 [all_inputs];

set_load -max 0.2 [all_outputs];
set_load -min 0.05 [all_outputs];
```

* Now we will source the tickle file and report the clocks as shown in the image below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/45_retime_clocks.png"><br><br>

* Timing report of the design without ```retime``` is shown below, it shows that slack violation has occured: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/46_retime_timig_report.png"><br><br>

* Now we will optimise the design with ```retime``` as shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/47_retime_compile_ultra_retime.png"><br><br>

* Timing report after the ```retime``` optimization is shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/48_retime_compile_ultra_post_compile.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/49_retime_timing_report_input_post_compile.png"><br><br>

While there is still a slack violation, it's worth noting that when compared to the previous timing report, the situation has improved significantly. <br>


</details>

<details>

<summary> Isolate Output Ports </summary><br>

In VLSI (Very Large Scale Integration) design, "Isolate Output Ports" optimization refers to a technique where designers aim to optimize the routing and layout of output ports of digital circuits to achieve better performance, power efficiency, and signal integrity. This optimization is particularly important in complex integrated circuits where there are numerous output ports. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f019af42ef0772aaf2b386c870c83975c06ff582/day9/Isolate1.png"><br><br>

* When a variable load is connected to be driven by Flip Flop 1, there's a risk of causing fluctuations in the internal 'path 1' logic. These fluctuations can lead to incorrect outputs from the combinational logic downstream. To mitigate this issue, we can insert a buffer between Flip Flop 1 and the output variable load. This buffer will drive the output load, ensuring that the fluctuations in the 'path 1' logic do not affect the output. Additionally, this buffering approach can also contribute to a reduction in the delay introduced by Flip Flop 1. <br><br>

Consider the verilog code: <br>

```ruby
module check_boundary (input clk , input res , input [3:0] val_in , output reg [3:0] val_out);
wire en;
internal_module u_im (.clk(clk) , .res(res) , .cnt_roll(en));

always @ (posedge clk , posedge res)
begin
	if(res)
		val_out <= 4'b0;
	else if(en)
		val_out <= val_in;	
end
endmodule

module internal_module (input clk , input res , output cnt_roll);
reg [2:0] cnt;

always @(posedge clk , posedge res)
begin
	if(res)
		cnt <= 3'b0;
	else
		cnt <= cnt + 1;
end

assign cnt_roll = (cnt == 3'b111);

endmodule
```

* Screenshot for reading the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/50_isolate_read.png"><br><br>

* Screenshot for link and compile the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/51_isolate_link_compile.png"><br><br>

* In this design we get output as a feedback, as shown in the image below: <br>

<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/52_isolate_GUI_without_isolate.png"><br>

* Screenshot for creating clock, setting input - output delays and amx load: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/53_isolate_set_clock_delay_load.png"><br><br>

* Timing report before isolating the output port.: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/54_isolate_timing_report_past_isolate.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/55_isolate_timing_report_toout_past_isolate.png"><br><br>

Here we see that val_out_reg[0]/Q have a large output load capacitanc, due which it have a large delay also.

* Now we will isolate the ports by command ```set_isolate_ports -type buffer [all_outputs]. This is shown in the image below:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/56_isolate_isolating_ports.png"><br><br>

* Compiling the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/57_isolate_isolating_ports_compile.png"><br><br>

* Timing reports after isolating the ports: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/58_isolate_timing_report_post_isolate.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/59_isolate_timing_report_toout_post_isolate.png"><br><br>

In this observation, it's evident that the load capacitance for val_out_reg[0]/Q has been significantly reduced, leading to a substantial improvement in the delay of the register.<br><br>

* In the isolated port GUI of the design we can see the output load is driven by the buffers, and the feedback path logic becomes much more stable. GUI of the design is shown below: <br><br>

<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c69e00a8c7cd03ff6445cdf08edd13e5fb13ab4b/day9/60_isolate_GUI_post_isolate.png"><br><br>

</details>


<details>

<summary>Multicycle Path</summary><br>

* In VLSI design, multicycle paths are a critical concept in managing timing constraints within digital circuits. Unlike single-cycle paths, where a signal must traverse its path and stabilize within a single clock cycle, multicycle paths offer more flexibility. These paths allow signals to take multiple clock cycles to propagate from a source register (usually a flip-flop) to a destination register. This extended propagation time can serve various purposes in the design process. <br><br>

* Multicycle paths are encountered in digital designs when specific timing requirements or constraints permit longer propagation delays. These paths can be strategically used to achieve specific functionalities, optimize critical paths, or accommodate variations in clocking schemes.<br><br>

* For a single-cycle path, the setup check occurs at the subsequent clock edge following the launch edge of the flip-flop, and the hold check is performed at the same edge of the flop. Hold checks always occur just before setup checks in a single-cycle path.<br><br>

* In a half-cycle path, the setup check is done at the subsequent falling edge of the flip-flop, while the hold check is performed at the preceding falling edge of the flop. Half-cycle paths have a stringent setup requirement and a more relaxed hold constraint compared to single-cycle paths.<br><br>

* In the case of a multicycle path, designers can utilize specialized tools and constraints. The "-setup" switch specifies the number of clock cycles after the launch edge when the setup check should be performed, allowing for flexibility in setup time. Conversely, the "-hold" switch specifies the number of clock cycles the launch edge advances before checking the hold requirement with the capture edge.<br><br>

Consider the verilog code: <br>

```ruby
module mcp_check (input clk , input res  , input [7:0] a , input [7:0] b, input en , output reg [15:0] prod);

reg valid; 

always @ (posedge clk , posedge res)
begin
	if(res)
		valid <= 1'b0;
	else 
		valid <= en;
end



always @ (posedge clk , posedge res)
begin
	if(res)
		prod <= 16'b0;
	else if (valid)
		prod <= a * b;
end

endmodule
```

* Expected GUI of the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/mcp1.png"><br><br>

* Screenshot for reading the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/61_mcp_compile_link_compile.png"><br><br>

* Screenshot for link and compile the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/61_mcp_compile_link_compile.png"><br><br>

* Now to add the clocks, input delays, output delays and other constraints, we will add a tcl file shown below: <br><br>

```ruby
#create the clock
create_clock -per 4 -name myclk [get_ports clk];

#model the practicality of the clock
set_clock_uncertainty -setup 0.5 [get_clocks myclk];
set_clock_uncertainty -hold 0.2 [get_clocks myclk];

#Annotate the IO Delays
set_input_delay -max 3.5 -clock myclk [all_inputs];
set_input_delay -min 0.5 -clock myclk [all_inputs];

set_output_delay -max 2.5 -clock myclk [all_outputs];
set_output_delay -min 0.5 -clock myclk [all_outputs];

#Model the practicalities of the IOs
set_input_transition -max 0.3 [all_inputs];
set_input_transition -min 0.05 [all_inputs];

set_load -max 0.4 [all_outputs];
set_load -min 0.05 [all_outputs];
```

* Screenshot of sourcing the script file and checking the timing: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/62_mcp_source_timing_report.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/63_mcp_source_timing_report.png"><br><br>

* Screenshot of the timing report after optimizing the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/64_timing_report_post_-compile.png"><br><br>

* Screenshot of setting up the multicycle path:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/65_setmcp_timing_report_post_-compile.png"><br><br>

* Timing report after setting up the multicycle path: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/66_setmcp_timing_report_post_change_tcl.png"><br><br>

* Changing the constraint file: <br><br>

```ruby
#create the clock
create_clock -per 4 -name myclk [get_ports clk];

#model the practicality of the clock
set_clock_uncertainty -setup 0.5 [get_clocks myclk];
set_clock_uncertainty -hold 0.2 [get_clocks myclk];

#Annotate the IO Delays
set_input_delay -max 3.0 -clock myclk [all_inputs];
set_input_delay -min 0.5 -clock myclk [all_inputs];

set_output_delay -max 2.5 -clock myclk [all_outputs];
set_output_delay -min 0.5 -clock myclk [all_outputs];

#Model the practicalities of the IOs
set_input_transition -max 0.3 [all_inputs];
set_input_transition -min 0.05 [all_inputs];

set_load -max 0.4 [all_outputs];
set_load -min 0.05 [all_outputs];
```

* Timing reports to pro_reg[*]/D: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/67_timing_report_to_prod_reg.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/68_timing_report_to_prod_reg.png"><br><br>

* Timing reports to pro_reg[*]/D from all_inputs: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/69_timing_report_input_op.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/70_timing_report_input_op.png"><br><br>

* Hold timing report: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/71_timing_delay_min.png"><br><br>

This issue is significant as it's reporting a timing violation spanning from '0 ns' to '4 ns'. The problem lies in the hold check, which should ideally be a zero-cycle check. However, the tool is currently performing a hold check over the entire one-cycle duration of the input path.<br><br>

* Constraining the multicycle path for the hold time and checking the timing report: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/72_timing_hold_delay_min.png"><br><br>

* Timing reports to pro_reg[*]/D from all_inputs: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/73_timing_delay_min_from_inputs.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/74_timing_report_inp_cap.png"><br><br>

The path from the input to pro_reg has now been designated as a zero-cycle path, eliminating any slack violations. However, it's important to note that the load capacitance of pro__reg[10] stands at a notably high value of 403 pF. This substantial load capacitance contributes to a significant delay, prompting us to consider isolation as a means to enhance the delay profile. <br><br>

* Screenshot of isolating the ports and compiling it is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/75_isolate_compile.png"><br><br>

* Timing report after isolating the output port:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e88898dba8f40f70783feae5165583c7ce206ec/day9/76_timing_report_last.png"><br><br>


</details>

<details>
<summary>False Paths </summary><br>

In the context of Very Large Scale Integration (VLSI) design, "false paths" refer to paths within a digital circuit that do not have a meaningful or functional impact on the circuit's operation, but they can still cause timing analysis complications. False paths can be a result of optimizations, clock domains, or other design considerations. Here's a more detailed explanation:<br><br>

* **Optimizations**: VLSI designers often use various optimization techniques to improve the performance of their circuits. These optimizations can include removing redundant logic gates, simplifying complex paths, or introducing pipeline stages. During these optimizations, certain paths may become "false" because they are no longer part of the critical path that determines the circuit's maximum operating frequency.<br><br>

* **Clock Domains**: In complex VLSI designs, multiple clock domains may be used to control different parts of the circuit. Data may need to transfer between these clock domains using synchronizers or other techniques. Paths that cross clock domains may be considered false paths because they do not follow the normal timing constraints associated with a single clock domain.<br><br>

* **Conditional Logic**: Sometimes, conditional logic is used to select different paths within a circuit based on specific conditions. When certain conditions are met, some paths become inactive (false paths) while others become active. These inactive paths are considered false paths because they are not functional under the current conditions.<br><br>

False paths can pose challenges during the timing analysis of a VLSI design because they can confuse the timing tools. Timing analysis tools aim to identify and optimize critical paths to ensure proper circuit operation. False paths, if not correctly identified and annotated, can mislead these tools and potentially lead to suboptimal or incorrect results.<br><br>

To handle false paths effectively in VLSI design:<br>

* **Annotation**: Designers need to annotate false paths in their design description or use constraints to explicitly inform the timing analysis tools that certain paths are false. This prevents unnecessary optimization attempts on these paths.<br><br>

* **Timing Constraints**: Timing constraints are essential in VLSI design to specify setup and hold times, clock frequencies, and other timing requirements. Designers must accurately specify these constraints, considering the presence of false paths.<br><br>

* **Clock Domain Crossing Analysis**: For paths that cross clock domains, specialized techniques and synchronizers are used to ensure data integrity and timing correctness when signals transition between different clock domains.<br><br>

</details>






## Day-10-QOR



<details>
<summary>Introduction</summary><br>

* Quality assurance processes in Very Large Scale Integration (VLSI) design and manufacturing play a pivotal role in ensuring the functionality and reliability of integrated circuits (ICs). These quality checks are integral and span multiple phases of both design and manufacturing, serving to detect and rectify potential issues. The VLSI quality assessment is an ongoing and iterative procedure, ensuring that integrated circuits meet high standards of performance, reliability, and manufacturability. To facilitate these checks, advanced simulation and verification tools are frequently employed, streamlining the process. <br><br>

* Within the realm of digital electronics and integrated circuits, propagation delay signifies the time required for an electrical signal to traverse from the input of a digital logic gate or circuit to its output. This parameter holds immense significance in digital design, influencing the speed and overall performance of the circuit. Typically quantified in units of time, such as nanoseconds (ns) or picoseconds (ps), propagation delay hinges on multiple factors, encompassing the specific technology utilized, the length of connecting wires, and the intricacy of the circuit.<br><br>

* **Rising edge propagation delay**, in the context of digital electronics and integrated circuits, refers to the time it takes for an electrical signal to transition from a low voltage level (logic 0) to a high voltage level (logic 1) at the output of a digital logic gate or circuit, following a rising edge (transition from 0 to 1) at the input. <br><br>

* **Falling edge propagation delay**, in the context of digital electronics and integrated circuits, refers to the time it takes for an electrical signal to transition from a high voltage level (logic 1) to a low voltage level (logic 0) at the output of a digital logic gate or circuit, following a falling edge (transition from 1 to 0) at the input. <br><br>

* The difference between rise to fall delay and fall to rise delay in digital circuits is primarily due to the mobility of charge carriers, namely electrons and holes, within semiconductor materials. To understand this difference, it's important to delve into the behavior of these charge carriers in a little more detail: <br><br>

	* Electron Mobility: In semiconductor materials like silicon, electrons are the primary charge carriers responsible for current flow. Electrons have a higher mobility, which means they can move more quickly through the semiconductor lattice when subjected to an electric field. As a result, when transitioning from a low voltage (logic 0) to a high voltage (logic 1), which corresponds to a falling edge, electrons move relatively faster. This results in a shorter rise to fall delay. <br><br>

	* Hole Mobility: In addition to electrons, semiconductor materials also have "holes," which are effectively vacancies left behind when electrons move. These holes can also carry current, but they have lower mobility compared to electrons. When transitioning from a high voltage (logic 1) to a low voltage (logic 0), which corresponds to a rising edge, holes move relatively slower. This leads to a longer fall to rise delay compared to the rise to fall delay. <br><br>

 <img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/08ad468fc0de6054b6aa0336d7dc096ca248773b/day10/nand_gate.jpg"><br><br>

 * In the presented scenario, when both A and B are in the logic 0 state, the outcome is a logic 1 at output Y. This implies that both A and B play a role in charging the capacitor. <br>

* In a parallel scenario, when both A and B are set to logic 1, the resulting output Y becomes logic 0. This indicates that both A and B are involved in discharging the capacitor. <br>

* However, in the subsequent situation, when either A or B is set to logic 1, only the input that is at logic 0 actively participates in charging the capacitor. There is no discharging activity, but rather a single MOS (Metal-Oxide-Semiconductor) component charges the capacitor. Consequently, the rise time of the output in this specific case will be prolonged. <br>

Now let us see some the funtionality of some commands: <br><br>

```ruby
report_timing -from DFFA/CLK -to DFFC/D -delay max: It is used to analyze and report the maximum delay from the clock input of flip-flop DFFA to the data input of flip-flop DFFC.
report_timing -from DFFA/CLK -to DFFC/D -delay min: It is used to analyze and report the minimum delay from the clock input of flip-flop DFFA to the data input of flip-flop DFFC.
report_timing -delay min -to DFFC/D: It is used to analyze and report the minimum delay to reach the data input of flip-flop DFFC.
report_timing -delay max -to DFFC/D: It is used to analyze and report the maximum delay to reach the data input of flip-flop DFFC.
report_timing -delay max -rise_to DFFC/D: It is used to analyze and report the maximum rise delay to reach the data input of flip-flop DFFC.
report_timing -delay max -fall_to DFFC/D: It is used to analyze and report the maximum fall delay to reach the data input of flip-flop DFFC.
report_timing -max_paths 2: It is used to generate timing reports that highlight the top two critical paths in the design. These both paths will have the different end points
report_timing -max_paths 2 -nworst 2: It is used to generate timing reports that highlight the top two critical paths in the design.
```

For Example: 

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/8e60e9a8878ef825486dd6632b666fb918e747ed/day10/i1.jpg"><br><br>

Now the different timing paths along with delays are as follows:<br><br>

* Path 1: DFFA(Clk -> Q r) -> INV(A r) -> INV(Y f) -> AND(A f) -> AND(Y f) -> DFFC(f)<br>
0.5 + 0.5 + 0.65 = 1.65ns<br><br>

* Path 2: DFFA(Clk -> Q f) -> INV(A f) -> INV(Y r) -> AND(A r) -> AND(Y r) -> DFFC(f)<br>
0.4 + 0.4 + 0.7 = 1.5ns<br>

* Path 3: DFFA(Clk -> Q r) -> AND(B r) -> AND(Y r) -> DFFC(r)<br>
0.5 + 0.65 = 1.15 ns<br>

* Path 4: DFFA(Clk -> Q f) -> AND(B f) -> AND(Y f) -> DFFC(f)<br>
0.4 + 0.6 = 1.0 ns <br>

```ruby
report_timing -from DFFA/CLK -to DFFC/D -delay max
path 1

report_timing -from DFFA/CLK -to DFFC/D -delay min
path 2

report_timing -delay min -to DFFC/D
path 4

report_timing -delay max -to DFFC/D
path 1

report_timing -delay max -rise_to DFFC/D
path 2

report_timing -delay max -fall_to DFFC/D
path 1
```

</details>


<details>

<summary>Labs on QOR</summary><br>

Consider the verilog code: <br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/1_file_verilog"><br><br>

* SS for reading and linking the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/2_read_link"><br><br>

* Constraints for the design are: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/3_constraint.png"><br><br>

* Screenshot for sourcing the constraint file and compiling the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/4_source_compile"><br><br>

* In the timing report we can see that it is for the max_path and it even comsists the library setup time, this tells us that the timing report is for setup. Setup timing report is shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/5_timing_report"><br><br>

* Screenshot of the timing report from IN_A: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/6_timing_report"><br><br>

* Screenshot for ```report_timing -rise_from IN_A -sig 4 -trans -cap -nets -inp``` , ```-rise_from``` is used to timing path for the transsition from 0 to 1 or Vdd:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/8_timing_report_rise"><br><br>

* Screenshot for ```report_timing -rise_from IN_A -sig 4 -trans -cap -nets -inp -to REG_A_reg/D```: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/9_timing_report_from_to"><br><br>

* If we notice the above three timing reports, we see that there is a rise to fall mismatch U14 cell as well as the inverter. Also the library setup time for the for rise and fall timing report is different.

* Hold Timing report is shown below:

* <img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/10_timing_report_hold_in_a"><br><br>

* Setup Timing report through U15/Y:

* <img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/11_timing_report_thr_U15"><br><br>

* Hold Timing report through U15/Y shown below:

* <img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/11_timing_report_thr_U16_hold"><br><br>

* If we compare the hold and setup timing report for the U15 cell, we can see that while doing setup analysis, U15 cell delay is 50 ps (i.e. fro the max timing path) but while doing the hold analysis it is 70 ps.

</details>



<details>

<summary>Lab on correctly loading the design in DC</summary><br>

Consider the verilog code: <br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/1_file_verilog"><br><br>

* SS for reading, linking and checking the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/12_read_check_design"><br><br>

* SS for compiling the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/13_compile"><br><br>

* Now we will check the design. Here we see that all the end ports are not constrained yet: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/14_check_timing"><br><br>

* Constraint report can be seen by command ```report_constraints```. If we have not specified the constraints yet, then it will show the default constraints set up by the tool: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/15_report_cons"><br><br>

* Constraints are shown below: <br><br>

```ruby
create_clock -name MYCLK -per 10 [get_ports clk];

set_clock_latency -source 2 [get_clocks MYCLK];
set_clock_latency 1 [get_clocks MYCLK];
set_clock_uncertainty -setup 0.5 [get_clocks MYCLK];
set_clock_uncertainty -hold 0.1 [get_clocks MYCLK];

set_input_delay -max 4 -clock [get_clocks MYCLK] [get_ports IN_A];
set_input_delay -max 4 -clock [get_clocks MYCLK] [get_ports IN_B];
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports IN_A];
set_input_delay -min 1 -clock [get_clocks MYCLK] [get_ports IN_B];

set_input_transition -max 0.4 [get_ports IN_A];
set_input_transition -max 0.4 [get_ports IN_B];
set_input_transition -min 0.1 [get_ports IN_A];
set_input_transition -min 0.1 [get_ports IN_B];

create_generated_clock -name MYGEN_CLK -master MYCLK -source [get_ports clk] -div 1 [get_ports out_clk];
create_generated_clock -name MYGEN_DIV_CLK -master MYCLK -source [get_ports clk] -div 2 [get_ports out_div_clk]; 

set_output_delay -max 4 -clock [get_clocks MYGEN_CLK] [get_ports OUT_Y];
set_output_delay -min 1 -clock [get_clocks MYGEN_CLK] [get_ports OUT_Y];

set_load -max 0.4 [get_ports OUT_Y];
set_load -min 0.1 [get_ports OUT_Y];
```

* Once we have sources the constraint tcl file, and check the design by ```check_timing``` we see that end ports are all constrained now: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/16_post_source_check_timing"><br><br>

* Timing report after sourcing the constraint tcl file: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/17_post_source_report_timing"><br><br>

* Constraint report after sourcing the constraint tcl file:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/18_post_source_report_cons"><br><br>

</details>



<details>

<summary>Lab on mux_generate_128</summary><br>

Consider the verilog code: <br>

```ruby
module mux_generate ( input [127:0] in, input [6:0] sel, output reg y);
integer k;
always @ (*)
begin
for(k = 0; k < 128; k=k+1) begin
	if(k == sel)
		y = in[k];
end
end
endmodule

```

* SS for reading, linking, checking and compiling the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7bc6f3ee1d2bec01fe58a9f00f768cf8522dcbf5/day10/20_read_check_link_compile"><br><br>

* In this we see that the latch is inferred in the design because of the for loop. 

* Netlist of the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/21_netlist"><br><br>

* After compiling the design there are no latches seen in the netlist of the design. This we can also verify from the seeing the cells of the design as shown below: <br><br

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/22_cells_report_timing"><br><br>
																						 >
* In the timing report present in the above image we see that there too many fanout to the enable, and consecutively the delay is very large. To reduce the fanout we can the set the max capacitance value allowed at a particular node as shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/23_set_max_delay_capacitance"><br><br>

* Violated Constraint report can be seen by command ```report_constraints -all_violators```: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/24_constraints_violators"><br><br>

* Compiling the design after setiing the max delay and capacitance to optimize the design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/25_compile"><br><br>

* Now checking timing and constraints reports:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/26_check_timing_constraint"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/27_timingreport_post_delay_cap_setup"><br><br>

* It is important to note that in the above timing report after specifying the max delay and capacitance, the fanouts have decreased greatly as well as the associated capacitance and delay.<br><br>

</details>





<details>
<summary>Lab on en_128</summary><br>

Consider the verilog code: <br>

```ruby
module en_128 (input [127:0] x , output [127:0] y , input en);
	assign y[127:0] = en ?x[127:0]:128'b0;
endmodule
```

* SS for reading, linking, and compiling the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/28_new_design_en_128"><br><br>

* Timing Report of the design is shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/29_report_timing"><br><br>
																						 >
* In the timing report present in the above image we see that there too many fanout to the enable, and consecutively the delay is very large. To reduce the fanout we can the set the max capacitance value allowed at a particular node and compile the design again as shown below: <br><br>

<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/30_set_cap_repot_timing_compile"><br><br>

* Timing report after setting the max capacitance, here we can see that fanout and capacitance is drastically reduced: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/451e6ab62673c1d0f36d299a700fea0d4005af54/day10/31_timing_from_en"><br><br>

* GUI of the optimized design is as shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/32_gui"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/33_gui_zoomed"><br><br>

* In the provided image, it is evident that buffers are employed to alleviate the load capacitance and fanout, consequently reducing delay. However, the timing reports indicate a notably unfavorable transition delay. To address this issue, we can enhance the situation by executing the command set_max_transition 0.150 [current_design] to establish a maximum transition delay threshold. Subsequently, we will generate constraint reports and proceed with the design compilation: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/34_set_max_transition_constraint"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/35_compile"><br><br>

* Violation report of the design is shown below, it shows no violation: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/36_report_violators"><br><br>

* Timing reports of the design are shown below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/37_report_timing"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/38_report_timing_from_en%5C"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c432b0a6b1bb8a9335a0c350c3903306746b5eb2/day10/39_report_timing_to_y116"><br><br>

* The timing reports provided indicate that none of the paths exhibit a transition delay exceeding 150 ps. Furthermore, all paths have been adequately buffered, and both load capacitance and fanout are well-managed. Previously, the timing delay to reach the signal at y[116] was approximately 442 ps, but now it has been reduced to 254 ps, marking a substantial improvement of approximately 40%. <br>


</details>

## Day-11_BabySOC

<details>
<summary>Introducion to Baby SOC</summary><br>

A System-on-Chip (SoC) represents a state-of-the-art integrated circuit that consolidates various electronic elements essential for the functioning of computing or electronic devices onto a single chip. These elements encompass central processing units (CPUs), graphics processing units (GPUs), memory, input/output interfaces, and other necessary components. SoCs have emerged as a foundational technology in contemporary electronics, serving as the driving force behind an extensive array of devices, spanning from smartphones and tablets to intelligent appliances and Internet of Things (IoT) devices. <br><br>

System-on-Chip (SoC) technology has gained widespread adoption due to its numerous advantages in the realm of electronic device design and development. Here are some key reasons why SoCs are favored:<br><br>

* **Integration of Components**: The primary advantage of an SoC is its ability to integrate multiple essential components onto a single chip. This integration not only saves physical space but also reduces power consumption and enhances overall system performance.<br>

* **Common Components**: In addition to CPUs and GPUs, SoCs often include components like memory (RAM and sometimes even storage), connectivity modules (Wi-Fi, Bluetooth, cellular), audio processing units, video decoding/encoding hardware, and various other hardware accelerators tailored for specific tasks.v

* **Application Range**: SoCs are incredibly versatile and find application in a wide range of devices, as you mentioned. They are commonly used in smartphones and tablets but are also essential in smart TVs, gaming consoles, automotive electronics, wearables, and even in industrial equipment and IoT (Internet of Things) devices.<br>

* **Power Efficiency**: SoCs are designed with power efficiency in mind. This is particularly crucial for battery-powered devices like smartphones, where optimizing power consumption can extend battery life significantly.<br>

* **Customization**: Manufacturers can customize SoCs for specific applications. For instance, a smartphone manufacturer might work with a chip designer to create a custom SoC tailored to their device's needs. This can lead to improved performance and power efficiency.<br>

* **Complexity**: Building an SoC is a complex and expensive process that requires a high level of expertise. Chip designers need to consider various factors such as thermal management, power distribution, and signal integrity while fitting all the necessary components on a single chip.<br>

Overall, SoCs are a fundamental technology that has revolutionized the electronics industry by enabling the creation of compact, energy-efficient, and high-performance electronic devices. They continue to play a pivotal role in shaping the future of technology. <br><br>

System-on-Chip (SoCs) exhibit diverse configurations to meet specific application needs. Three primary SoC types include: <br><br>

* **Microprocessor-Based SoCs**: SoCs that integrate microprocessors are commonly found in smartphones and various computing devices. These microprocessors deliver the computational power necessary for running intricate operating systems and a wide array of consumer electronics applications, making them versatile and suitable for a broad range of consumer products.<br>

* **Microcontroller-Centric SoCs**: These SoCs are centered around microcontrollers, compact computing units equipped with processors, memory, and I/O components. Microcontroller-based SoCs excel in handling straightforward and dedicated tasks, making them ideal for embedded systems and IoT devices due to their efficiency.<br>

* **Specialized Application-Specific Integrated Circuit (ASIC) SoCs**: ASIC SoCs are meticulously crafted to cater to specific applications that do not neatly fit into the microcontroller or microprocessor categories. These SoCs are customized to meet precise performance, power efficiency, and functionality demands, often finding application in specialized fields like automotive, aerospace, and industrial settings.<br>

These distinct categories of SoCs underscore the remarkable versatility and adaptability of this technology, capable of accommodating a wide spectrum of applications and devices. SoCs have revolutionized the electronics industry by offering tailored solutions for various computing needs, from simple embedded systems to sophisticated consumer electronics and specialized industrial equipment. Their ability to consolidate multiple components onto a single chip has paved the way for more compact, energy-efficient, and feature-rich electronic devices across diverse domains.<br><br>

**SOC Architechture**:<br><br>

System-on-Chip (SoC) architecture refers to the design and organization of integrated circuits that incorporate multiple electronic components and functionalities onto a single chip. This approach aims to optimize the performance, power efficiency, and space utilization of electronic devices. Here are key components and aspects of SoC architecture:<br><br>

* **Processor Cores**: SoCs often feature one or more central processing units (CPUs) or processor cores. These cores execute instructions and perform computations, and their architecture (e.g., ARM, x86) depends on the intended application and performance requirements.<br>

* **Graphics Processing Units (GPUs)**: Many SoCs include GPUs for rendering graphics, accelerating visual tasks, and supporting multimedia applications. GPUs are vital for devices like smartphones, gaming consoles, and smart TVs.<br>

* **Memory Subsystems**: SoCs incorporate various types of memory, including RAM (Random Access Memory) and sometimes embedded non-volatile memory (eNVM). Memory subsystems are critical for data storage and efficient data access.<br>

* **Input/Output Interfaces (I/O)**: SoCs include interfaces for connecting to external devices, such as USB ports, HDMI, audio jacks, and network interfaces (Ethernet or Wi-Fi). These interfaces enable communication between the SoC and peripherals.<br>

* **Peripherals**: SoCs can integrate a wide range of peripherals, such as sensors (accelerometers, gyroscopes), cameras, audio codecs, and storage controllers. These peripherals enable the SoC to interact with the device's environment.<br>

* **On-Chip Interconnect**: A crucial aspect of SoC architecture is the on-chip interconnect, which provides data pathways between different components. High-speed buses and interconnects ensure efficient data transfer between components.<br>

* **Power Management**: SoCs incorporate power management units (PMUs) to regulate power consumption efficiently. This includes features like dynamic voltage and frequency scaling (DVFS) to adjust power based on workload.<br>

* **Security Features**: With the increasing concern about data security, many SoCs include hardware-based security features such as encryption/decryption engines, secure boot mechanisms, and trusted execution environments (TEEs).<br>

* **Clocking and Timing**: SoCs require precise clocking to synchronize different components and ensure efficient operation. Clock generation and distribution are critical elements of SoC design.<br>

* **Customization**: Depending on the application, SoCs can be customized to include specialized hardware accelerators or co-processors. This customization optimizes performance for specific tasks.<br>


SoC architecture is highly adaptable, allowing designers to tailor the components and features to meet the specific requirements of a wide range of electronic devices, from smartphones and tablets to IoT devices and specialized industrial equipment.<br><br>

Intermodule communication within System-on-Chip (SoC) architecture is achieved through two primary methods:<br><br>

* **Bus-Based Communication**: SoCs utilize internal buses as pathways for data exchange and communication between various functional units. These buses act as essential data highways, facilitating the transfer of information among different components.<br>

* **Network on a Chip (NoC)**: In more complex SoC designs, Network on a Chip architectures, known as NoCs, come into play. NoCs provide a structured and efficient approach to managing intermodule communication, especially in scenarios involving multi-core and high-performance SoC configurations.<br>

This architectural framework of SoCs highlights the intricate integration of hardware components and underscores the critical role of seamless communication among these components. Such communication is paramount for ensuring the effective operation of the device across a wide spectrum of applications and functionalities.<br><br>

**Introduction BABY SOC**:<br><br>

The BabySoC incorporates several essential components that contribute to its functionality and capabilities:<br><br>

* **RVMYTH CPU**: At the heart of the BabySoC is the RVMYTH core, a simplified RISC-V-based CPU. This core serves as the central processing unit, responsible for executing instructions and performing computational tasks, making it the "brain" of the SoC.<br><br>

* **PLL (Phase-Locked Loop)**: The BabySoC includes a crucial Phase-Locked Loop (PLL) control system. This component plays a vital role in synchronizing the phase of an output signal with that of an input signal. PLLs are particularly valuable for precise timing and synchronization tasks across different SoC components.<br><br>

* **DAC (Digital-to-Analog Converter)**: Another integral component of the BabySoC is the Digital-to-Analog Converter (DAC). This component is responsible for converting digital signals into analog signals, a fundamental function in various applications like audio playback and signal modulation.<br><br>

These core elements, RVMYTH CPU, PLL, and DAC, together form the foundation of the BabySoC, equipping it with computational power, synchronization capabilities, and signal conversion functionality to perform a wide range of tasks.<br><br>

Samsung Exynos 9611 Processor:<br>

Overview: Samsung's Exynos 9611 SoC, introduced in 2019, is a notable representative of the Exynos 7 Series designed for mid-range mobile devices. It incorporates advanced features and capabilities suitable for various computing needs.<br><br>

**Architecture**:<br><br>

* **CPU**: The Exynos 9611 features an octa-core CPU configuration, divided into two clusters:<br><br>

	* **High-Performance Cluster (Cortex-A73)**: Comprising four cores clocked at up to 2.3 GHz, these cores handle resource-intensive tasks like gaming and multimedia, delivering a responsive user experience.<br>
	* **Power-Efficient Cluster (Cortex-A53)**: Consisting of four cores running at up to 1.7 GHz, these cores manage less demanding tasks, optimizing power efficiency and extending battery life.<br>

* **GPU**: For graphics processing, the Exynos 9611 utilizes the Mali-G72 MP3 GPU, a tri-core GPU that strikes a balance between performance and power efficiency, ensuring smooth gaming and multimedia experiences.<br>

* **AI Capabilities**: The SoC integrates a dedicated neural processing unit (NPU) for AI and machine learning tasks, enhancing camera capabilities, voice recognition, and user experience personalization.<br>

* **Connectivity**: With an integrated LTE modem, the Exynos 9611 supports fast data speeds and reliable network connectivity. It also offers Wi-Fi, Bluetooth, and NFC support, ensuring comprehensive connectivity options.<br>

* **Camera Support**: The Exynos 9611 accommodates up to 64-megapixel camera sensors, enabling high-quality photography and video recording, as well as advanced camera features and image processing.<br>

* **Display**: The SoC is capable of handling Full HD+ displays, providing vibrant visuals and an immersive viewing experience.<br><br>

* **Performance and Efficiency**: The Exynos 9611 strikes a balance between performance and power efficiency, making it well-suited for mid-range mobile devices. Its octa-core CPU, coupled with the Mali-G72 GPU, delivers solid performance for various tasks while optimizing power consumption for extended battery life.<br>

In conclusion the Samsung Exynos 9611 processor exemplifies the capabilities of modern mid-range SoCs for mobile devices. Its architecture, including a robust CPU configuration, efficient GPU, AI capabilities, and comprehensive connectivity options, underscores its versatility for a wide range of applications, offering a compelling user experience.<br>


</details>



## Day-12_BabySOC_Modelling

<details>
<summary>Introduction</summary><br>

Modeling and simulation involve employing a physical or abstract representation of a system to produce data that assists in decision-making or predicting system behavior. Models serve as tools for defining, examining, and conveying a collection of ideas. In the VLSI (Very Large Scale Integration) domain, modeling and simulation are extensively utilized. <br>

The objectives of modeling are as follows:<br>

* Facilitating the analysis, specification,<br>
* Enabling design,<br>
* Supporting verification,<br>
* Facilitating validation of a system,<br>
* Additionally, conveying specific information about it.<br><br>

Intellectual Property (IP) refers to a legal concept that grants exclusive rights to individuals or entities over creations of the mind or intellectual endeavors. These creations can include inventions, literary and artistic works, symbols, names, images, and designs used in commerce. Intellectual property is divided into several categories, each with its own set of protections and regulations. Three main intellectual property which we are goint to model are:<br><br>
1. RVMYTH modelling<br>
2. PLL modelling<br>
3. DAC modelling <br><br>

**RVMYTH - Risc-V based MYTH**<br><br>

RISC-V, pronounced as "risk-five," is an Instruction Set Architecture (ISA) known for its Reduced Instruction Set Computer (RISC) principles. This ISA defines a fundamental set of instructions referred to as the base integer ISA, which must be present in any RISC-V implementation. Additionally, RISC-V allows for optional extensions to enhance its capabilities. The base integer instruction set is distinguished by characteristics such as the width of integer registers, the size of the address space it supports, and the number of available integer registers. Notably, there are two primary base integer variants within RISC-V, known as RV32I and RV64I. <br><br>

1. **RV32I**:<br>
* 32-Bit Variant: RV32I refers to the 32-bit version of the RISC-V architecture. In this variant, the CPU's data and address registers are 32 bits wide.<br>
* Address Space: RV32I supports a 32-bit virtual address space, meaning it can address up to 2^32 unique memory locations, which equals 4 gigabytes of memory.<br>
* Registers: RV32I provides 32 general-purpose registers (integer registers) for performing arithmetic and data manipulation operations.<br>
* Instruction Set: It defines a specific set of instructions for 32-bit RISC-V processors, including arithmetic, logic, load, store, and control flow instructions.<br>

2. **RV64I**:<br>
* 64-Bit Variant: RV64I represents the 64-bit version of the RISC-V architecture. In this variant, both data and address registers are 64 bits wide.<br>
* Address Space: RV64I offers a much larger virtual address space compared to RV32I. It can address up to 2^64 unique memory locations, which is an astronomically large address space.<br>
* Registers: RV64I also provides 32 general-purpose registers (integer registers) just like RV32I. However, these registers are 64 bits wide, allowing for more extensive data manipulation and support for 64-bit data types.<br>
* Instruction Set: Similar to RV32I, RV64I defines a specific set of instructions, but these instructions operate on 64-bit data.<br>

5-stages of RISC-V pipelined architecture is explained below:<br><br>

1. **Fetch Stage (IF - Instruction Fetch)**:<br>
* In this stage, the processor fetches the next instruction from memory.<br>
* The program counter (PC) holds the address of the instruction to be fetched.<br>
* The instruction is typically 32 bits in RISC-V.<br>
* The PC is updated for the next instruction (PC + 4) to maintain instruction sequencing.<br><br>

2. Decode Stage (ID - Instruction Decode):<br>
* In this stage, the fetched instruction is decoded to determine the operation to be performed and the operands involved.<br>
* The opcode (operation code) is extracted from the instruction, which identifies the instruction type.<br>
* Operand registers are identified, and their values are read from the register file.<br>
* Immediate values, if needed, are also extracted from the instruction.<br><br>

3. Execute Stage (EX - Execution):<br>
* This stage performs the actual execution of the instruction.<br>
* Arithmetic and logical instructions, such as add and subtract, operate on the operands obtained in the decode stage.<br>
* Branch instructions evaluate conditions to determine whether to take a branch or not.<br>
* Memory operations, like load and store, calculate memory addresses and perform data transfers.<br><br>

4. Memory Stage (MEM - Memory Access):<br>
* In this stage, memory-related instructions access the data memory or cache.<br>
* Load instructions retrieve data from memory and write it back to the register file.<br>
* Store instructions write data from a register into memory.<br>
* Other instructions that do not involve memory access pass through this stage without any memory operations.<br><br>

5. Write-back Stage (WB - Write-back):<br>
* In this final stage, the results of the executed instruction are written back to the register file.<br>
* The destination register specified by the instruction is updated with the result.<br>
* Control signals ensure that only the correct register is updated, preventing hazards.<br><br>


**PLL**:<br><br>

A Phase-Locked Loop (PLL) is an electronic control system that is used to stabilize or synchronize the phase and frequency of an oscillator with a reference signal. PLLs are widely used in various applications across electronics and communications for tasks such as clock generation, frequency synthesis, demodulation, and signal recovery. Here's a breakdown of how a PLL works and its key components:<br><br>

* Phase Detector <br>
* Low-Pass Filter <br>
* Voltage-Controlled Oscillato <br>
* Feedback Loop <br><br>

A Phase-Locked Loop (PLL) is an essential component in many System-on-Chip (SoC) designs for several reasons:<br><br>

1. **Clock Generation and Distribution**: One of the primary functions of a PLL in an SoC is to generate stable and precise clock signals. Modern SoCs consist of numerous subsystems and components that may require different clock frequencies and phases. The PLL can generate these diverse clock signals from a single reference clock source, ensuring synchronization and coherence across the chip. This is crucial for the proper operation of digital circuits, data transfer, and the coordination of various processing units.<br>

2. **Frequency Synthesis**: SoCs often need to operate at multiple frequencies to optimize power consumption and performance. PLLs can generate these different frequencies by multiplying or dividing the reference clock signal. This flexibility allows an SoC to dynamically adjust its clock speeds to meet varying processing demands while maintaining synchronization.<br>

3. **Clock Domain Crossing**: Inside an SoC, different functional blocks or cores may operate on different clock domains due to their distinct processing requirements. PLLs are used to generate clocks for these domains and to facilitate clock domain crossing, where data is transferred between blocks operating on different clock frequencies. Properly designed PLLs help manage data transfer, synchronization, and latency issues when crossing clock domains.<br>

4. **I/O Interfaces**: Many SoCs have various I/O interfaces that communicate with external devices or other components. These interfaces often require specific clock signals. PLLs can generate these clocks while ensuring they meet the required timing specifications, such as data setup and hold times, which are critical for reliable data transmission.<br>

5. **Power Management**: PLLs can help manage power consumption in an SoC. By dynamically adjusting the clock frequency or shutting down parts of the SoC when not in use, PLLs contribute to power efficiency. For example, when a component enters a low-power state, the PLL can reduce the clock frequency to minimize power consumption.<br>

6. **Jitter and Noise Reduction**: PLLs are adept at reducing jitter and noise in clock signals. This is essential for maintaining signal integrity in high-speed data transmission and analog-to-digital conversion processes within an SoC.<br>

7. **Clock Recovery**: In communication systems, PLLs are used for clock recovery from incoming data signals. This is crucial for accurate data demodulation and synchronization.<br><br>

In summary, PLLs are a critical component of SoC designs because they provide clock generation, synchronization, and management capabilities that are essential for the reliable and efficient operation of complex digital systems. They enable the SoC to manage various clock domains, optimize power consumption, and ensure data integrity, all of which are fundamental requirements in modern electronic devices.<br><br>

**DAC**: <br><br>

A Digital-to-Analog Converter (DAC) is an electronic device that converts digital data into analog signals. In other words, it takes a series of binary or digital values and produces a continuous analog output voltage or current that represents the digital input. DACs are used in various applications, including audio systems, communication systems, instrumentation, and more.<br>

There are several types of DACs, each with its own characteristics and applications:<br>

1. **Binary-Weighted DAC (BWDAC)**:<br>
* In a binary-weighted DAC, each bit of the digital input has a different weight. The least significant bit (LSB) has the smallest weight, while the most significant bit (MSB) has the largest weight.<br>
* The output voltage is determined by the sum of weighted currents or voltages from each bit. The more bits you have, the finer the resolution.<br>
* Binary-weighted DACs are straightforward but can be limited by component matching and precision requirements.<br><br>

2. **R-2R Ladder DAC**:<br>
* An R-2R ladder DAC uses a network of resistors in a ladder configuration. The values of the resistors are either R or 2R.<br>
* The input bits control switches that connect to either R or 2R resistors, allowing for binary-weighted current division.<br>
* R-2R ladder DACs are known for their good linearity and are often used in high-resolution audio applications.<br><br>

3. **Segmented DAC (Subranging DAC)**:<br>
* A segmented DAC combines multiple DACs in parallel, each with a different range. These segments are usually binary-weighted.<br>
* The input code determines which segment is active, and the outputs of all segments are combined to produce the final analog output.<br>
* Segmented DACs are used in applications where high resolution and accuracy are required.<br><br>

4.** Delta-Sigma (ΔΣ) DAC**:<br>
* Delta-sigma DACs use oversampling and noise shaping to achieve high resolution and low noise.<br>
* They are commonly used in applications like audio DACs, where high audio quality is essential.<br>
* Delta-sigma DACs have a quantization noise at high frequencies, which is then filtered to obtain a high-resolution, low-noise analog signal.<br><br>

5 **Current-Steering DAC (Current DAC)**:<br>
* Current-steering DACs use a series of switches to direct current sources into or away from the output node.<br>
* The digital input controls which current sources are active, determining the analog output current.<br>
* They are often used in high-speed applications and are suitable for direct connection to differential amplifiers.<br><br>

6 **String DAC**:<br>
* String DACs use a chain of resistor elements in series, with each resistor dividing the voltage by a specific fraction.<br>
* The digital input code selects which resistors are included in the chain, allowing for precise voltage division.<br>
* String DACs are relatively simple but can be limited by the number of bits and resistor accuracy.<br><br>

The choice of DAC type depends on the specific application's requirements, including resolution, speed, linearity, and cost considerations. Each type of DAC has its advantages and trade-offs, making them suitable for different use cases.<br>

</details>

<details>

<summary>Lab on modelling IP's </summary><br>

**DAC**:<br><br>

Verilog code for Design <br>

```ruby
module avsddac (
   OUT,
   D,
   VREFH,
   VREFL
);

   output      OUT;
   input [9:0] D;
   input       VREFH;
   input       VREFL;
   

   reg  real OUT;
   wire real VREFL;
   wire real VREFH;

   real NaN;
   wire EN;

   wire [10:0] Dext;	// unsigned extended

   assign Dext = {1'b0, D};
   assign EN = 1;

   initial begin
      NaN = 0.0 / 0.0;
      if (EN == 1'b0) begin
         OUT <= 0.0;
      end
      else if (VREFH == NaN) begin
         OUT <= NaN;
      end
      else if (VREFL == NaN) begin
         OUT <= NaN;
      end
      else if (EN == 1'b1) begin
         OUT <= VREFL + ($itor(Dext) / 1023.0) * (VREFH - VREFL);
      end
      else begin
         OUT <= NaN;
      end
   end

   always @(D or EN or VREFH or VREFL) begin
      if (EN == 1'b0) begin
         OUT <= 0.0;
      end
      else if (VREFH == NaN) begin
         OUT <= NaN;
      end
      else if (VREFL == NaN) begin
         OUT <= NaN;
      end
      else if (EN == 1'b1) begin
         OUT <= VREFL + ($itor(Dext) / 1023.0) * (VREFH - VREFL);
      end
      else begin
         OUT <= NaN;
      end
   end
endmodule
```


* Terminal commands to generate .vcd file for DAC: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/7_dac_cmd"><br><br>

* Simulation results for DAC on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/6_dac_simulation"><br><br>

**PLL**:<br><br>

Verilog code for design:

```ruby
`timescale 1ns / 1ps
module avsd_pll_1v8( CLK, VCO_IN, VDDA, VDDD, VSSA, VSSD, EN_VCO, REF);

  input VSSD;
  input EN_VCO;
  input VSSA;
  input VDDD;
  input VDDA;
  input VCO_IN;
  output CLK;
  input REF;

 
 
 
  reg CLK;
  real period, lastedge, refpd;
  wire  VSSD, VSSA, VDDD, VDDA;
 

  initial begin
     lastedge = 0.0;
     period = 25.0; // 25ns period = 40MHz
     CLK <= 0;
      end

  // Toggle clock at rate determined by period
  always @(CLK or EN_VCO) begin
     if (EN_VCO == 1'b1) begin
        #(period / 2.0);
        CLK <= (CLK === 1'b0);
     end else if (EN_VCO == 1'b0) begin
        CLK <= 1'b0;
     end else begin
        CLK <= 1'bx;
     end
  end
   
  // Update period on every reference rising edge
  always @(posedge REF) begin
     if (lastedge > 0.0) begin
refpd = $realtime - lastedge;
// Adjust period towards 1/8 the reference period
        //period = (0.99 * period) + (0.01 * (refpd / 8.0));
        period =  (refpd / 8.0) ;
     end
     lastedge = $realtime;
  end
endmodule
```

* Terminal commands to generate .vcd file for PLL: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/5_pll_cmd"><br><br>

* Simulation results for PLL on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/4_pll_simulation"><br><br>

**RISC-V Processor - rvmyth**:<br><br>

```ruby
`include "sp_verilog.vh" //_\SV
    // Included URL: "https://raw.githubusercontent.com/shivanishah269/risc-v-core/master/FPGA_Implementation/riscv_shell_lib.tlv"// Included URL: "https://raw.githubusercontent.com/stevehoover/warp-v_includes/2d6d36baa4d2bc62321f982f78c8fe1456641a43/risc-v_defs.tlv"
`include "clk_gate.v"   
   module core(input clk, input reset, output reg [9:0] out);
`include "mythcore_test_gen.v"
generate //_\TLV
// /====================\
   // | Sum 1 to 9 Program |
   // \====================/
   //
   // Program for MYTH Workshop to test RV32I
   // Add 1,2,3,...,9 (in that order).
   //
   // Regs:
   //  r10 (a0): In: 0, Out: final sum
   //  r12 (a2): 10
   //  r13 (a3): 1..10
   //  r14 (a4): Sum
   // 
   // External to function:
   // Inst #0: ADD,r14,r0,r0            // Initialize sum register a4 with 0x0
   // Inst #1: ADDI,r12,r0,1010         // Store count of 10 in register a2.
   // Inst #2: ADD,r13,r0,r0            // Initialize intermediate sum register a3 with 0
   // Loop:
   // Inst #3: ADD,r14,r13,r14           // Incremental addition
   // Inst #4: ADDI,r13,r13,1            // Increment intermediate register by 1
   // Inst #5: BLT,r13,r12,1111111111000 // If a3 is less than a2, branch to label named <loop>   
   // Inst #6: ADDI,r13,r13,111111111111            // Increment intermediate register by 1
   // Inst #7: SUB,r14,r14,r13           // Incremental addition
   // Inst #8: BLT,r0,r13,1111111111000           // Load the value from 
   // Inst #9: ADD,r0,r0,r0
   // Inst #10: ADD,r0,r0,r0
   // Inst #11: BLT,r0,r12,1111111010100 
   
   // Optional:
   // m4_asm(JAL, r7, 00000000000000000000) // Done. Jump to itself (infinite loop). (Up to 20-bit signed immediate plus implicit 0 bit (unlike JALR) provides byte address; last immediate bit should also be 0)
   

   //_|cpu
      //_@0
         assign CPU_reset_a0 = reset;
      
      //Fetch
         // Next PC
         assign CPU_pc_a0[31:0] = (CPU_reset_a1) ? 32'b0 : 
                     (CPU_valid_taken_br_a3) ? CPU_br_tgt_pc_a3 : 
                     (CPU_valid_load_a3) ? CPU_inc_pc_a3 : 
                     (CPU_valid_jump_a3 && CPU_is_jal_a3) ? CPU_br_tgt_pc_a3 :
                     (CPU_valid_jump_a3 && CPU_is_jalr_a3) ? CPU_jalr_tgt_pc_a3 : CPU_inc_pc_a1;
         
         assign CPU_imem_rd_en_a0 = !CPU_reset_a0;
         assign CPU_imem_rd_addr_a0[31:0] = CPU_pc_a0[4+1:2];
         
      //_@1         
         assign CPU_instr_a1[31:0] = CPU_imem_rd_data_a1[31:0];
         assign CPU_inc_pc_a1[31:0] = CPU_pc_a1 + 32'd4;          
      // Decode   
         assign CPU_is_i_instr_a1 = CPU_instr_a1[6:2] == 5'b00000 ||
                       CPU_instr_a1[6:2] == 5'b00001 ||
                       CPU_instr_a1[6:2] == 5'b00100 ||
                       CPU_instr_a1[6:2] == 5'b00110 ||
                       CPU_instr_a1[6:2] == 5'b11001;
         assign CPU_is_r_instr_a1 = CPU_instr_a1[6:2] == 5'b01011 ||
                       CPU_instr_a1[6:2] == 5'b10100 ||
                       CPU_instr_a1[6:2] == 5'b01100 ||
                       CPU_instr_a1[6:2] == 5'b01101;                       
         assign CPU_is_b_instr_a1 = CPU_instr_a1[6:2] == 5'b11000;
         assign CPU_is_u_instr_a1 = CPU_instr_a1[6:2] == 5'b00101 ||
                       CPU_instr_a1[6:2] == 5'b01101;
         assign CPU_is_s_instr_a1 = CPU_instr_a1[6:2] == 5'b01000 ||
                       CPU_instr_a1[6:2] == 5'b01001;
         assign CPU_is_j_instr_a1 = CPU_instr_a1[6:2] == 5'b11011;
         
         assign CPU_imm_a1[31:0] = CPU_is_i_instr_a1 ? { {21{CPU_instr_a1[31]}} , CPU_instr_a1[30:20] } :
                      CPU_is_s_instr_a1 ? { {21{CPU_instr_a1[31]}} , CPU_instr_a1[30:25] , CPU_instr_a1[11:8] , CPU_instr_a1[7] } :
                      CPU_is_b_instr_a1 ? { {20{CPU_instr_a1[31]}} , CPU_instr_a1[7] , CPU_instr_a1[30:25] , CPU_instr_a1[11:8] , 1'b0} :
                      CPU_is_u_instr_a1 ? { CPU_instr_a1[31:12] , 12'b0} : 
                      CPU_is_j_instr_a1 ? { {12{CPU_instr_a1[31]}} , CPU_instr_a1[19:12] , CPU_instr_a1[20] , CPU_instr_a1[30:21] , 1'b0} : 32'b0;
         
         assign CPU_rs2_valid_a1 = CPU_is_r_instr_a1 || CPU_is_s_instr_a1 || CPU_is_b_instr_a1;
         assign CPU_rs1_valid_a1 = CPU_is_r_instr_a1 || CPU_is_s_instr_a1 || CPU_is_b_instr_a1 || CPU_is_i_instr_a1;
         assign CPU_rd_valid_a1 = CPU_is_r_instr_a1 || CPU_is_i_instr_a1 || CPU_is_u_instr_a1 || CPU_is_j_instr_a1;
         assign CPU_funct3_valid_a1 = CPU_is_r_instr_a1 || CPU_is_s_instr_a1 || CPU_is_b_instr_a1 || CPU_is_i_instr_a1;
         assign CPU_funct7_valid_a1 = CPU_is_r_instr_a1;
         
         //_?$rs2_valid
            assign CPU_rs2_a1[4:0] = CPU_instr_a1[24:20];
         //_?$rs1_valid
            assign CPU_rs1_a1[4:0] = CPU_instr_a1[19:15];
         //_?$rd_valid
            assign CPU_rd_a1[4:0] = CPU_instr_a1[11:7];
         //_?$funct3_valid
            assign CPU_funct3_a1[2:0] = CPU_instr_a1[14:12];
         //_?$funct7_valid
            assign CPU_funct7_a1[6:0] = CPU_instr_a1[31:25];
            
         assign CPU_opcode_a1[6:0] = CPU_instr_a1[6:0];
         
         assign CPU_dec_bits_a1[10:0] = {CPU_funct7_a1[5],CPU_funct3_a1,CPU_opcode_a1};
         
         // Branch Instruction
         assign CPU_is_beq_a1 = CPU_dec_bits_a1[9:0] == 10'b000_1100011;
         assign CPU_is_bne_a1 = CPU_dec_bits_a1[9:0] == 10'b001_1100011;
         assign CPU_is_blt_a1 = CPU_dec_bits_a1[9:0] == 10'b100_1100011;
         assign CPU_is_bge_a1 = CPU_dec_bits_a1[9:0] == 10'b101_1100011;
         assign CPU_is_bltu_a1 = CPU_dec_bits_a1[9:0] == 10'b110_1100011;
         assign CPU_is_bgeu_a1 = CPU_dec_bits_a1[9:0] == 10'b111_1100011;
         
         // Arithmetic Instruction
         assign CPU_is_add_a1 = CPU_dec_bits_a1 == 11'b0_000_0110011;
         assign CPU_is_addi_a1 = CPU_dec_bits_a1[9:0] == 10'b000_0010011;
         assign CPU_is_or_a1 = CPU_dec_bits_a1 == 11'b0_110_0110011;
         assign CPU_is_ori_a1 = CPU_dec_bits_a1[9:0] == 10'b110_0010011;
         assign CPU_is_xor_a1 = CPU_dec_bits_a1 == 11'b0_100_0110011;
         assign CPU_is_xori_a1 = CPU_dec_bits_a1[9:0] == 10'b100_0010011;
         assign CPU_is_and_a1 = CPU_dec_bits_a1 == 11'b0_111_0110011;
         assign CPU_is_andi_a1 = CPU_dec_bits_a1[9:0] == 10'b111_0010011;
         assign CPU_is_sub_a1 = CPU_dec_bits_a1 == 11'b1_000_0110011;
         assign CPU_is_slti_a1 = CPU_dec_bits_a1[9:0] == 10'b010_0010011;
         assign CPU_is_sltiu_a1 = CPU_dec_bits_a1[9:0] == 10'b011_0010011;
         assign CPU_is_slli_a1 = CPU_dec_bits_a1 == 11'b0_001_0010011;
         assign CPU_is_srli_a1 = CPU_dec_bits_a1 == 11'b0_101_0010011;
         assign CPU_is_srai_a1 = CPU_dec_bits_a1 == 11'b1_101_0010011;
         assign CPU_is_sll_a1 = CPU_dec_bits_a1 == 11'b0_001_0110011;
         assign CPU_is_slt_a1 = CPU_dec_bits_a1 == 11'b0_010_0110011;
         assign CPU_is_sltu_a1 = CPU_dec_bits_a1 == 11'b0_011_0110011;
         assign CPU_is_srl_a1 = CPU_dec_bits_a1 == 11'b0_101_0110011;
         assign CPU_is_sra_a1 = CPU_dec_bits_a1 == 11'b1_101_0110011;
         
         // Load Instruction
         assign CPU_is_load_a1 = CPU_dec_bits_a1[6:0] == 7'b0000011;
         
         // Store Instruction
         assign CPU_is_sb_a1 = CPU_dec_bits_a1[9:0] == 10'b000_0100011;
         assign CPU_is_sh_a1 = CPU_dec_bits_a1[9:0] == 10'b001_0100011;
         assign CPU_is_sw_a1 = CPU_dec_bits_a1[9:0] == 10'b010_0100011;
         
         // Jump Instruction
         assign CPU_is_lui_a1 = CPU_dec_bits_a1[6:0] == 7'b0110111;
         assign CPU_is_auipc_a1 = CPU_dec_bits_a1[6:0] == 7'b0010111;
         assign CPU_is_jal_a1 = CPU_dec_bits_a1[6:0] == 7'b1101111;
         assign CPU_is_jalr_a1 = CPU_dec_bits_a1[9:0] == 10'b000_1100111;
         
         assign CPU_is_jump_a1 = CPU_is_jal_a1 || CPU_is_jalr_a1;
         
      //_@2   
      // Register File Read
         assign CPU_rf_rd_en1_a2 = CPU_rs1_valid_a2;
         //_?$rf_rd_en1
            assign CPU_rf_rd_index1_a2[4:0] = CPU_rs1_a2[4:0];
         
         assign CPU_rf_rd_en2_a2 = CPU_rs2_valid_a2;
         //_?$rf_rd_en2
            assign CPU_rf_rd_index2_a2[4:0] = CPU_rs2_a2[4:0];
            
      // Branch Target PC       
         assign CPU_br_tgt_pc_a2[31:0] = CPU_pc_a2 + CPU_imm_a2;
      
      // Jump Target PC
         assign CPU_jalr_tgt_pc_a2[31:0] = CPU_src1_value_a2 + CPU_imm_a2;
         
      // Input signals to ALU
         assign CPU_src1_value_a2[31:0] = ((CPU_rd_a3 == CPU_rs1_a2) && CPU_rf_wr_en_a3) ? CPU_result_a3 : CPU_rf_rd_data1_a2[31:0];
         assign CPU_src2_value_a2[31:0] = ((CPU_rd_a3 == CPU_rs2_a2) && CPU_rf_wr_en_a3) ? CPU_result_a3 : CPU_rf_rd_data2_a2[31:0];
         
      //_@3   
         
      // ALU
         assign CPU_sltu_result_a3 = CPU_src1_value_a3 < CPU_src2_value_a3 ;
         assign CPU_sltiu_result_a3 = CPU_src1_value_a3 < CPU_imm_a3 ;
         
         assign CPU_result_a3[31:0] = CPU_is_addi_a3 ? CPU_src1_value_a3 + CPU_imm_a3 :
                         CPU_is_add_a3 ? CPU_src1_value_a3 + CPU_src2_value_a3 : 
                         CPU_is_or_a3 ? CPU_src1_value_a3 | CPU_src2_value_a3 : 
                         CPU_is_ori_a3 ? CPU_src1_value_a3 | CPU_imm_a3 :
                         CPU_is_xor_a3 ? CPU_src1_value_a3 ^ CPU_src2_value_a3 :
                         CPU_is_xori_a3 ? CPU_src1_value_a3 ^ CPU_imm_a3 :
                         CPU_is_and_a3 ? CPU_src1_value_a3 & CPU_src2_value_a3 :
                         CPU_is_andi_a3 ? CPU_src1_value_a3 & CPU_imm_a3 :
                         CPU_is_sub_a3 ? CPU_src1_value_a3 - CPU_src2_value_a3 :
                         CPU_is_slti_a3 ? ((CPU_src1_value_a3[31] == CPU_imm_a3[31]) ? CPU_sltiu_result_a3 : {31'b0,CPU_src1_value_a3[31]}) :
                         CPU_is_sltiu_a3 ? CPU_sltiu_result_a3 :
                         CPU_is_slli_a3 ? CPU_src1_value_a3 << CPU_imm_a3[5:0] :
                         CPU_is_srli_a3 ? CPU_src1_value_a3 >> CPU_imm_a3[5:0] :
                         CPU_is_srai_a3 ? ({{32{CPU_src1_value_a3[31]}}, CPU_src1_value_a3} >> CPU_imm_a3[4:0]) :
                         CPU_is_sll_a3 ? CPU_src1_value_a3 << CPU_src2_value_a3[4:0] :
                         CPU_is_slt_a3 ? ((CPU_src1_value_a3[31] == CPU_src2_value_a3[31]) ? CPU_sltu_result_a3 : {31'b0,CPU_src1_value_a3[31]}) :
                         CPU_is_sltu_a3 ? CPU_sltu_result_a3 :
                         CPU_is_srl_a3 ? CPU_src1_value_a3 >> CPU_src2_value_a3[5:0] :
                         CPU_is_sra_a3 ? ({{32{CPU_src1_value_a3[31]}}, CPU_src1_value_a3} >> CPU_src2_value_a3[4:0]) :
                         CPU_is_lui_a3 ? ({CPU_imm_a3[31:12], 12'b0}) :
                         CPU_is_auipc_a3 ? CPU_pc_a3 + CPU_imm_a3 :
                         CPU_is_jal_a3 ? CPU_pc_a3 + 4 :
                         CPU_is_jalr_a3 ? CPU_pc_a3 + 4 : 
                         (CPU_is_load_a3 || CPU_is_s_instr_a3) ? CPU_src1_value_a3 + CPU_imm_a3 : 32'bx;
                         
      // Register File Write
         assign CPU_rf_wr_en_a3 = (CPU_rd_valid_a3 && CPU_valid_a3 && CPU_rd_a3 != 5'b0) || CPU_valid_load_a5;
         //_?$rf_wr_en
            assign CPU_rf_wr_index_a3[4:0] = !CPU_valid_a3 ? CPU_rd_a5[4:0] : CPU_rd_a3[4:0];
      
         assign CPU_rf_wr_data_a3[31:0] = !CPU_valid_a3 ? CPU_ld_data_a5[31:0] : CPU_result_a3[31:0];
      
      // Branch
         assign CPU_taken_br_a3 = CPU_is_beq_a3 ? (CPU_src1_value_a3 == CPU_src2_value_a3) :
                     CPU_is_bne_a3 ? (CPU_src1_value_a3 != CPU_src2_value_a3) :
                     CPU_is_blt_a3 ? ((CPU_src1_value_a3 < CPU_src2_value_a3) ^ (CPU_src1_value_a3[31] != CPU_src2_value_a3[31])) :
                     CPU_is_bge_a3 ? ((CPU_src1_value_a3 >= CPU_src2_value_a3) ^ (CPU_src1_value_a3[31] != CPU_src2_value_a3[31])) :
                     CPU_is_bltu_a3 ? (CPU_src1_value_a3 < CPU_src2_value_a3) :
                     CPU_is_bgeu_a3 ? (CPU_src1_value_a3 >= CPU_src2_value_a3) : 1'b0;
                     
         assign CPU_valid_taken_br_a3 = CPU_valid_a3 && CPU_taken_br_a3;
         
      // Load
         assign CPU_valid_load_a3 = CPU_valid_a3 && CPU_is_load_a3;
         assign CPU_valid_a3 = !(CPU_valid_taken_br_a4 || CPU_valid_taken_br_a5 || CPU_valid_load_a4 || CPU_valid_load_a5 || CPU_valid_jump_a4 || CPU_valid_jump_a5);
      
      // Jump
         assign CPU_valid_jump_a3 = CPU_valid_a3 && CPU_is_jump_a3;
                  
      //_@4
         assign CPU_dmem_rd_en_a4 = CPU_valid_load_a4;
         assign CPU_dmem_wr_en_a4 = CPU_valid_a4 && CPU_is_s_instr_a4;
         assign CPU_dmem_addr_a4[3:0] = CPU_result_a4[5:2];
         assign CPU_dmem_wr_data_a4[31:0] = CPU_src2_value_a4[31:0];
         
      //_@5   
         assign CPU_ld_data_a5[31:0] = CPU_dmem_rd_data_a5[31:0];
         
      // Note: Because of the magic we are using for visualisation, if visualisation is enabled below,
      //       be sure to avoid having unassigned signals (which you might be using for random inputs)
      //       other than those specifically expected in the labs. You'll get strange errors for these.

         `BOGUS_USE(CPU_is_beq_a5 CPU_is_bne_a5 CPU_is_blt_a5 CPU_is_bge_a5 CPU_is_bltu_a5 CPU_is_bgeu_a5)
         `BOGUS_USE(CPU_is_sb_a5 CPU_is_sh_a5 CPU_is_sw_a5)
   // Assert these to end simulation (before Makerchip cycle limit).
   /*SV_plus*/
      always @ (posedge clk) begin
         //if (CPU_Xreg_value_a5[17] ==? (1+2+3+4+5+6+7+8+9))
            out = CPU_Xreg_value_a5[14];                
      end
   
   // Macro instantiations for:
   //  o instruction memory
   //  o register file
   //  o data memory
   //  o CPU visualization
   //_|cpu
      //_\source /raw.githubusercontent.com/shivanishah269/riscvcore/master/FPGAImplementation/riscvshelllib.tlv 16   // Instantiated from mythcore_test.tlv, 249 as: m4+imem(@1)    // Args: (read stage)
         // Instruction Memory containing program defined by m4_asm(...) instantiations.
         //_@1
            /*SV_plus*/
               // The program in an instruction memory.
               wire [31:0] instrs [0:12-1];
               assign instrs[0] = {7'b0000000, 5'd0, 5'd0, 3'b000, 5'd14, 7'b0110011}; 
               assign instrs[1] = {12'b101100, 5'd0, 3'b000, 5'd12, 7'b0010011}; 
               assign instrs[2] = {7'b0000000, 5'd0, 5'd0, 3'b000, 5'd13, 7'b0110011}; 
               assign instrs[3] = {7'b0000000, 5'd14, 5'd13, 3'b000, 5'd14, 7'b0110011}; 
               assign instrs[4] = {12'b1, 5'd13, 3'b000, 5'd13, 7'b0010011}; 
               assign instrs[5] = {1'b1, 6'b111111, 5'd12, 5'd13, 3'b100, 4'b1100, 1'b1, 7'b1100011}; 
               assign instrs[6] = {12'b111111111111, 5'd13, 3'b000, 5'd13, 7'b0010011}; 
               assign instrs[7] = {7'b0100000, 5'd13, 5'd14, 3'b000, 5'd14, 7'b0110011}; 
               assign instrs[8] = {1'b1, 6'b111111, 5'd13, 5'd0, 3'b100, 4'b1100, 1'b1, 7'b1100011}; 
               assign instrs[9] = {7'b0000000, 5'd0, 5'd0, 3'b000, 5'd0, 7'b0110011}; 
               assign instrs[10] = {7'b0000000, 5'd0, 5'd0, 3'b000, 5'd0, 7'b0110011}; 
               assign instrs[11] = {1'b1, 6'b111110, 5'd12, 5'd0, 3'b100, 4'b1010, 1'b1, 7'b1100011}; 
                 
            for (imem = 0; imem <= 11; imem=imem+1) begin : L1_CPU_Imem //_/imem
               assign CPU_Imem_instr_a1[imem][31:0] = instrs[imem];
            end
            //_?$imem_rd_en
               assign CPU_imem_rd_data_a1[31:0] = CPU_imem_rd_addr_a1 < 4'd12 ? CPU_Imem_instr_a1[CPU_imem_rd_addr_a1] : 32'b0;
          
      //_\end_source    // Args: (read stage)
      //_\source /raw.githubusercontent.com/shivanishah269/riscvcore/master/FPGAImplementation/riscvshelllib.tlv 31   // Instantiated from mythcore_test.tlv, 250 as: m4+rf(@2, @3)  // Args: (read stage, write stage) - if equal, no register bypass is required
         // Reg File
         //_@3
            for (xreg = 0; xreg <= 31; xreg=xreg+1) begin : L1_CPU_Xreg //_/xreg

               // For $wr.
               wire L1_wr_a3;

               assign L1_wr_a3 = CPU_rf_wr_en_a3 && (CPU_rf_wr_index_a3 != 5'b0) && (CPU_rf_wr_index_a3 == xreg);
               assign CPU_Xreg_value_a3[xreg][31:0] = CPU_reset_a3 ?   xreg           :
                              L1_wr_a3        ?   CPU_rf_wr_data_a3 :
                                             CPU_Xreg_value_a4[xreg][31:0];
            end
         //_@2
            //_?$rf_rd_en1
               assign CPU_rf_rd_data1_a2[31:0] = CPU_Xreg_value_a4[CPU_rf_rd_index1_a2];
            //_?$rf_rd_en2
               assign CPU_rf_rd_data2_a2[31:0] = CPU_Xreg_value_a4[CPU_rf_rd_index2_a2];
            `BOGUS_USE(CPU_rf_rd_data1_a2 CPU_rf_rd_data2_a2) 
      //_\end_source  // Args: (read stage, write stage) - if equal, no register bypass is required
      //_\source /raw.githubusercontent.com/shivanishah269/riscvcore/master/FPGAImplementation/riscvshelllib.tlv 48   // Instantiated from mythcore_test.tlv, 251 as: m4+dmem(@4)    // Args: (read/write stage)
         // Data Memory
         //_@4
            for (dmem = 0; dmem <= 15; dmem=dmem+1) begin : L1_CPU_Dmem //_/dmem

               // For $wr.
               wire L1_wr_a4;

               assign L1_wr_a4 = CPU_dmem_wr_en_a4 && (CPU_dmem_addr_a4 == dmem);
               assign CPU_Dmem_value_a4[dmem][31:0] = CPU_reset_a4 ?   dmem :
                              L1_wr_a4        ?   CPU_dmem_wr_data_a4 :
                                             CPU_Dmem_value_a5[dmem][31:0];
                                        
            end
            //_?$dmem_rd_en
               assign CPU_dmem_rd_data_a4[31:0] = CPU_Dmem_value_a5[CPU_dmem_addr_a4];
            //`BOGUS_USE($dmem_rd_data)
      //_\end_source    // Args: (read/write stage)
endgenerate

     
//_\SV
   
   endmodule
```

* Terminal commands to generate .vcd file for rvmyth: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/13_mythcore_cmd"><br><br>

* Simulation results for rvmyth on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/14_mythcore_simulation"><br><br>

**Interfacing rvmyth and DAC**:<br><br>

* Terminal commands to generate .vcd file for interface of rvmyth and DAC: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/8_rvmyth_dac_cmd"><br><br>

* Simulation results for interface of rvmyth and DAC on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/9_rvmyth_dac_simulation"><br><br>

**Interfacing rvmyth and PLL**:<br><br>

* Terminal commands to generate .vcd file for interface of rvmyth and PLL: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/10_rvmyth_pll_cmd"><br><br>

* Simulation results for interface of rvmyth and PLL on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/11_rvmyth_pll_simulation"><br><br>

**Interfacing rvmyth, DAC and PLL**:<br><br>

* Terminal commands to generate .vcd file for interface of rvmyth, DAC and PLL: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/15_all_cmdf"><br><br>

* Simulation results for interface of rvmyth, DAC and PLL on GTKWAVE: <br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/16_all_simulation"><br><br>
<img width="900" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day_12_updated/17_all_simulation"><br><br>

</details>

<details>
<summary>4 Bit UP-Down Counter</summary>

Verilog Code: <br><br>


```ruby

// DESIGN FILE

module counter_4 (input clk, direc, rst, output [3:0] counter);

reg [3:0] count = 0 ;

assign counter = count;

always @ (posedge clk)
	
begin
case ({rst, direc})
2'b10:
	begin
	count = 4'b0000;
	end
2'b11:
	begin
	count = 4'b0000;
	end
2'b01:
	begin
	count = count + 1;
	if (count == 4'b1111)
	count = 4'b0000;
	end
2'b00:
	begin
	count = count - 1;
	if (count == 4'b0000)
	count = 4'b1111;
	end	

default: count = 4'b0000;

endcase
end

endmodule

// TESTBENCH

module counter_4_tb ();
reg clk = 0, direc, rst;
wire [3:0] counter;

counter_4 DUT (clk, direc, rst, counter);

always #5 clk = ~clk;

initial
begin
	rst = 1;
#20	rst = 0 ;direc = 1;
#200	direc = 0;

end

initial 
begin
	$dumpfile("counter_4_tb.vcd");
	$dumpvars;
	#400 $finish;
end

endmodule
```

* The provided code implements a 4-bit up-down synchronous counter. Its behavior is determined by the 'direc' signal: when 'direc' is high, the counter increments by one on the next positive edge of clock cycle, and when 'direc' is low, the counter decrements by one on the next positive edge of clock cycle.<br>

* In the case of an up counter, when the counter reaches its maximum value, it resets to one. In contrast, for a down counter, when the counter reaches its minimum value, it resets to its maximum possible value. The 'rst' signal is employed to reset the counter's output value.<br><br>
  
* Terminal screenshot to generate the vcd file: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/42bdb8f61dff35841708b884e17c3d8564f9eda7/day12/3_commandpromopt_counter"><br><br>

* Simulation result for the up-down counter: <br><br>
<img width="900" alt="https://github.com/mynkv/Samsung-PD-/blob/1504b07642b295536263c2771347bee9780ffd5b/day12/18_counter_new_simulation"><br><br>

</details>


## Day-13-Post Synthesis-Simulation

<details>
<summary>Post-Synthesis of BabySoC</summary>

The commands used for generating the out netlist are as follows:: 

```ruby
read_verilog mythcore_test.v
link
compile_ultra
current_design core
write -f verilog -out rvmyth_net.v
```
* The netlist being written here as out is the output of the clk_gate as it is default in code, so the current_design is changed to core.<br>
* Screenshor for the above commands is provided below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/1_mythcore_lib_read.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/2_mythcore_link_netist.png"><br><br>


Netlist for the rvmyth is shown below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/3_mythcore_netlist.png"><br><br>


* To simulate the netlist for gls, the commands are shown below:<br><br
									    >
```ruby
iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 rvmyth_net.v testbench.v primitives.v sky130_fd_sc_hd.v avsddac.v avsdpll.v vsdbabysoc.v
./a.out
gtkwave dump.vcd
```
GLS of the rvmyth design is shown below:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/4_mythcore_gls.png"><br><br>


The processor output increments in the same way as at the pre-synthesis stage. So, the logic is properly defined. The output of Pre-Synthesis simulation and Post-synthesis simulation are obtained same. Hence the logical correctness of the design is verified.<br>

</details>
	

<details>
<summary>Post Synthesis of 4 bit up down counter</summary><br>

For post synthesis simulation of up down countyer, we first generate the netlist of thye design. Commands to generate the netlist of the design are shown in the tcl script below: <br><br> 

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/6_tcl_counter"><br><br>

Screenshot for the read and compile are shown below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/7_counter_read_compile"><br><br>

Generated netlist of the design is shown below:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/8_counter_netlist"><br><br>

The following are the sequnece of steps for simulating the gls.

```ruby
iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 counter_net.v counter_4_tb.v primitives.v sky130_fd_sc_hd.v 
./a.out
gtkwave counter_4_tb.vcd 
```

The iverilog command uses the simulated gatelevel netlist and the same testbench for post-synthesis simulation. The ./a.out dumps the vcd format file with respect to netlist. The gtkwave is used to view the waveform. GLS of the design is shown below:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/9_counter_gls"><br><br>

So, The output of post-synthesis and pre-synthesis exactly matches so the logical corectness of the design is verified.

The following sequence of commands writes the netlist and ddc format as follows: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/6_tcl_counter"><br><br>

GUI of the design is as follows: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/93fd5ef227f301c946742f249b218f1a075b93ff/day13/10_counter_gui"><br><br>

</details>

## Day-14-QOR

<details>
<summary>Post-Synthesis of BabySoC</summary>

The commands used for generating the out netlist are as follows:: 

```ruby
read_verilog mythcore_test.v
link
compile_ultra
current_design core
write -f verilog -out rvmyth_net.v
```
* The netlist being written here as out is the output of the clk_gate as it is default in code, so the current_design is changed to core.<br>
* Screenshor for the above commands is provided below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/1_mythcore_lib_read.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/2_mythcore_link_netist.png"><br><br>


Netlist for the rvmyth is shown below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/3_mythcore_netlist.png"><br><br>


* To simulate the netlist for gls, the commands are shown below:<br><br
									    >
```ruby
iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 rvmyth_net.v testbench.v primitives.v sky130_fd_sc_hd.v avsddac.v avsdpll.v vsdbabysoc.v
./a.out
gtkwave dump.vcd
```
GLS of the rvmyth design is shown below:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ec9c3ab5baccf47030a6af26ab001f15bd937df6/day13/4_mythcore_gls.png"><br><br>


The processor output increments in the same way as at the pre-synthesis stage. So, the logic is properly defined. The output of Pre-Synthesis simulation and Post-synthesis simulation are obtained same. Hence the logical correctness of the design is verified.<br>

</details>



## Day-14-Synopsys DC and timing analysis

<details>
<summary>PVT</summary><br>

**PVT**:<br><br>

PVT refers to the three key factors that affect the performance and behavior of integrated circuits:<br>

1. **Process**: This factor accounts for the variations in manufacturing that result in differences in transistor characteristics across a single chip. These variations can be described using terms like "tt" (typical-typical), "ff" (fast-fast), "ss" (slow-slow), "fs" (fast-slow), and "sf" (slow-fast) to characterize different transistor behaviors across the chip's surface.<br>

2. **Voltage**: Voltage refers to the varying electrical potential on the chip during its operation. Fluctuations in voltage can be caused by various factors, such as voltage drops in input/output (IO) lines or supply noise resulting from parasitic inductance.<br>

3. **Temperature**: Temperature is the measure of the chip's heat during operation, primarily caused by power dissipation in the MOS transistors. Temperature fluctuations can significantly impact the performance and timing of the circuit elements on the chip.<br><br>

So, PVT analysis takes into account the interplay of these three factors to understand and optimize the behavior of integrated circuits.<br><br>

**PVT Corners**: These are specific sets of conditions that designers consider when developing integrated circuits. These conditions represent different combinations of Process, Voltage, and Temperature (PVT) parameters and are essential for ensuring that the chip functions reliably in a variety of real-world scenarios. Each PVT corner represents a distinct set of environmental and operational conditions that can affect the performance and behavior of the integrated circuit. Designers analyze the chip's behavior under these PVT corners to guarantee its functionality across a range of situations. <br><br>

**PVT terminologies**: <br><br>

**WNS**: <br>
* Negative slack, in this context, indicates that a signal is failing to meet its timing requirement. "Worst Negative Slack" identifies the most significant timing violation in a circuit, meaning it represents the scenario where a signal is failing to meet its timing constraint by the largest margin, potentially indicating a critical issue that needs attention.<br>
* Designers use Worst Negative Slack information to identify and address the most critical timing problems in a design, which is crucial for ensuring that the integrated circuit operates reliably and as intended.<br><br>


**TNS**:<br>
* Negative slack indicates that a particular timing path or signal in the circuit is failing to meet its timing constraint. Total Negative Slack, therefore, adds up all the individual negative slack values from various timing paths within the circuit to give an overall measure of how far the entire circuit is from meeting its timing requirements.<br>
* Designers use Total Negative Slack to assess the overall timing performance of a design and to identify areas where timing violations are most critical. Reducing TNS is a crucial step in optimizing a design to ensure that it operates reliably and meets its intended functionality.<br>

</details>

<details>
<summary>Labs on PVT Corners</summary><br>

* Our primary objective is to assess the timing characteristics of our designed circuit under diverse conditions, encompassing Process (variations in manufacturing), Voltage (fluctuations in power supply), and Temperature (variations in heat). Collectively, these factors are known as PVT corners. Understanding how these factors impact our circuit's performance is vital to ensure its reliability and adherence to specified timing criteria.<br>

* In our analysis, we conducted synthesis for the design while accounting for various PVT corners. We focused on evaluating three critical timing parameters: Total Negative Slack (TNS), Worst Negative Slack (WNS), and Worst Hold Slack (WHS). TNS offers a comprehensive evaluation of timing issues across the entire design, while WNS and WHS help identify the most critical timing challenges, including setup and hold violations.<br>

* Before commencing the synthesis process with Synopsys Design Compiler (dc_shell), it's crucial to transform the necessary .lib files into a compatible .db format using lc_shell. The commands employed for converting a .lib file to a .db file are as follows:<br><br>

```ruby
csh
lc_shell
read_lib <library_name>
write_lib <library_name> -f db -o <name_of_the_db_file>
```

* Constraint file used in the design is: <br><br>

```ruby
set_units -time ns;
create_clock -name MYCLK -per 2 [get_pins {pll/CLK}];

set_clock_latency -source 1 [get_clocks MYCLK]
set_clock_uncertainty -setup 0.5 [get_clocks MYCLK]; 
set_clock_uncertainty -hold 0.4 [get_clocks MYCLK]; 

set_input_delay -max 1 -clock \[get_clocks MYCLK] [all_inputs];
set_input_delay -min 0.5 -clock \[get_clocks MYCLK] [all_inputs];
set_output_delay -max 1 -clock \[get_clocks MYCLK] [all_outputs];
set_output_delay -min 0.5 -clock \[get_clocks MYCLK] [all_outputs];

set_input_transition -max 0.2 \[all_inputs];
set_input_transition -min 0.1 \[all_inputs];

set_max_area  800;

set_load -max 0.2 \[all_outputs];
set_load -min 0.1 \[all_outputs];
```

* To test the various PVT corners in the design, it's necessary to navigate to dc_shell and configure the required libraries accordingly. Below is a script for accomplishing this task: <br><br>

```ruby
set target_library { <sky130_PVT_corner> , avsddac.db , avsdpll.db}
set link_library {* sky130_PVT_corner> , avsddac.db , avsdpll.db}
read_verilog vsdbabysoc.v
link
source <constraints_file_name>
compile_ultra
report_qor
```

The reports below depict the setup delay and the Quality of Results (QoR) across various PVT corners: <br><br>

1. sky130_fd_sc_hd__ff_100C_1v65: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:06:47 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_rd_a3_reg[4]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[30][0]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_rd_a3_reg[4]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_rd_a3_reg[4]/Q (sky130_fd_sc_hd__dfxtp_2)     0.28       1.28 r
  core1/U338/Y (sky130_fd_sc_hd__inv_2)                   0.05       1.32 f
  core1/U337/Y (sky130_fd_sc_hd__nand4_1)                 0.06       1.38 r
  core1/U334/Y (sky130_fd_sc_hd__nand2_1)                 0.05       1.43 f
  core1/U333/Y (sky130_fd_sc_hd__inv_2)                   0.09       1.52 r
  core1/U2117/X (sky130_fd_sc_hd__and3_4)                 0.18       1.70 r
  core1/U3875/X (sky130_fd_sc_hd__and2_1)                 0.15       1.86 r
  core1/U3876/Y (sky130_fd_sc_hd__inv_4)                  0.10       1.95 f
  core1/U465/X (sky130_fd_sc_hd__and2_1)                  0.13       2.08 f
  core1/U557/Y (sky130_fd_sc_hd__inv_1)                   0.23       2.32 r
  core1/U5021/Y (sky130_fd_sc_hd__o22ai_1)                0.08       2.40 f
  core1/CPU_Xreg_value_a4_reg[30][0]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.40 f
  data arrival time                                                  2.40

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[30][0]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.10       2.40
  data required time                                                 2.40
  --------------------------------------------------------------------------
  data required time                                                 2.40
  data arrival time                                                 -2.40
  --------------------------------------------------------------------------
  slack (MET)                                                        0.00


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:06:58 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              10.00
  Critical Path Length:          1.40
  Critical Path Slack:           0.00
  Critical Path Clk Period:      2.00
  Total Negative Slack:          0.00
  No. of Violating Paths:        0.00
  Worst Hold Violation:         -0.15
  Total Hold Violation:        -50.27
  No. of Hold Violations:     1072.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6241
  Buf/Inv Cell Count:            1639
  Buf Cell Count:                  34
  Inv Cell Count:                1605
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5049
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    26460.377207
  Noncombinational Area: 23902.924046
  Buf/Inv Area:           6286.028610
  Total Buffer Area:           218.96
  Total Inverter Area:        6067.07
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             50363.301252
  Design Area:           50363.301252


  Design Rules
  -----------------------------------
  Total Number of Nets:          6248
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.14
  Logic Optimization:                 10.68
  Mapping Optimization:                8.86
  -----------------------------------------
  Overall Compile Time:               35.82
  Overall Compile Wall Clock Time:    36.84

  --------------------------------------------------------------------

  Design  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0


  Design (Hold)  WNS: 0.15  TNS: 50.27  Number of Violating Paths: 1072

  --------------------------------------------------------------------

```


2. sky130_fd_sc_hd__ff_100C_1v95: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:09:37 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_rd_a3_reg[0]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_src2_value_a3_reg[16]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_rd_a3_reg[0]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_rd_a3_reg[0]/Q (sky130_fd_sc_hd__dfxtp_2)     0.24       1.24 r
  core1/U225/Y (sky130_fd_sc_hd__inv_1)                   0.04       1.28 f
  core1/U226/Y (sky130_fd_sc_hd__nand2_1)                 0.06       1.34 r
  core1/U227/X (sky130_fd_sc_hd__o21a_4)                  0.10       1.44 r
  core1/U375/X (sky130_fd_sc_hd__and3_2)                  0.17       1.61 r
  core1/U376/Y (sky130_fd_sc_hd__inv_6)                   0.07       1.67 f
  core1/U397/Y (sky130_fd_sc_hd__nand3_1)                 0.05       1.72 r
  core1/U398/Y (sky130_fd_sc_hd__inv_1)                   0.07       1.79 f
  core1/U140/X (sky130_fd_sc_hd__and2_1)                  0.14       1.94 f
  core1/U193/Y (sky130_fd_sc_hd__inv_1)                   0.17       2.11 r
  core1/U3532/Y (sky130_fd_sc_hd__o22ai_1)                0.04       2.15 f
  core1/U3536/Y (sky130_fd_sc_hd__nor4_1)                 0.14       2.29 r
  core1/U3552/X (sky130_fd_sc_hd__and4_1)                 0.12       2.41 r
  core1/U3553/Y (sky130_fd_sc_hd__o21ai_1)                0.02       2.43 f
  core1/CPU_src2_value_a3_reg[16]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.43 f
  data arrival time                                                  2.43

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_src2_value_a3_reg[16]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.07       2.43
  data required time                                                 2.43
  --------------------------------------------------------------------------
  data required time                                                 2.43
  data arrival time                                                 -2.43
  --------------------------------------------------------------------------
  slack (MET)                                                        0.00


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:09:42 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              13.00
  Critical Path Length:          1.43
  Critical Path Slack:           0.00
  Critical Path Clk Period:      2.00
  Total Negative Slack:          0.00
  No. of Violating Paths:        0.00
  Worst Hold Violation:         -0.20
  Total Hold Violation:       -125.64
  No. of Hold Violations:     1134.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               5589
  Buf/Inv Cell Count:            1319
  Buf Cell Count:                   1
  Inv Cell Count:                1318
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      4397
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    23178.479759
  Noncombinational Area: 23867.890450
  Buf/Inv Area:           4962.259045
  Total Buffer Area:             5.00
  Total Inverter Area:        4957.25
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             47046.370209
  Design Area:           47046.370209


  Design Rules
  -----------------------------------
  Total Number of Nets:          5595
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.16
  Logic Optimization:                  5.38
  Mapping Optimization:                3.66
  -----------------------------------------
  Overall Compile Time:               25.08
  Overall Compile Wall Clock Time:    26.05

  --------------------------------------------------------------------

  Design  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0


  Design (Hold)  WNS: 0.20  TNS: 125.64  Number of Violating Paths: 1134

  --------------------------------------------------------------------

```



3. sky130_fd_sc_hd__ff_n40C_1v56: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:11:32 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[9]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[23][31]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[9]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[9]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          0.34       1.34 r
  core1/U1624/Y (sky130_fd_sc_hd__inv_1)                  0.05       1.39 f
  core1/U528/Y (sky130_fd_sc_hd__nand2_2)                 0.06       1.45 r
  core1/U529/Y (sky130_fd_sc_hd__nand2_1)                 0.05       1.49 f
  core1/U1920/Y (sky130_fd_sc_hd__nand2_2)                0.06       1.55 r
  core1/U1938/Y (sky130_fd_sc_hd__a21oi_2)                0.04       1.60 f
  core1/U1719/Y (sky130_fd_sc_hd__o21ai_1)                0.11       1.71 r
  core1/U1718/Y (sky130_fd_sc_hd__inv_1)                  0.05       1.76 f
  core1/U1817/Y (sky130_fd_sc_hd__nand2_2)                0.10       1.86 r
  core1/U1816/Y (sky130_fd_sc_hd__inv_6)                  0.05       1.91 f
  core1/U1705/Y (sky130_fd_sc_hd__o21ai_1)                0.16       2.07 r
  core1/U1978/Y (sky130_fd_sc_hd__xnor2_1)                0.12       2.19 r
  core1/U596/Y (sky130_fd_sc_hd__nand2_1)                 0.06       2.26 f
  core1/U593/Y (sky130_fd_sc_hd__nand3_2)                 0.08       2.34 r
  core1/U598/Y (sky130_fd_sc_hd__nand2_1)                 0.05       2.39 f
  core1/U597/Y (sky130_fd_sc_hd__inv_2)                   0.08       2.48 r
  core1/U4159/Y (sky130_fd_sc_hd__inv_2)                  0.05       2.53 f
  core1/U4160/Y (sky130_fd_sc_hd__o22ai_1)                0.09       2.61 r
  core1/CPU_Xreg_value_a4_reg[23][31]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.61 r
  data arrival time                                                  2.61

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[23][31]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.07       2.43
  data required time                                                 2.43
  --------------------------------------------------------------------------
  data required time                                                 2.43
  data arrival time                                                 -2.61
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -0.19


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:13:01 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              17.00
  Critical Path Length:          1.61
  Critical Path Slack:          -0.19
  Critical Path Clk Period:      2.00
  Total Negative Slack:       -141.44
  No. of Violating Paths:      961.00
  Worst Hold Violation:         -0.11
  Total Hold Violation:         -7.19
  No. of Hold Violations:      340.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6564
  Buf/Inv Cell Count:            1882
  Buf Cell Count:                  49
  Inv Cell Count:                1833
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5372
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    28169.516380
  Noncombinational Area: 24209.468121
  Buf/Inv Area:           7312.012583
  Total Buffer Area:           359.09
  Total Inverter Area:        6952.92
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             52378.984500
  Design Area:           52378.984500


  Design Rules
  -----------------------------------
  Total Number of Nets:          6603
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.20
  Logic Optimization:                 12.92
  Mapping Optimization:               65.78
  -----------------------------------------
  Overall Compile Time:              101.08
  Overall Compile Wall Clock Time:   102.68

  --------------------------------------------------------------------

  Design  WNS: 0.19  TNS: 141.44  Number of Violating Paths: 961


  Design (Hold)  WNS: 0.11  TNS: 7.19  Number of Violating Paths: 340

  --------------------------------------------------------------------
```

4. sky130_fd_sc_hd__ff_n40C_1v65: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:14:20 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[0]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[27][22]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[0]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[0]/Q (sky130_fd_sc_hd__dfxtp_2)
                                                          0.28       1.28 r
  core1/U2511/Y (sky130_fd_sc_hd__nand2_2)                0.05       1.34 f
  core1/U2055/Y (sky130_fd_sc_hd__o21ai_2)                0.15       1.48 r
  core1/U2518/Y (sky130_fd_sc_hd__a21oi_2)                0.06       1.54 f
  core1/U2526/Y (sky130_fd_sc_hd__o21ai_2)                0.12       1.66 r
  core1/U2018/Y (sky130_fd_sc_hd__a21oi_2)                0.05       1.71 f
  core1/U2551/X (sky130_fd_sc_hd__buf_6)                  0.12       1.84 f
  core1/U2842/Y (sky130_fd_sc_hd__o21ai_1)                0.13       1.97 r
  core1/U2843/Y (sky130_fd_sc_hd__xnor2_1)                0.10       2.07 r
  core1/U2844/Y (sky130_fd_sc_hd__nand2_1)                0.05       2.13 f
  core1/U2845/Y (sky130_fd_sc_hd__nand3_2)                0.10       2.22 r
  core1/U776/Y (sky130_fd_sc_hd__nand2_1)                 0.05       2.27 f
  core1/U4015/Y (sky130_fd_sc_hd__inv_2)                  0.07       2.34 r
  core1/U4785/Y (sky130_fd_sc_hd__inv_2)                  0.04       2.39 f
  core1/U4795/Y (sky130_fd_sc_hd__o22ai_1)                0.08       2.46 r
  core1/CPU_Xreg_value_a4_reg[27][22]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.46 r
  data arrival time                                                  2.46

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[27][22]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.06       2.44
  data required time                                                 2.44
  --------------------------------------------------------------------------
  data required time                                                 2.44
  data arrival time                                                 -2.46
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -0.02


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:14:27 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              14.00
  Critical Path Length:          1.46
  Critical Path Slack:          -0.02
  Critical Path Clk Period:      2.00
  Total Negative Slack:         -7.19
  No. of Violating Paths:      683.00
  Worst Hold Violation:         -0.14
  Total Hold Violation:        -42.68
  No. of Hold Violations:     1064.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6493
  Buf/Inv Cell Count:            1783
  Buf Cell Count:                  64
  Inv Cell Count:                1719
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5301
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    27817.929247
  Noncombinational Area: 24028.044067
  Buf/Inv Area:           6864.082992
  Total Buffer Area:           339.08
  Total Inverter Area:        6525.01
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             51845.973315
  Design Area:           51845.973315


  Design Rules
  -----------------------------------
  Total Number of Nets:          6501
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.15
  Logic Optimization:                 15.10
  Mapping Optimization:               33.05
  -----------------------------------------
  Overall Compile Time:               70.04
  Overall Compile Wall Clock Time:    71.42

  --------------------------------------------------------------------

  Design  WNS: 0.02  TNS: 7.19  Number of Violating Paths: 683


  Design (Hold)  WNS: 0.14  TNS: 42.68  Number of Violating Paths: 1064

  --------------------------------------------------------------------

```

5. sky130_fd_sc_hd__ff_n40C_1v76: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:15:15 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_rd_a3_reg[0]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_src1_value_a3_reg[28]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_rd_a3_reg[0]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_rd_a3_reg[0]/Q (sky130_fd_sc_hd__dfxtp_2)     0.23       1.23 f
  core1/U600/Y (sky130_fd_sc_hd__inv_1)                   0.05       1.28 r
  core1/U601/Y (sky130_fd_sc_hd__inv_1)                   0.04       1.32 f
  core1/U986/Y (sky130_fd_sc_hd__xnor2_1)                 0.09       1.41 f
  core1/U987/Y (sky130_fd_sc_hd__nand4_1)                 0.07       1.48 r
  core1/U988/Y (sky130_fd_sc_hd__clkinv_1)                0.04       1.52 f
  core1/U266/Y (sky130_fd_sc_hd__nand2_1)                 0.13       1.66 r
  core1/U299/X (sky130_fd_sc_hd__and2_1)                  0.14       1.80 r
  core1/U330/X (sky130_fd_sc_hd__and2_1)                  0.17       1.97 r
  core1/U1787/Y (sky130_fd_sc_hd__clkinv_1)               0.13       2.10 f
  core1/U2333/X (sky130_fd_sc_hd__clkbuf_1)               0.13       2.24 f
  core1/U2334/Y (sky130_fd_sc_hd__o22ai_1)                0.11       2.35 r
  core1/U2335/Y (sky130_fd_sc_hd__nor4_1)                 0.04       2.38 f
  core1/U2341/Y (sky130_fd_sc_hd__o211ai_1)               0.06       2.45 r
  core1/CPU_src1_value_a3_reg[28]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.45 r
  data arrival time                                                  2.45

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_src1_value_a3_reg[28]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.05       2.45
  data required time                                                 2.45
  --------------------------------------------------------------------------
  data required time                                                 2.45
  data arrival time                                                 -2.45
  --------------------------------------------------------------------------
  slack (MET)                                                        0.00


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:16:49 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              13.00
  Critical Path Length:          1.45
  Critical Path Slack:           0.00
  Critical Path Clk Period:      2.00
  Total Negative Slack:          0.00
  No. of Violating Paths:        0.00
  Worst Hold Violation:         -0.18
  Total Hold Violation:        -86.34
  No. of Hold Violations:     1082.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6097
  Buf/Inv Cell Count:            1589
  Buf Cell Count:                  21
  Inv Cell Count:                1568
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      4905
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    25533.238103
  Noncombinational Area: 23901.672846
  Buf/Inv Area:           5973.228612
  Total Buffer Area:            87.58
  Total Inverter Area:        5885.64
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             49434.910949
  Design Area:           49434.910949


  Design Rules
  -----------------------------------
  Total Number of Nets:          6103
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.16
  Logic Optimization:                  8.63
  Mapping Optimization:               10.98
  -----------------------------------------
  Overall Compile Time:               37.86
  Overall Compile Wall Clock Time:    38.90

  --------------------------------------------------------------------

  Design  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0


  Design (Hold)  WNS: 0.18  TNS: 86.34  Number of Violating Paths: 1082

  --------------------------------------------------------------------
```

6. sky130_fd_sc_hd__ss_100C_1v40: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:19:48 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[9]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[18][25]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[9]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[9]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          1.18       2.18 r
  core1/U198/Y (sky130_fd_sc_hd__nand2_4)                 0.26       2.44 f
  core1/U169/Y (sky130_fd_sc_hd__nand2_2)                 0.13       2.57 r
  core1/U161/Y (sky130_fd_sc_hd__nand2_2)                 0.12       2.69 f
  core1/U160/Y (sky130_fd_sc_hd__nand2_2)                 0.15       2.84 r
  core1/U135/Y (sky130_fd_sc_hd__nand2_4)                 0.14       2.98 f
  core1/U163/Y (sky130_fd_sc_hd__a21oi_4)                 0.40       3.38 r
  core1/U162/Y (sky130_fd_sc_hd__nand2_4)                 0.36       3.74 f
  core1/U170/Y (sky130_fd_sc_hd__o21ai_2)                 0.34       4.08 r
  core1/U2400/Y (sky130_fd_sc_hd__xnor2_1)                0.22       4.30 f
  core1/U2401/Y (sky130_fd_sc_hd__nand2_1)                0.16       4.45 r
  core1/U2417/Y (sky130_fd_sc_hd__nand3_2)                0.25       4.70 f
  core1/U4017/Y (sky130_fd_sc_hd__nand2_2)                0.18       4.89 r
  core1/U331/Y (sky130_fd_sc_hd__inv_2)                   0.13       5.02 f
  core1/U4031/Y (sky130_fd_sc_hd__inv_1)                  0.18       5.20 r
  core1/U5137/Y (sky130_fd_sc_hd__o22ai_1)                0.18       5.38 f
  core1/CPU_Xreg_value_a4_reg[18][25]/D (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00       5.38 f
  data arrival time                                                  5.38

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[18][25]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00       2.50 r
  library setup time                                     -0.50       2.00
  data required time                                                 2.00
  --------------------------------------------------------------------------
  data required time                                                 2.00
  data arrival time                                                 -5.38
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -3.38


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:19:52 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              15.00
  Critical Path Length:          4.38
  Critical Path Slack:          -3.38
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -3488.63
  No. of Violating Paths:     1121.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               7123
  Buf/Inv Cell Count:            2101
  Buf Cell Count:                  52
  Inv Cell Count:                2049
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5931
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    30317.826791
  Noncombinational Area: 25132.853989
  Buf/Inv Area:           8305.465363
  Total Buffer Area:           399.13
  Total Inverter Area:        7906.33
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             55450.680780
  Design Area:           55450.680780


  Design Rules
  -----------------------------------
  Total Number of Nets:          7130
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.24
  Logic Optimization:                 14.62
  Mapping Optimization:               90.50
  -----------------------------------------
  Overall Compile Time:              124.93
  Overall Compile Wall Clock Time:   127.22

  --------------------------------------------------------------------

  Design  WNS: 3.38  TNS: 3488.63  Number of Violating Paths: 1121


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  --------------------------------------------------------------------

```

7. sky130_fd_sc_hd__ss_100C_1v60: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:21:26 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[2]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[22][29]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[2]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[2]/Q (sky130_fd_sc_hd__dfxtp_2)
                                                          0.71       1.71 r
  core1/U1290/Y (sky130_fd_sc_hd__nand2_2)                0.13       1.84 f
  core1/U1292/Y (sky130_fd_sc_hd__o21ai_1)                0.20       2.05 r
  core1/U822/Y (sky130_fd_sc_hd__inv_1)                   0.10       2.14 f
  core1/U371/Y (sky130_fd_sc_hd__nand2_1)                 0.09       2.23 r
  core1/U370/Y (sky130_fd_sc_hd__nand2_1)                 0.10       2.33 f
  core1/U816/Y (sky130_fd_sc_hd__nand2_1)                 0.11       2.44 r
  core1/U815/Y (sky130_fd_sc_hd__nand2_1)                 0.12       2.56 f
  core1/U871/Y (sky130_fd_sc_hd__nand2_2)                 0.17       2.73 r
  core1/U72/Y (sky130_fd_sc_hd__inv_6)                    0.12       2.85 f
  core1/U658/Y (sky130_fd_sc_hd__o21ai_1)                 0.23       3.08 r
  core1/U657/Y (sky130_fd_sc_hd__xnor2_1)                 0.16       3.25 f
  core1/U656/Y (sky130_fd_sc_hd__nand2_1)                 0.11       3.36 r
  core1/U103/Y (sky130_fd_sc_hd__nand3_2)                 0.17       3.53 f
  core1/U102/Y (sky130_fd_sc_hd__nand2_2)                 0.14       3.67 r
  core1/U2394/Y (sky130_fd_sc_hd__inv_1)                  0.11       3.78 f
  core1/U2592/Y (sky130_fd_sc_hd__inv_1)                  0.12       3.90 r
  core1/U4195/Y (sky130_fd_sc_hd__o22ai_1)                0.12       4.02 f
  core1/CPU_Xreg_value_a4_reg[22][29]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       4.02 f
  data arrival time                                                  4.02

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[22][29]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.30       2.20
  data required time                                                 2.20
  --------------------------------------------------------------------------
  data required time                                                 2.20
  data arrival time                                                 -4.02
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -1.83


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:21:31 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              17.00
  Critical Path Length:          3.02
  Critical Path Slack:          -1.83
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -1884.76
  No. of Violating Paths:     1118.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6555
  Buf/Inv Cell Count:            1878
  Buf Cell Count:                 126
  Inv Cell Count:                1752
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5363
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    29112.921119
  Noncombinational Area: 24115.628086
  Buf/Inv Area:           7604.793392
  Total Buffer Area:           848.31
  Total Inverter Area:        6756.48
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             53228.549205
  Design Area:           53228.549205


  Design Rules
  -----------------------------------
  Total Number of Nets:          6574
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.24
  Logic Optimization:                 14.47
  Mapping Optimization:               49.41
  -----------------------------------------
  Overall Compile Time:               83.41
  Overall Compile Wall Clock Time:    84.97

  --------------------------------------------------------------------

  Design  WNS: 1.83  TNS: 1884.76  Number of Violating Paths: 1118


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  --------------------------------------------------------------------

```

8. sky130_fd_sc_hd__ss_n40C_1v28: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:23:58 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[1]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[18][18]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[1]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[1]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          1.88       2.88 f
  core1/U794/Y (sky130_fd_sc_hd__inv_2)                   0.36       3.24 r
  core1/U792/Y (sky130_fd_sc_hd__nand2_4)                 0.22       3.46 f
  core1/U972/Y (sky130_fd_sc_hd__nand2_2)                 0.28       3.74 r
  core1/U401/Y (sky130_fd_sc_hd__nand2_2)                 0.23       3.97 f
  core1/U400/Y (sky130_fd_sc_hd__nand3_2)                 0.32       4.29 r
  core1/U873/Y (sky130_fd_sc_hd__nand3_2)                 0.29       4.58 f
  core1/U52/Y (sky130_fd_sc_hd__nand2_1)                  0.32       4.90 r
  core1/U801/Y (sky130_fd_sc_hd__nand2_1)                 0.26       5.16 f
  core1/U939/Y (sky130_fd_sc_hd__nand2_1)                 0.30       5.46 r
  core1/U870/Y (sky130_fd_sc_hd__nand2_2)                 0.28       5.73 f
  core1/U869/Y (sky130_fd_sc_hd__inv_4)                   0.71       6.44 r
  core1/U1042/Y (sky130_fd_sc_hd__o21bai_2)               0.54       6.98 f
  core1/U1277/Y (sky130_fd_sc_hd__xnor2_1)                0.98       7.96 r
  core1/U1161/Y (sky130_fd_sc_hd__nand2_1)                0.56       8.52 f
  core1/U1160/Y (sky130_fd_sc_hd__nand3_2)                0.43       8.95 r
  core1/U181/Y (sky130_fd_sc_hd__nand2_2)                 0.30       9.25 f
  core1/U1159/Y (sky130_fd_sc_hd__inv_2)                  0.54       9.79 r
  core1/U3260/Y (sky130_fd_sc_hd__inv_4)                  0.39      10.18 f
  core1/U5008/Y (sky130_fd_sc_hd__o22ai_1)                0.59      10.77 r
  core1/CPU_Xreg_value_a4_reg[18][18]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00      10.77 r
  data arrival time                                                 10.77

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[18][18]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.68       1.82
  data required time                                                 1.82
  --------------------------------------------------------------------------
  data required time                                                 1.82
  data arrival time                                                -10.77
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -8.95


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:24:05 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              19.00
  Critical Path Length:          9.77
  Critical Path Slack:          -8.95
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -9629.38
  No. of Violating Paths:     1192.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               7273
  Buf/Inv Cell Count:            2129
  Buf Cell Count:                  41
  Inv Cell Count:                2088
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      6081
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    30371.628382
  Noncombinational Area: 24150.661695
  Buf/Inv Area:           8419.324564
  Total Buffer Area:           227.72
  Total Inverter Area:        8191.61
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             54522.290078
  Design Area:           54522.290078


  Design Rules
  -----------------------------------
  Total Number of Nets:          7279
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.30
  Logic Optimization:                 10.81
  Mapping Optimization:               74.03
  -----------------------------------------
  Overall Compile Time:              136.21
  Overall Compile Wall Clock Time:   138.27

  --------------------------------------------------------------------

  Design  WNS: 8.95  TNS: 9629.38  Number of Violating Paths: 1192


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  -------------------------------------------------------------------

```

9. sky130_fd_sc_hd__ss_n40C_1v35: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:25:35 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[1]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[21][26]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[1]/CLK (sky130_fd_sc_hd__dfxtp_2)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[1]/Q (sky130_fd_sc_hd__dfxtp_2)
                                                          1.60       2.60 r
  core1/U1369/Y (sky130_fd_sc_hd__nor2_1)                 0.19       2.79 f
  core1/U1368/Y (sky130_fd_sc_hd__inv_1)                  0.17       2.95 r
  core1/U1320/Y (sky130_fd_sc_hd__nand2_1)                0.17       3.12 f
  core1/U1094/Y (sky130_fd_sc_hd__nand2_1)                0.19       3.31 r
  core1/U1093/Y (sky130_fd_sc_hd__nand2_1)                0.19       3.50 f
  core1/U620/Y (sky130_fd_sc_hd__nand3_2)                 0.26       3.75 r
  core1/U619/Y (sky130_fd_sc_hd__nand3_2)                 0.23       3.98 f
  core1/U118/Y (sky130_fd_sc_hd__nand3_2)                 0.23       4.21 r
  core1/U117/Y (sky130_fd_sc_hd__nand2_1)                 0.20       4.41 f
  core1/U1615/Y (sky130_fd_sc_hd__nand3_2)                0.29       4.70 r
  core1/U1985/Y (sky130_fd_sc_hd__inv_4)                  0.26       4.96 f
  core1/U1741/Y (sky130_fd_sc_hd__o21ai_1)                0.69       5.65 r
  core1/U2362/Y (sky130_fd_sc_hd__xnor2_1)                0.39       6.04 f
  core1/U633/Y (sky130_fd_sc_hd__nand2_1)                 0.24       6.28 r
  core1/U581/Y (sky130_fd_sc_hd__nand3_2)                 0.24       6.52 f
  core1/U630/Y (sky130_fd_sc_hd__nand2_1)                 0.27       6.80 r
  core1/U629/Y (sky130_fd_sc_hd__inv_1)                   0.21       7.00 f
  core1/U213/Y (sky130_fd_sc_hd__inv_4)                   0.24       7.24 r
  core1/U5454/Y (sky130_fd_sc_hd__o22ai_1)                0.18       7.42 f
  core1/CPU_Xreg_value_a4_reg[21][26]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       7.42 f
  data arrival time                                                  7.42

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[21][26]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -1.11       1.39
  data required time                                                 1.39
  --------------------------------------------------------------------------
  data required time                                                 1.39
  data arrival time                                                 -7.42
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -6.03


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:25:47 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              19.00
  Critical Path Length:          6.42
  Critical Path Slack:          -6.03
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -6433.23
  No. of Violating Paths:     1192.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               7539
  Buf/Inv Cell Count:            2344
  Buf Cell Count:                  45
  Inv Cell Count:                2299
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      6347
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    31051.029937
  Noncombinational Area: 24298.303341
  Buf/Inv Area:           9162.537336
  Total Buffer Area:           292.78
  Total Inverter Area:        8869.76
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             55349.333277
  Design Area:           55349.333277


  Design Rules
  -----------------------------------
  Total Number of Nets:          7545
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.17
  Logic Optimization:                 11.48
  Mapping Optimization:               45.55
  -----------------------------------------
  Overall Compile Time:               80.51
  Overall Compile Wall Clock Time:    82.06

  --------------------------------------------------------------------

  Design  WNS: 6.03  TNS: 6433.23  Number of Violating Paths: 1192


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  --------------------------------------------------------------------

```

10. sky130_fd_sc_hd__ss_n40C_1v40: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:27:32 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[2]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[4][26]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[2]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[2]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          1.37       2.37 r
  core1/U376/Y (sky130_fd_sc_hd__nand2_1)                 0.21       2.58 f
  core1/U2075/Y (sky130_fd_sc_hd__o21ai_1)                0.41       2.99 r
  core1/U2435/Y (sky130_fd_sc_hd__inv_1)                  0.22       3.21 f
  core1/U189/Y (sky130_fd_sc_hd__nand2_2)                 0.16       3.37 r
  core1/U903/Y (sky130_fd_sc_hd__nand2_1)                 0.16       3.53 f
  core1/U897/Y (sky130_fd_sc_hd__nand3_2)                 0.19       3.71 r
  core1/U1504/Y (sky130_fd_sc_hd__nand2_1)                0.17       3.89 f
  core1/U1818/Y (sky130_fd_sc_hd__nand2_2)                0.24       4.12 r
  core1/U2444/Y (sky130_fd_sc_hd__inv_4)                  0.21       4.33 f
  core1/U3184/Y (sky130_fd_sc_hd__o21ai_1)                0.54       4.87 r
  core1/U3185/Y (sky130_fd_sc_hd__xnor2_1)                0.31       5.18 f
  core1/U1619/Y (sky130_fd_sc_hd__nand2_1)                0.21       5.39 r
  core1/U187/Y (sky130_fd_sc_hd__nand3_2)                 0.25       5.64 f
  core1/U186/Y (sky130_fd_sc_hd__nand2_2)                 0.24       5.88 r
  core1/U4121/Y (sky130_fd_sc_hd__inv_1)                  0.17       6.05 f
  core1/U1041/Y (sky130_fd_sc_hd__inv_1)                  0.22       6.27 r
  core1/U4123/Y (sky130_fd_sc_hd__o22ai_1)                0.17       6.45 f
  core1/CPU_Xreg_value_a4_reg[4][26]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       6.45 f
  data arrival time                                                  6.45

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[4][26]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.87       1.63
  data required time                                                 1.63
  --------------------------------------------------------------------------
  data required time                                                 1.63
  data arrival time                                                 -6.45
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -4.81


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:27:53 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              17.00
  Critical Path Length:          5.45
  Critical Path Slack:          -4.81
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -5083.92
  No. of Violating Paths:     1191.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               7568
  Buf/Inv Cell Count:            2267
  Buf Cell Count:                  59
  Inv Cell Count:                2208
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      6376
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    31980.671497
  Noncombinational Area: 24233.240929
  Buf/Inv Area:           8871.007743
  Total Buffer Area:           427.91
  Total Inverter Area:        8443.10
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             56213.912426
  Design Area:           56213.912426


  Design Rules
  -----------------------------------
  Total Number of Nets:          7574
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.22
  Logic Optimization:                 11.44
  Mapping Optimization:               55.72
  -----------------------------------------
  Overall Compile Time:               92.28
  Overall Compile Wall Clock Time:    93.92

  --------------------------------------------------------------------

  Design  WNS: 4.81  TNS: 5083.92  Number of Violating Paths: 1191


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  --------------------------------------------------------------------

```

11. sky130_fd_sc_hd__ss_n40C_1v44: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:29:30 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src2_value_a3_reg[0]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[13][29]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src2_value_a3_reg[0]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src2_value_a3_reg[0]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          1.02       2.02 f
  core1/U2442/Y (sky130_fd_sc_hd__nand2_2)                0.22       2.24 r
  core1/U106/Y (sky130_fd_sc_hd__inv_1)                   0.11       2.35 f
  core1/U2440/Y (sky130_fd_sc_hd__nand2_1)                0.16       2.51 r
  core1/U55/Y (sky130_fd_sc_hd__nand2_2)                  0.14       2.65 f
  core1/U2117/Y (sky130_fd_sc_hd__nand2_1)                0.16       2.81 r
  core1/U187/Y (sky130_fd_sc_hd__nand2_1)                 0.14       2.95 f
  core1/U277/Y (sky130_fd_sc_hd__nand3_1)                 0.20       3.15 r
  core1/U2080/Y (sky130_fd_sc_hd__nand3_2)                0.22       3.37 f
  core1/U2503/Y (sky130_fd_sc_hd__nand3_2)                0.21       3.58 r
  core1/U2502/Y (sky130_fd_sc_hd__nand3_2)                0.17       3.75 f
  core1/U1965/Y (sky130_fd_sc_hd__inv_2)                  0.38       4.13 r
  core1/U2894/Y (sky130_fd_sc_hd__o21ai_1)                0.30       4.43 f
  core1/U2895/Y (sky130_fd_sc_hd__xnor2_1)                0.35       4.78 f
  core1/U2008/Y (sky130_fd_sc_hd__nand2_1)                0.18       4.96 r
  core1/U1970/Y (sky130_fd_sc_hd__nand3_2)                0.21       5.17 f
  core1/U2430/Y (sky130_fd_sc_hd__nand2_4)                0.21       5.38 r
  core1/U1762/Y (sky130_fd_sc_hd__inv_4)                  0.12       5.50 f
  core1/U5269/Y (sky130_fd_sc_hd__inv_2)                  0.23       5.73 r
  core1/U5273/Y (sky130_fd_sc_hd__o22ai_1)                0.18       5.92 f
  core1/CPU_Xreg_value_a4_reg[13][29]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       5.92 f
  data arrival time                                                  5.92

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[13][29]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.71       1.79
  data required time                                                 1.79
  --------------------------------------------------------------------------
  data required time                                                 1.79
  data arrival time                                                 -5.92
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -4.13


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:29:39 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              19.00
  Critical Path Length:          4.92
  Critical Path Slack:          -4.13
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -4300.34
  No. of Violating Paths:     1145.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               7128
  Buf/Inv Cell Count:            2126
  Buf Cell Count:                  54
  Inv Cell Count:                2072
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5936
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    30751.993186
  Noncombinational Area: 24118.130497
  Buf/Inv Area:           8315.474959
  Total Buffer Area:           344.08
  Total Inverter Area:        7971.39
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             54870.123683
  Design Area:           54870.123683


  Design Rules
  -----------------------------------
  Total Number of Nets:          7134
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.20
  Logic Optimization:                 10.69
  Mapping Optimization:               42.23
  -----------------------------------------
  Overall Compile Time:               76.27
  Overall Compile Wall Clock Time:    77.70

  --------------------------------------------------------------------

  Design  WNS: 4.13  TNS: 4300.34  Number of Violating Paths: 1145


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  --------------------------------------------------------------------

```

12. sky130_fd_sc_hd__ss_n40C_1v76: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:31:34 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[2]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[3][22]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[2]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[2]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          0.56       1.56 r
  core1/U129/Y (sky130_fd_sc_hd__nand2_2)                 0.09       1.65 f
  core1/U1952/Y (sky130_fd_sc_hd__o21ai_1)                0.19       1.84 r
  core1/U1980/Y (sky130_fd_sc_hd__a21oi_1)                0.09       1.93 f
  core1/U2359/Y (sky130_fd_sc_hd__o21ai_1)                0.21       2.14 r
  core1/U2020/Y (sky130_fd_sc_hd__inv_1)                  0.10       2.24 f
  core1/U2017/Y (sky130_fd_sc_hd__nand2_2)                0.11       2.35 r
  core1/U200/Y (sky130_fd_sc_hd__nand2_4)                 0.09       2.44 f
  core1/U535/Y (sky130_fd_sc_hd__inv_4)                   0.13       2.57 r
  core1/U1592/Y (sky130_fd_sc_hd__nand2_1)                0.08       2.65 f
  core1/U669/Y (sky130_fd_sc_hd__nand2_1)                 0.09       2.75 r
  core1/U1637/Y (sky130_fd_sc_hd__xnor2_1)                0.15       2.90 r
  core1/U1719/Y (sky130_fd_sc_hd__nand2_1)                0.11       3.01 f
  core1/U1715/Y (sky130_fd_sc_hd__nand3_2)                0.10       3.12 r
  core1/U1770/Y (sky130_fd_sc_hd__nand2_2)                0.09       3.20 f
  core1/U1888/Y (sky130_fd_sc_hd__inv_4)                  0.14       3.34 r
  core1/U1964/Y (sky130_fd_sc_hd__inv_8)                  0.09       3.43 f
  core1/U3707/Y (sky130_fd_sc_hd__o22ai_1)                0.13       3.56 r
  core1/CPU_Xreg_value_a4_reg[3][22]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       3.56 r
  data arrival time                                                  3.56

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[3][22]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.15       2.35
  data required time                                                 2.35
  --------------------------------------------------------------------------
  data required time                                                 2.35
  data arrival time                                                 -3.56
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -1.21


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:32:28 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              17.00
  Critical Path Length:          2.56
  Critical Path Slack:          -1.21
  Critical Path Clk Period:      2.00
  Total Negative Slack:      -1221.33
  No. of Violating Paths:     1107.00
  Worst Hold Violation:          0.00
  Total Hold Violation:          0.00
  No. of Hold Violations:        0.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6539
  Buf/Inv Cell Count:            1841
  Buf Cell Count:                  66
  Inv Cell Count:                1775
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5347
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    29529.570839
  Noncombinational Area: 24195.704905
  Buf/Inv Area:           7586.025407
  Total Buffer Area:           553.03
  Total Inverter Area:        7033.00
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             53725.275744
  Design Area:           53725.275744


  Design Rules
  -----------------------------------
  Total Number of Nets:          6547
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.29
  Logic Optimization:                 14.89
  Mapping Optimization:               63.17
  -----------------------------------------
  Overall Compile Time:              105.42
  Overall Compile Wall Clock Time:   107.13

  --------------------------------------------------------------------

  Design  WNS: 1.21  TNS: 1221.33  Number of Violating Paths: 1107


  Design (Hold)  WNS: 0.00  TNS: 0.00  Number of Violating Paths: 0

  ---------------------------------------------------------------
```

13. sky130_fd_sc_hd__tt_025C_1v80: <br><br>

```ruby
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:36:13 2023
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: nom_pvt   Library: avsddac
Wire Load Model Mode: top

  Startpoint: core1/CPU_src1_value_a3_reg[1]
              (rising edge-triggered flip-flop clocked by MYCLK)
  Endpoint: core1/CPU_Xreg_value_a4_reg[21][20]
            (rising edge-triggered flip-flop clocked by MYCLK)
  Path Group: MYCLK
  Path Type: max

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock MYCLK (rise edge)                                 0.00       0.00
  clock network delay (ideal)                             1.00       1.00
  core1/CPU_src1_value_a3_reg[1]/CLK (sky130_fd_sc_hd__dfxtp_4)
                                                          0.00 #     1.00 r
  core1/CPU_src1_value_a3_reg[1]/Q (sky130_fd_sc_hd__dfxtp_4)
                                                          0.34       1.34 f
  core1/U70/Y (sky130_fd_sc_hd__nor2_2)                   0.11       1.45 r
  core1/U1407/Y (sky130_fd_sc_hd__o21ai_2)                0.06       1.52 f
  core1/U1411/Y (sky130_fd_sc_hd__a21oi_2)                0.15       1.67 r
  core1/U1419/Y (sky130_fd_sc_hd__o21ai_2)                0.08       1.75 f
  core1/U1443/Y (sky130_fd_sc_hd__a21oi_2)                0.14       1.89 r
  core1/U880/Y (sky130_fd_sc_hd__inv_2)                   0.08       1.96 f
  core1/U879/Y (sky130_fd_sc_hd__inv_8)                   0.08       2.05 r
  core1/U2321/Y (sky130_fd_sc_hd__o21ai_1)                0.07       2.12 f
  core1/U2322/Y (sky130_fd_sc_hd__xnor2_1)                0.13       2.25 f
  core1/U2323/Y (sky130_fd_sc_hd__nand2_1)                0.07       2.32 r
  core1/U884/Y (sky130_fd_sc_hd__nand3_2)                 0.08       2.39 f
  core1/U3239/Y (sky130_fd_sc_hd__inv_1)                  0.08       2.48 r
  core1/U873/Y (sky130_fd_sc_hd__inv_2)                   0.05       2.53 f
  core1/U4782/Y (sky130_fd_sc_hd__nand2_1)                0.05       2.58 r
  core1/U4784/Y (sky130_fd_sc_hd__nand2_1)                0.04       2.62 f
  core1/CPU_Xreg_value_a4_reg[21][20]/D (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.62 f
  data arrival time                                                  2.62

  clock MYCLK (rise edge)                                 2.00       2.00
  clock network delay (ideal)                             1.00       3.00
  clock uncertainty                                      -0.50       2.50
  core1/CPU_Xreg_value_a4_reg[21][20]/CLK (sky130_fd_sc_hd__dfxtp_1)
                                                          0.00       2.50 r
  library setup time                                     -0.11       2.39
  data required time                                                 2.39
  --------------------------------------------------------------------------
  data required time                                                 2.39
  data arrival time                                                 -2.62
  --------------------------------------------------------------------------
  slack (VIOLATED)                                                  -0.23


 
****************************************
Report : qor
Design : vsdbabysoc
Version: T-2022.03-SP5-1
Date   : Thu Sep 28 11:36:27 2023
****************************************


  Timing Path Group 'MYCLK'
  -----------------------------------
  Levels of Logic:              15.00
  Critical Path Length:          1.62
  Critical Path Slack:          -0.23
  Critical Path Clk Period:      2.00
  Total Negative Slack:       -187.25
  No. of Violating Paths:      980.00
  Worst Hold Violation:         -0.09
  Total Hold Violation:         -5.12
  No. of Hold Violations:       68.00
  -----------------------------------


  Cell Count
  -----------------------------------
  Hierarchical Cell Count:          1
  Hierarchical Port Count:         12
  Leaf Cell Count:               6867
  Buf/Inv Cell Count:            1237
  Buf Cell Count:                 154
  Inv Cell Count:                1083
  CT Buf/Inv Cell Count:            0
  Combinational Cell Count:      5675
  Sequential Cell Count:         1192
  Macro Count:                      0
  -----------------------------------


  Area
  -----------------------------------
  Combinational Area:    28725.049021
  Noncombinational Area: 23996.764053
  Buf/Inv Area:           5152.441463
  Total Buffer Area:           954.67
  Total Inverter Area:        4197.78
  Macro/Black Box Area:      0.000000
  Net Area:                  0.000000
  -----------------------------------
  Cell Area:             52721.813074
  Design Area:           52721.813074


  Design Rules
  -----------------------------------
  Total Number of Nets:          6874
  Nets With Violations:             0
  Max Trans Violations:             0
  Max Cap Violations:               0
  -----------------------------------


  Hostname: ssirlab03

  Compile CPU Statistics
  -----------------------------------------
  Resource Sharing:                    2.32
  Logic Optimization:                 12.25
  Mapping Optimization:               26.63
  -----------------------------------------
  Overall Compile Time:               57.71
  Overall Compile Wall Clock Time:    59.05

  --------------------------------------------------------------------

  Design  WNS: 0.23  TNS: 187.25  Number of Violating Paths: 980


  Design (Hold)  WNS: 0.09  TNS: 5.12  Number of Violating Paths: 68

  --------------------------------------------------------------------

```

* The table provided displays the Worst Negative Slack (WNS) and Total Negative Slack (TNS) values associated with violations in both Hold and Setup timing constraints.: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/60b2589fe343cb8e262cd18dc80f173caad9b9ad/day14/pic_0.1/1.table.PNG"><br><br>

* The graph presented illustrates the Worst Negative Slack (WNS) and Total Negative Slack (TNS) values in the context of Setup timing violations. The left-hand side (LHS) axis represents WNS, while the right-hand side (RHS) axis represents TNS: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/60b2589fe343cb8e262cd18dc80f173caad9b9ad/day14/pic_0.1/2.Setup_wns_tns.png"><br><br>

* The graph presented illustrates the Worst Negative Slack (WNS) and Total Negative Slack (TNS) values in the context of Hold timing violations. The left-hand side (LHS) axis represents WNS, while the right-hand side (RHS) axis represents TNS: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/60b2589fe343cb8e262cd18dc80f173caad9b9ad/day14/pic_0.1/3.hold_wns_tns.png"><br><br>

* The graph below provides a comparison of Total Negative Slack (TNS) values for both Hold and Setup timing violations. The left-hand side (LHS) axis corresponds to Setup, while the right-hand side (RHS) axis corresponds to Hold: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/60b2589fe343cb8e262cd18dc80f173caad9b9ad/day14/pic_0.1/4.%20tns-setup_hold.png"><br><br>

* The graph below provides a comparison of Worst Negative Slack (TNS) values for both Hold and Setup timing violations. The left-hand side (LHS) axis corresponds to Setup, while the right-hand side (RHS) axis corresponds to Hold: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/60b2589fe343cb8e262cd18dc80f173caad9b9ad/day14/pic_0.1/5.%20WNS-setup_hold.png"><br><br>

* Conclusions:<br><br>

Hold Violations and Setup Issues are common challenges encountered in digital circuit design. Here's a breakdown of their characteristics and insights into specific Process, Voltage, and Temperature (PVT) corners:<br><br>

* **Hold Violations**: These tend to be more prevalent in faster cells. Hold time represents the minimum duration for data to stabilize before the clock edge, ensuring reliable capture by a flip-flop. Faster cells process data quickly, leaving less time for data to stabilize, making them more susceptible to hold violations.<br>

* **Setup Issues**: Conversely, setup problems tend to arise in slower cells. Setup time is the minimum required duration for data to remain stable after the clock edge to be correctly captured. Slower cells necessitate a longer setup time due to their slower data processing, potentially leading to setup violations if this requirement isn't met.<br><br>

Regarding PVT corners:<br><br>

* **Worst Setup Corner**: The most critical PVT corner for setup issues is sky130_fd_sc_hd__ss_n40C_1v28. This corner signifies a slow process (ss), low temperature (n40C), and a supply voltage of 1.28 volts. Ensuring that our design meets timing requirements under these challenging conditions is crucial, as success here suggests robust performance across varying conditions.<br>

* **Best PVT Corner**: Conversely, the best PVT corner is sky130_fd_sc_hd__ff_n40C_1v76. In this corner, setup violations are absent, and hold violations are minimal. It is considered the most favorable condition because it offers the highest overall performance and reliability.<br>


</details>



## Day 15 - Inception of EDA and PDK


### How to talk to computers<br>
<details>
<summary>Introduction to QFN-48 Package, chip, pads, core, die and IPs</summary>v
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/1.jpeg">
</details>

<details>
<summary>Introduction to RISC-V</summary><br>
RISC-V is an open-source instruction set architecture (ISA) that has gained significant attention and popularity in recent years. Here's an introduction to RISC-V:<br>

What is RISC-V?<br>
RISC-V (pronounced "risk-five") is an open and extensible ISA designed to be simple, modular, and customizable. ISA defines the interface between a computer's hardware and software, specifying the instructions that a processor can execute.<br><br>

**Open Source Philosophy**:<br>
RISC-V is unique because it is open-source. Anyone can access the specifications, contribute to its development, and build their own RISC-V compatible processors without needing to pay licensing fees. This openness has led to a vibrant ecosystem of RISC-V projects, tools, and hardware implementations.<br><br>

**Simplicity and Modularity**:<br>
RISC-V's ISA is intentionally kept simple and minimalistic, which makes it easier to implement in hardware and software. It has a small set of base integer instructions, with optional extensions for specialized tasks (e.g., floating-point, SIMD, cryptography). This modularity allows designers to choose only the features they need, reducing complexity.<br><br>

**Scalability**:<br>
RISC-V is designed to scale from microcontrollers and embedded systems to high-performance server processors. It supports both 32-bit and 64-bit address spaces, making it suitable for a wide range of applications.<br><br>

**Customization**:<br>
One of RISC-V's strengths is its adaptability. Users can define their own custom instructions and extensions to meet specific application needs. This flexibility is valuable for optimizing performance and power efficiency.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/2.jpeg"><br><br>

</details>

<details>
<summary>From Software Applications to Hardware</summary><br>

**Operating System**:<br>
An operating system (OS) is a fundamental software component that manages computer hardware resources and provides a set of services to software applications. It acts as an intermediary between the hardware and the software, enabling the efficient execution of tasks and the use of system resources. <br><br>

**Compiler**:<br>
A compiler is a software tool that translates human-readable source code written in a high-level programming language into machine code or a lower-level intermediate code that can be executed by a computer's central processing unit (CPU). The primary purpose of a compiler is to enable the execution of high-level programming languages on a computer by converting them into a form that the hardware can understand and execute.<br><br>

**Assembler**: <br>
An assembler is a low-level programming tool used to translate assembly language code into machine code. Assembly language is a human-readable representation of machine code instructions, and the assembler converts this symbolic language into the binary instructions that a computer's central processing unit (CPU) can execute directly.<br><br>


<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/3.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/4.jpeg"><br><br>
</details>


### SoC design and OpenLANE<br>

<details>
<summary>Introduction to all components of open-source digital asic design</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/5.jpeg"><br><br>

**PDK**: <br>
A Process Design Kit is a collection of files, data, and documents provided by semiconductor foundries or manufacturers to enable integrated circuit (IC) designers to design and verify their custom ICs using the foundry's manufacturing process.<br><br>

Here are the key components and purposes of a Process Design Kit (PDK) in VLSI:<br>

* Process Technology Information: The PDK includes detailed information about the foundry's manufacturing process. This includes data about the available silicon wafer sizes, transistor types and characteristics, metal layers, via structures, and other critical process parameters. Designers need this information to ensure that their designs are compatible with the foundry's process.<br><br>

* Libraries: PDKs provide libraries of standard cells, which are fundamental building blocks for digital IC design. These libraries contain pre-designed logic gates, flip-flops, latches, and other commonly used components. These libraries are optimized for the specific manufacturing process and are critical for creating digital designs efficiently.<br><br>

* Device Models: PDKs contain transistor-level models for the different types of transistors available in the process (e.g., NMOS, PMOS, CMOS). These models describe the electrical behavior of transistors under different operating conditions and are essential for accurate circuit simulations.<br><br>

* Design Rules: The PDK includes design rules that specify the minimum dimensions, spacing, and other layout requirements to ensure that the IC can be manufactured correctly. These rules are crucial for ensuring that the physical layout of the IC meets the foundry's process requirements.<br><br>

* Simulation Models: PDKs may provide simulation models for passive components like resistors and capacitors, as well as models for interconnect parasitics (resistance, capacitance, and inductance) that affect the performance of ICs.<br><br>

* Technology Files: These files contain information about the layers, materials, and manufacturing processes used by the foundry. This information is critical for CAD (Computer-Aided Design) tools to correctly interpret and generate layouts and masks for fabrication.<br><br>


<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/6.jpeg"><br><br>

The SkyWater Open Source PDK is a collaboration between Google and SkyWater Technology Foundry to provide a fully open-source Process Design Kit and related resources, which can be used to create manufacturable designs at SkyWater's facility.<br>

</details>

<details>
<summary>Simplified RTL2GDS flow</summary><br>

1. Synthesis: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/7.jpeg"><br><br>

2. Floor planning and power planning: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/8.jpeg"><br><br>

3. Placement: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/9.jpeg"><br><br>

4. CTS: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/10.jpeg"><br><br>

5. Routing: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/11.jpeg"><br><br>

6. Sign Off: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/12.jpeg"><br><br>

</details>

<details>
<summary>Introduction to OpenLANE and Strive chipsets</summary><br>

OpenLANE is an open-source digital ASIC (Application-Specific Integrated Circuit) design flow that provides a complete end-to-end solution for designing and fabricating custom digital integrated circuits. It is an initiative to democratize and simplify the process of designing and manufacturing custom silicon chips. OpenLANE is part of the larger open-source Electronic Design Automation (EDA) ecosystem and is primarily focused on digital designs using standard cell libraries.<br><br>

Strive Family: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/12.2.PNG"><br><br>


The primary goal of OpenLANE is to provide an automated and self-contained digital ASIC design flow, with an emphasis on producing a clean GDSII file without requiring human intervention (no-human-in-the-loop). This means it aims to automate various stages of the design process to achieve the following outcomes:<br><br>

1. **No LVS Violations**: It ensures that the layout and schematic of the designed chip match correctly without any errors, as checked by Layout Versus Schematic (LVS) checks.<br>

2. **No DRC Violations**: It enforces adherence to design rules, ensuring that the chip's layout complies with manufacturing process constraints, as verified by Design Rule Checking (DRC).<br>

3. **No Timing Violations**: It guarantees that the chip meets the specified timing requirements, including setup and hold times, with no violations.<br><br>

OpenLANE is specifically tuned for use with the SkyWater 130nm Open PDK, but it also supports other process technologies, such as XFAB180 and GF130G, making it versatile for various semiconductor manufacturing processes.<br><br>

Key Features of OpenLANE:<br>

1. **Containerized**: OpenLANE is packaged as a container, allowing it to be functional "out of the box" with minimal setup. Additionally, instructions for building and running it natively will be provided for flexibility.<br>

2. **Macro and Chip Hardening**: It can be used for hardening macros (reusable blocks) and full custom chips, providing a comprehensive solution for ASIC design.<br><br>

Two Modes of Operation:<br>

1. **Autonomous**: In this mode, OpenLANE operates with minimal user interaction, automating the design process as much as possible.<br>
2. **Interactive**: For users who require more control or wish to intervene at specific stages, an interactive mode is available.<br><br>

* Design Space Exploration: OpenLANE offers a feature for exploring the design space to find the best set of flow configurations. This helps designers optimize their designs for various objectives, such as power, performance, or area.<br>
* Design Examples: OpenLANE comes with a substantial collection of design examples (currently 43 designs) along with their best configurations. This allows users to learn from and build upon existing designs as a valuable resource.<br>

</details>

<details>
<summary>Introduction to OpenLANE detailed ASIC design flow</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/13.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/14.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/15.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f3a76e9f739cba8bb557042148dfdb0af7360131/day16/16.jpeg"><br><br>

</details>

### Get familiar to open-source EDA tools:

<details>
<summary>OpenLANE Directory structure in detail</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/17_file%2Binside_pdk_sky130.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/18.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/20_designs.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/21.PNG"><br><br>

</details>

<details>

<summary>Design Preparation Step</summary><br>
	
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/22.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c7bc80fc2511695cfd9dbb7da49ef1d164ab2d8a/day16/23.PNG"><br><br>

</details>


<details>

<summary>Review files after design prep and run synthesis</summary><br>

* Checking the design after merging lef: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/94a6612dfc5f6826f20393944b695e4a8b601f38/day16/24.PNG"><br><br>

* Inside config.tcl: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/94a6612dfc5f6826f20393944b695e4a8b601f38/day16/25.PNG"><br><br>

* Inside merged.lef: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/94a6612dfc5f6826f20393944b695e4a8b601f38/day16/26.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/94a6612dfc5f6826f20393944b695e4a8b601f38/day16/27.PNG"><br><br>

* Synthesizing the design using command ```% run_synthesis```: <br>
<img width="1100" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e63da18b55a1da8f9a9092e494af84254f04fc70/day16/28.PNG"><br><br>

</details>

<details>

<summary>Steps to characterize synthesis results</summary><br>

* Checking the reports after synthesizing the design: <br>
<img width="1000" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/151c1d880f386387244ad1caf1c4c1e8f9e62220/day16/29.PNG"><br><br>

* Inside 1-yosys_4.stat.rpt: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/151c1d880f386387244ad1caf1c4c1e8f9e62220/day16/30_flopratio.PNG"><br><br>

* Inside 2-opensta.rpt: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/151c1d880f386387244ad1caf1c4c1e8f9e62220/day16/31.PNG"><br><br>

* Inside opensta.timing.rpt: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/151c1d880f386387244ad1caf1c4c1e8f9e62220/day16/32.PNG"><br><br>

</details>


## Day 16: Understand importance of good floorplan vs bad floor plan and introduction to library cells

### Chip Floor planning considerations

<details>
<summary>Utilization factor and aspect ratio</summary>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/1.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/2.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/3.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/4.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/5.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/6.png"><br>
</details>

<details>
<summary>Concept of pre-placed cells</summary>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/7.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/8.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/9.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/b9ed0ccb817a656429e370d9c17bab91706ee3e7/day16.1/10.png"><br>
</details>

<details>
<summary>De-coupling capacitors</summary><br>

* Let's examine the level of switching activity necessary for the complex circuit depicted below:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e759674b37cb7d3ca0345e59ebf6ea39271c0d7d/day16.1/11.PNG"><br><br>

1. Disregarding capacitance for this discussion, we have well-defined values for Rdd, Rss, Ldd, and Lss.<br>
2. During the switching operation, the circuit requires a peak switching current (peak).<br>
3. Due to the presence of Rdd and Ldd, there will be a voltage drop across them, causing Node 'A' to have a voltage Vdd' instead of Vdd.<br>
4. For instance, if 1 volt flows from the source to Vdd', it will be less than 1 volt due to this voltage drop.<br>
5. If Vdd' drops below the noise margin because of Rdd and Ldd, a logic 1 at the circuit's output may not be recognized as a logic 1 at the input.<br>
6. Referring to the noise margin graph, there are three regions: logic 0, undefined, and logic 1. If Vdd falls between Vil and Vih, it is considered undefined, posing a risk.<br>
7. However, if Vdd falls between Vih and Voh, it will be detected as logic 1, and for logic 0, it will occur when Vdd falls between Vil and Vol.<br><br>

* To address this problem, coupling capacitors are employed as depicted below: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e759674b37cb7d3ca0345e59ebf6ea39271c0d7d/day16.1/12.PNG"><br><br>

1. Decoupling capacitors are added in parallel with the circuit.<br>
2. Each time the circuit switches, it draws current from Ca, while the RL network is used to replenish the charge into Ca.<br>
3. These capacitors are strategically placed between blocks to ensure that all blocks receive the necessary power supply when switching occurs.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e759674b37cb7d3ca0345e59ebf6ea39271c0d7d/day16.1/13.png"><br><br>

</details>

<details>
<summary>Power Planing</summary><br>

* Let's examine the complex circuit depicted below:<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/02bd414550683d681937e1ecd0d1fee81c75c851/day16.1/14.PNG"><br><br>


1. As observed, the voltage source supplied power to four blocks.<br>
2. In this scenario, there arises an issue where it becomes challenging to ensure stable supply from the source (it's not feasible to place all the decoupling capacitors).<br>
3. We designate logic 1 for capacitor charging and logic 0 for discharging.<br>
4. This 16-bit bus is connected to an inverter, resulting in an inverted output compared to the input. Consequently, logic 1 becomes a discharge, and logic 0 becomes a charge.<br>
5. Consequently, all capacitors initially charged to a certain voltage will discharge to 0V through a single ground tap point. This action leads to a bump at the ground tap point.<br>
7. If this bounce surpasses the noise margin level, the outcome becomes unpredictable.<br>
8. Additionally, all capacitors initially at 0 volts will need to charge to 0V through a single Vdd tap point. This results in a reduction in voltage at the Vdd tap point, potentially causing a voltage droop within the noise margin level, which may lead to an undefined state.<br><br>

* To address this issue, we will implement the following solution:<br><br>

	1. Instead of relying on a single power supply, we will employ multiple power supplies.<br>
	2. These multiple power supplies will be directed to the nearest blocks, ensuring that each block receives a reliable power supply without any possibility of missing out.<br><br>

* The concept is straightforward: all logic elements will access the nearest power supply source, enhancing the overall stability of the system.<br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/02bd414550683d681937e1ecd0d1fee81c75c851/day16.1/15.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/02bd414550683d681937e1ecd0d1fee81c75c851/day16.1/16.PNG"><br><br>

</details>

<details>
<summary>Pin placement and logical cell placement blockage</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/07989294668a7a1e4c1a0a04862cf19f7879d8b3/day16.1/17.png"><br><br>

</details>

<details>
<summary>Steps to run floorplan using OpenLANE and review it </summary><br>

* Running the floorplan i openlane using ```run_floorplan``` as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L2_run_floorplan.png"><br><br>

* To review the floorplan we open the logs in the floorplan directory: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_1_floorplan_results.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_2_ioplacer.png"><br><br>

* In the above image we do not see the HLAYER and VLAYER values as they are not specified yet.<br><br>
* Now we will see the ```config.tcl``` file in the runs. <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_3_runs_config.png"><br><br>
* The values for the horizontal metal layer being 4, the vertical metal layer being 3, and the utilization factor being 35 are chosen based on a set of priorities. Least priority is given to the ```floorplan.tcl``` in the cofigurartion directory. Below image shows the ```floorplan.tcl```. <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_3_configuration_folder_floorplan_tcl.png"><br><br>
* On the priority list second comes the ```config.tcl``` in the picorv32a folder in the design directory. Below image shows the ```config.tcl```. <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_5_picorv_config_tcl.png"><br><br>
* Maximum priority is given to the ```sky130A_sky130_fd_sc_hd.tcl``` in the picorv32a directory. Below image shows the ```sky130A_sky130_fd_sc_hd.tcl```. <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_6_picorv_sky_tcl.png"><br><br>

* Now lets see the .def" file for the design. Design Exchange Format, is a commonly used file format that contains information about the physical layout of an integrated circuit (IC) design. This file is an essential component of the design process and provides detailed information for the fabrication and manufacturing of the IC.

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_7_results_floorplan_def.png"><br><br>
* Here ```DIEAREA = (lower_left_x_value lower_left_y_value)(upper_rigth_x_value upper_rigth_y_value)```
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L1_8_results_floorplan_def.png"><br><br>
</details>



<details>
<summary>Review floorplan layout in Magic</summary><br>

* Invike the ```magic``` tool as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L2_2_invoke_magic_run_floorplan.png"><br><br>

* Floorplan for the design in the mgic is shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L3_floorplan.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L4_floorplan_zoomed_pin.png"><br><br>

* To view the details of particular pin, place the cursor over the pin and press s, that pin will get highlighted. Now go to the ```tkcon 2.3``` window and type what:<br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L5_pin_details.png"><br><br>

* Similarly we can vie the standard cells in the floorplan as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L6_std_cells.png"><br><br>
</details>

### Library Binding and Placement

<details>
<summary>Netlist binding</summary><br>

* First all the gates in teh nelist are converted to the cells as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/18.2.PNG"><br><br>

* To proceed towards the placement we need the floorplan, netlist and physical view of the cells as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/18.png"><br><br>

* FF1 (yellow) is positioned in proximity to pin 1 on the floor plan, while FF2 (yellow) is located near pin out 1. This strategic placement is necessary because placing FF1 and FF2 too far apart would result in increased delays. This is due to the need for data to traverse through combinational cells between FF1 and FF2. The same rationale governs the placement of other cells within the design.
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/raw2png/L4_floorplan_zoomed_pin.png"><br><br>

</details>

<details>
<summary>Final Placement optimization</summary><br>

* Consider the estimation process for the connection between FF1 and Din2. Before routing, it's crucial to gauge the wire's length and capacitance to determine whether repeaters should be inserted.

* Repeater insertion involves placing buffers along the signal path to reinforce the signal and duplicate it. It's worth noting that adding more repeaters consumes additional chip area.

* Repeaters become necessary when the distance between FF1 and Din2 is excessively long. In such cases, a repeater is employed to transmit the signal from FF1 to Din2 efficiently.

* While the connection between FF1 (yellow) and Din 1 is acceptable, there's a challenge when crossing other flip-flops due to excessive distance. To address this, buffers are introduced, and to avoid congestion, they are placed on a separate layer.

* Increasing the number of gates, especially with flip-flops in close proximity to one another, can reduce signal delay but will also occupy more chip area.

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/21.PNG"><br><br>


</details>


<details>
<summary>Need for libraries and characterization</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/bbb750c4783c328b376c0e7e4b16f02f42f57e1c/day16.1/22.jpeg"><br><br>


</details>


<details>
<summary>Placement</summary><br>

* We run the placment using command ```run_placement``` : <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/be9bc5135a6c7accf3793d69e625bc6053923b45/day16.1/raw2png/L7_run_placement.png"><br><br>

* Now we invoke the ```magic``` tool to view the placement. Command to invoke magic is shown in the image below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/be9bc5135a6c7accf3793d69e625bc6053923b45/day16.1/raw2png/L8_cdm_placement.png"><br><br>

* Placement of the design is as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/be9bc5135a6c7accf3793d69e625bc6053923b45/day16.1/raw2png/L9_placement_gui.png"><br><br>

* In the image below we can see the the placement of different standard cells of the design: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/be9bc5135a6c7accf3793d69e625bc6053923b45/day16.1/raw2png/L10_placement_zoomed_gui.png"><br><br>


</details>

### Cell design and characterization flows

<details>
<summary>Standard cell design flow</summary><br>

The standard cell design flow and characterization process are essential aspects of designing integrated circuits (ICs) using CMOS technology. Below, I'll elaborate on each of the components mentioned in your description:<br><br>

1. **Inputs**:<br>

* **Process Design Kits (PDKs)**: These are sets of files and data provided by semiconductor foundries that define the process technology parameters, rules, and models for a specific CMOS fabrication process. PDKs include information about transistor models, metal layers, doping profiles, and other process-specific details.<br>
* **DRC & LVS Rules**: Design Rule Checks (DRC) and Layout vs. Schematic (LVS) rules are guidelines provided by the foundry to ensure that the layout of the IC adheres to the manufacturing process's capabilities and matches the intended schematic.<br>
* **SPICE Models**: These are mathematical descriptions of transistor behavior in CMOS technology, used for simulating and analyzing circuit performance. SPICE models define how transistors respond to voltage and current changes.<br>
* **Library & User-Defined Specs**: The library contains pre-designed standard cells, each with specific functions and drive strengths. User-defined specs may include custom design requirements or specifications unique to the project.<br><br>

2. **Design Steps**:<br>

* **Circuit Design**: In this phase, engineers create the logical schematic representation of the digital circuit. They specify the functionality, connectivity, and desired performance parameters.<br>
* **Layout Design**: After the logical design, engineers create a physical layout of the circuit, adhering to DRC and LVS rules. This involves placing transistors and interconnecting them while considering factors like area, power, and signal integrity.<br>
* **Characterization**: Characterization is the process of quantifying how the standard cells behave under various conditions. This step ensures that the cells meet timing, power, and noise requirements. GUNA is a software tool used for this purpose.<br><br>

3. **Outputs**:<br>

* **CDL (Circuit Description Language)**: CDL files describe the logical behavior of standard cells, including their connectivity, functionality, and timing information.<br>
* **GDSII (Graphic Database System II)**: GDSII is a file format used to represent the final layout of the IC in a binary form. It is used for chip fabrication.<br>
* **LEF (Library Exchange Format)**: LEF files provide information about the physical properties of the standard cells, which is necessary for placement and routing in the IC design process.<br>
* **Extracted Spice Netlist (.cir)**: This is a SPICE-compatible netlist that includes parasitic elements extracted from the layout. It is used for accurate simulation of the designed circuit.<br>
* **Timing, Noise, Power Libraries**: These libraries store information on the timing characteristics, noise behavior, and power consumption of standard cells. They are essential for synthesis and optimization tools.<br>
* **Function**: This refers to the functional description of each standard cell in the library, specifying its purpose and behavior.<br>

</details>


<details>
<summary>Layout design step</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d56ed1dca30c77276cb408d0277eade664f8fbef/day16.1/23.jpeg"><br><br>

</details>

<details>
<summary>Standard Cell Characterization</summary><br>

Characterization is the process of generating accurate models (often in Liberty format) for standard cells, which synthesis tools use to optimize and arrange cells in an IC design. Here are the steps involved:<br><br>

1. **Link Model File of CMOS**: This step involves linking the Liberty file, which defines the properties, timing, and other characteristics of the CMOS process technology.<br>

2. **Specify Process Corner(s)**: Process corners represent different manufacturing variations and operating conditions (e.g., fast, slow, nominal). The characterization process evaluates the standard cell's behavior across these corners.<br>

3. **Specify Cell Delay and Slew Thresholds**: These thresholds determine how the cell's timing characteristics are characterized, helping capture both the rising and falling edges of signals.<br>

4. **Specify Timing and Power Tables**: Timing tables describe the cell's propagation delay, setup time, hold time, and other timing parameters under different conditions. Power tables specify the cell's power consumption.<br>

5. **Read Parasitic Extracted Netlist**: The parasitic elements extracted from the layout of the standard cell are incorporated into the characterization process to account for their impact on signal delays and power consumption.<br>

6. **Apply Input or Stimulus**: Simulated inputs or stimuli are applied to the standard cell to evaluate its response under various conditions.<br>

7. **Provide Necessary Simulation Commands**: Simulation commands are used to run simulations on the standard cell to gather data on its performance.<br>

* Once the characterization process is complete, a Liberty file is generated, containing accurate models of the standard cell's behavior, which can be used by synthesis tools to optimize the design of larger digital circuits. These Liberty files enable designers to achieve the desired performance while meeting power and area constraints in their IC designs.<br>

</details>


## Day-17-Design and characterise one library cell using Layout tool and spice simulator

<details>
<summary>IO Mode</summary><br>

* I/O mode is employed to alter the spacing between the pins on a chip. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/1_IO_mode.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/1_IO_mode_gui.png"><br><br>

</details>

<details>
<summary>SPICE deck creation for CMOS inverter</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/3_spice.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/4_spicemodel.jpeg"><br><br>

</details>

<details>
<summary>Switching Threshold (Vm)</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/5_switching_threshold.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c8683d28fd1cbb7d60c2b1fa316d0d6699b8f50d/day17/start/6_vm_diff_w_p.jpeg"><br><br>

</details>

### Inception of Layout & CMOS fabrication process

<details>
<summary>The 16-Mask Process</summary><br>

* Substrate selection is a crucial step in the fabrication process of GDSII, which represents the entire design. There are various substrate options available, with P-type silicon substrate being the most commonly used choice. It possesses specific characteristics, such as high resistivity ranging from 5 to 50 ohms, a doping level of 10^15/cm^3, and an orientation of (100). It's important to ensure that the substrate's doping level is lower than that of the well, as wells are used to fabricate NMOS and PMOS components separately.<br>

* Creating an active region for transistors involves forming pockets on the P-substrate where NMOS and PMOS cells will be placed. Effective isolation between these pockets is essential. This isolation is achieved by growing a silicon dioxide layer, which acts as an insulator with a thickness of approximately 40nm.<br>

* Subsequently, an 80nm layer of silicon nitride (Si3N4) is deposited. To create the wells, the silicon nitride layer is then covered with a photoresist layer, which can be either negative or positive, and has a thickness of about 1um. In fabrication terms, a layout corresponds to a mask used in this process.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/7.png"><br><br>

* These masks serve as protective barriers for the underlying photoresist, while UV light is directed through the substrate. Consequently, the portion beneath the mask remains unaffected, and the surplus photoresist is removed by means of a developing solution. Subsequently, the masks themselves are taken off.<br>

* The silicon nitride layer is subjected to etching. Notably, the photoresist is eliminated since the silicon nitride acts as a protective layer, enabling the growth of additional layers. The photoresist is chemically stripped away.<br>

* Following this, the substrate is positioned in an oxidation furnace where a second layer of oxide is grown. The region beneath the silicon nitride is safeguarded, allowing oxide to form exclusively on the exposed area.<br>

* The process continues by creating isolation between the regions where transistors are developed. This is achieved by cultivating a field oxide, a method commonly referred to as LOCOS, which stands for Local Oxidation of Silicon.<br>

* The Silicon nitrite is stripped off using hot phosphoric acid. A strict electrical isolation is created between NOS and PMOS.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/8.png"><br><br>

* Formation of N-well and P-well is a crucial step, with the P-well serving for NMOS fabrication and the N-well for PMOS fabrication.<br>

* Initially, a photoresist layer is applied to delineate the protective pattern for subsequent layers. A portion of the substrate is shielded, exposed to UV light, and then removed using a solution.<br>

* To establish the P-well, boron is employed. This involves diffusing boron into the p-type substrate through ion implantation, requiring an energy level of approximately 200keV to penetrate the oxide layer effectively.<br>

* Likewise, the other portion is now masked, covered with photoresist, etched, and subjected to ion implantation for phosphorus diffusion. In this case, an energy of around 400keV is necessary to facilitate the process through the oxide layer.<br>

* The creation of these wells is an essential step, and their diffusion needs to ensure that they occupy approximately half of the substrate area. To achieve this, the substrate is subjected to a high-temperature furnace, operating at about 1100°C, in a process known as the twin-tub process. This results in the formation of well-defined wells.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/9.png"><br><br>

* The formation of the gate terminal is a critical step in both PMOS and NMOS devices, as it plays a pivotal role in controlling the threshold voltage, which is the voltage required to activate the transistor. The threshold voltage is contingent on several factors, including the body effect coefficient, doping concentration, and oxide capacitance. During the fabrication process, these variables are carefully managed to achieve the desired threshold voltage.<br>

* Subsequently, a new mask is applied, etched, and boron diffusion is carried out with lower energy, approximately 60keV, to ensure diffusion reaches the surface's edge.<br>

* This mask is used for the N-well, and after etching, n-type material is diffused with lower energy, positioning it just below the surface.<br>

* However, the oxide layer can become damaged due to the implantation and penetration of p-type and n-type dopants through it. The original oxide is removed using a hydrofluoric acid solution.<br>

* Following the removal of the damaged oxide, a new oxide layer is grown to provide a high-quality oxide, typically with a thickness of around 10nm. The control of this thickness is crucial in achieving the desired threshold voltage.<br>

The gate formation is done by<br>

* Deposit a polysilicon layer of 0.4um. The gate area needs to be of low resistance. The layer is doped with impurities such as phosphorous or arsenic.<br>

* Again, deposit a photoresist and gate mask is used and etch away extra exposed layer and photoresist is removed forming the gate terminal.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/10.png"><br><br>

The formation of Lightly Doped Drain (LDD) regions is influenced by changes in the doping profile in PMOS within the n-well and NMOS within the p-well due to several factors:<br>

2. **Hot Electron Effect**: When the device size shrinks, the electric field intensifies while the power supply remains constant. This results in high-energy charge carriers that can disrupt Si-Si bonds, leading to increased undesirable electron flow. Furthermore, the energy levels may become so high that they surpass the 3.2eV barrier between the Si conduction band and the SiO2 conduction band. If this barrier is breached, it may infiltrate the oxide layer just above the surface, giving rise to liability concerns.<br>

3. **Short Channel Effect**: In the case of short channel lengths, the drain field permeates the channel. To put it simply, as the channel length decreases, the applied gate voltage has a more direct impact on the device, leading to a loss of control over the current flow within the device. This effect can result in variations in the doping profile in the n-well and p-well for PMOS and NMOS devices, respectively.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/11.png"><br><br>

The process for creating the Lightly Doped Drain (LDD) structure involves the following steps:<br>

1. Using Mask7, a photoresist layer is applied. It is exposed to UV light, etched, and then washed. Phosphorous is diffused with controlled energy to implant it just beneath the surface. N+ denotes a heavily doped concentration, and N- represents a lightly doped concentration. The gate design prevents phosphorous from infiltrating beneath it.<br>

2. Similarly, Mask8 is used on a new layer of photoresist. Boron is then diffused with the appropriate energy to implant it just beneath the surface.<br>

4. The entire layer is covered with either SiO2 or Si3N4.<br>

5. Plasma anisotropic etching, a directed etching process, is employed to remove the oxide layer, except for the portions on the side walls of the gate. These side-wall spacers serve to protect the lightly doped areas, preserving their integrity.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/12.png"><br><br>

The process of forming the Source and Drain regions involves a few important steps:<br>

1. A thin layer of screen oxide is introduced to mitigate the channeling effect. This screen oxide layer serves to randomize the direction of ions during the implantation process. Channeling effect occurs when the velocity vector of ions aligns with the crystalline structure of the p-type substrate, potentially allowing ions to penetrate deeper into the substrate without interacting with silicon atoms.<br>
2. Mask 9, used in conjunction with the photolithographic process, is applied to cover the n-well region, while Mask 10 is employed to cover the p-well region.<br>

3. Below the surface of the N-well region, P+ areas are created, and beneath the P-well region, N+ areas are formed. These areas are essential for the establishment of the Source and Drain regions in the semiconductor device.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/13.png"><br><br>

The lightly doped drain areas are still intact and the boron(~50keV) and arsenic (~75keV) are diffused into n-well and p-well respectively. 8. Contacts and local interconnects First, remove the thin screen oxide using HF solution. The oxide layer is etched to form the interconnects<br>

* Deposit titanium on wafer surface using sputtering. When titanium metal reacts with argom gas, the titanium ions moves from the metal surface to the surface of substrate.<br>
* Then, Wafer is heated at about 650-700c in nitrogen ambience.The lowresistant TiSi2 gets deposited all over the surface that can be used for local interconnects.<br>
* The mask 11 is used to create the gaps to draw interconnects to top.The extra TiN is etched by RCA cleaning. The RCA solution consists of deionized water, hydropgen peroxide, ammmonium hydroxide.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/14.png"><br><br>

* To achieve a more even surface, as the surface topography is typically uneven, a thick SiO2 layer doped with phosphorous or boron is deposited. Chemical mechanical polishing is then utilized to planarize the surface of the wafer.<br>

* Next, contact holes are created through a photolithographic process using Mask 12. Once the holes are formed, the mask is removed. A thin layer of TiN is grown, which serves as both an effective adhesion layer for SiO2 and a barrier between the lower and upper interconnects.<br>

* A blanket layer of tungsten is deposited, followed by the deposition of an aluminum layer on top. Mask 13 is applied to the aluminum layer as part of the photolithographic process, allowing for the formation of metal contacts.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/15.png"><br><br>

SiO2 is once more deposited, and then holes are generated using Mask 14 via the photolithographic process. Afterward, a TiN layer is deposited.<br>

Mask 15 is employed to establish the desired pattern above this second tungsten layer. The thickness of the metal layer gradually increases from the bottom to the top.<br>

Finally, Mask 16 is applied to bore open contact holes within this layer, enabling the creation of desired connections.<br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/dd7b807eee42f34cfa021a80fbf594039eba5477/day17/start/16.png"><br><br>


</details>

<details>
<summary>Lab introduction to Sky130 basic layers layout and LEF using inverter</summary><br>

* Invoke magic: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/invoke_magic.png"><br><br>

* Inverter cell layout: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/2_magic_inverter_layout.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/start/17.png"><br><br>

* Information about inverter: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/3_nmos.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/4_pmos.png"><br><br>

* Connection of PMOS and  NMOS drain: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/5_connection_pmos_nmos.png"><br><br>

* Connection of PMOS source: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/6_connection_pmos_source_vdd.png"><br><br>

* Connection of NMOS source: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/7_connection_nmos_source_vss.png"><br><br>

</details>

<details>
<summary>Finding DRC error</summary><br>

* DRC Find next error: <br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/9_find_next_error.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/10_errors_in_DRC.png"><br><br>

* Information about inverter: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/3_nmos.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/4_pmos.png"><br><br>

* Extracting the spice Model of CMOS inverter: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/11_create_spice_file.png"><br><br>

* Exploring ```sky130_inv.ext: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/12_sky131_ext.png"><br><br>

* Original Spice file of the inverter: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/12_sky130_spice.png"><br><br>

* Pshort and Nshort libraries: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/14_pshort_lib.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/15_nshort_lib.png"><br><br>

* Editted spice file for the CMOS Inverter: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/71184f6dda9921a2f1cd22dc2a49d612c154509e/day17/16_spice_editted_for_simulation.png"><br><br>

</details>

### Cell design and characterization flows

<details>
<summary>Lab introduction to Magic and steps to load Sky130 tech-rulesn</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/18.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/19.jpeg"><br><br>

</details>

<details>
<summary>Lab exercise to fix poly.9 error in Sky130 tech-file</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/20.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/21.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/22.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/23.jpeg"><br><br>

</details>

<details>
<summary>Lab exercise to implement poly resistor spacing to diff and tap</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/24.jpeg"><br><br>

</details>

<details>
<summary>Lab challenge exercise to describe DRC error as geometrical construct</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/25.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/26.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/27.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/28.jpeg"><br><br>

</details>

<details>
<summary>Lab challenge to find missing or incorrect rules and fix themt</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/29.jpeg"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/61d93d3f2b07c18810a66125ef41cc421b7a152a/day17/start/30.jpeg"><br><br>

</details>



## Day-18-Pre-layout timing analysis and importance of good clock tree

### Timing modelling using delay tables

<details>
<summary>Track info and lab steps to convert magic layout to std cell LEF</summary><br>

In the context of physical design, "tracks" typically refer to horizontal and vertical routing channels used to connect various components and elements on an integrated circuit (IC) or printed circuit board (PCB). These tracks are also known as signal traces, conductive traces, or routing channels. The term "tracks" can be applied in both electronic and semiconductor design, but there are some differences in their usage. The image below illustrates the arrangement of metal layers for both horizontal and vertical routing, including the designated tracks and spacing for each layer. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a30000164e696c370f51d3628d8e05fc11531b6/day18/1_tracks.png"><br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a30000164e696c370f51d3628d8e05fc11531b6/day18/2_tracks.png"><br><br>

* All the contacts should meet the tracks and space that are defined in the the ```tracks.info```. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a30000164e696c370f51d3628d8e05fc11531b6/day18/2_tracks.png"><br><br>

* Press ```g``` to turn on the grid. Now we will set the grid size. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a30000164e696c370f51d3628d8e05fc11531b6/day18/3_grid_tracks.png"><br><br>

* The image provided displays Port A and Y positioned at the intersection of the x and y-axis of the routing tracks, ensuring that connections can be established in both routing directions.

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a30000164e696c370f51d3628d8e05fc11531b6/day18/4_a_y_on_intersection.png"><br><br>

* In the image below we can see height of the cell is the integral multiple of the height of the cell. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/5_height_multiple.png"><br><br>

* The image below illustrates the process of connecting to Port A. To achieve this, you should position the cursor above the port and press the ```s``` key twice. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/6_PORTa_CONNECTIONS.png"><br><br>

* The image below illustrates the process of connecting to Port ```Y```. To achieve this, you should position the cursor above the port and press the ```s``` key twice. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/7_PORT_Y_CONNECTIONS.png"><br><br>

* Writing the spice model and LEF file for the inverter: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/8_save_inv_write_lef.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/9_save_inv_write_lef.png"><br><br>

* LEF file: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/10_lef_file.png"><br><br>

* Copy all the libraries and lef to the picorv32a design folder: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4235faf5fff22ad17a32f003f8b00b94a6461f39/day18/new_new/2.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/13_fast_lib.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/14_slow_lib.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3a2ed59a653ccd5b2105fa3af536276ffb2e4b57/day18/15_typical_lib.png"><br><br>

* Modify the config file as shown below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4235faf5fff22ad17a32f003f8b00b94a6461f39/day18/16_editted_tcl.png"><br><br>

* Now setup the openlane and run the design: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4235faf5fff22ad17a32f003f8b00b94a6461f39/day18/17_prep_design.png"><br><br>

* Now add the lef files as shown in the figure below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4235faf5fff22ad17a32f003f8b00b94a6461f39/day18/18_add_lef.png"><br><br>

</details>


<details>
<summary>Introduction to delay tables</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new_new/3.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new_new/4.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new_new/5.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new_new/6.jpeg"><br><br>

</details>

<details>


<summary>Lab steps to configure synthesis settings to fix slack and include vsdinvs</summary><br>

* Run Synthesis: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/19_synthesis.png"><br><br>

* Nww to fix the ```tns``` and ```wns``` we will make the following changes: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d7d6f30eb3b795eadfb24a4c468bdb0c01b0e3d9/day18/new_new/7.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/21_fix_tns_wns.png"><br><br>

* Run Synthesis again: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/22_fixed_tns_wns.png"><br><br>

* Run Floorplan: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/23_error_floorplan.png"><br><br>

* To resolve the above error, make the changes as shown in the figure below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/24_modified.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/25_FLOORPLAN_tcl_modified.png"><br><br>

* Run floorplan again and placement: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/50e308e393733b6859f932fb6c5b08074d6fcc16/day18/new/26_floorplan.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d7d6f30eb3b795eadfb24a4c468bdb0c01b0e3d9/day18/new/28_placement_gui.png"><br><br>

* Inverter in with my name is shown in the figure below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/885e759f65a9ab31afca5751f40fb6f63c1ee65c/inverter/5_inverter.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/885e759f65a9ab31afca5751f40fb6f63c1ee65c/inverter/6_inverter.png"><br><br>


</details>

### Timing analysis with ideal clocks using open STA

<details>
<summary>Setup timing analysis, clock jitter and uncertainity</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e83df0e3135a8af7da53d2cb9aab1eea5d270a51/day18/new_new/8.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e83df0e3135a8af7da53d2cb9aab1eea5d270a51/day18/new_new/9.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e83df0e3135a8af7da53d2cb9aab1eea5d270a51/day18/new_new/10.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e83df0e3135a8af7da53d2cb9aab1eea5d270a51/day18/new_new/11.jpeg"><br><br>

</details>

<details>
<summary>Timing Analysis in open STA</summary><br>

* Create a file named ```pre_sta.conf``` in openlane directory: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d7d6f30eb3b795eadfb24a4c468bdb0c01b0e3d9/day18/new/29_my_base_sdc.png"><br><br>

* Create a file named ```my_base.sdc``` in openlane directory: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d7d6f30eb3b795eadfb24a4c468bdb0c01b0e3d9/day18/new/30_pre_sta_cong.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e83df0e3135a8af7da53d2cb9aab1eea5d270a51/day18/new/31_cap_value.png"><br><br>


<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1f5e1cc05e29f18c0c3b49e773d06f3a819b6da/day18/new_new/12.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1f5e1cc05e29f18c0c3b49e773d06f3a819b6da/day18/new_new/13.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1f5e1cc05e29f18c0c3b49e773d06f3a819b6da/day18/new_new/14.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1f5e1cc05e29f18c0c3b49e773d06f3a819b6da/day18/new_new/15.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1f5e1cc05e29f18c0c3b49e773d06f3a819b6da/day18/new_new/16.jpeg"><br><br>

</details>

### Clock tree synthesis TritonCTS and signal integrity

<details>
<summary>CLock tree and cross talk</summary><br>


<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2f0fe2ecc4454b16f0001c8799a95865e8e52bdc/day18/new_new/17.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2f0fe2ecc4454b16f0001c8799a95865e8e52bdc/day18/new_new/18.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2f0fe2ecc4454b16f0001c8799a95865e8e52bdc/day18/new_new/19.jpeg"><br><br>

* Run CTS: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2f0fe2ecc4454b16f0001c8799a95865e8e52bdc/day18/new/40_run_cts.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/30.png"><br><br>

</details>


### Timing analysis with real clocks using openSTA
 
<details>
<summary>Setup and Hold timing analysis using real clocks</summary><br>


<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/20.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/21.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/22.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/23.jpeg"><br><br>

</details>

<details>
<summary>Lab steps to analyze timing with real clocks using OpenSTA</summary><br>


<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/24.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/25.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/26.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/27.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/28.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/86598dae2d268095e70c6b49dbbfd68045e3692a/day18/new_new/29.jpeg"><br><br>

</details>


## Day-19 - Final steps for RTL2GDS

### Power Distribution Network and routing

<details>
<summary>Introduction to Maze Routing Lee’s algorithm</summary><br>

* Lee's Algorithm is a method designed for determining the most efficient path between two points within a grid. Routing, on the other hand, involves establishing actual wire connections in a design to identify the most direct route between a starting point and a destination, minimizing both distance and the number of zigzag turns. Nonetheless, it's crucial for the algorithm to account for any obstacles that might hinder the routing process in a particular area.

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/1.PNG"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/2.jpeg"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/3.PNG"><br><br>

* Routing a single path is relatively uncomplicated, but when confronted with the task of routing between millions of different start and end points, this approach can become highly demanding in terms of both time and memory resources. <br>
* For large-scale designs, maze routing becomes even more time and memory-intensive.<br>
* To mitigate these issues, certain techniques like the line-search algorithm and the stanner-tree algorithm can be employed to reduce the consumption of time and memory resources.<br>

</details>

<details>
<summary>Design Rule Check</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/4.jpeg"><br><br>

* On the same layer, there is an unintended intersection between two wires that should not be connected. This situation could lead to operational malfunctions and requires a solution. To rectify this, simply relocate one of the wires to an alternative metal layer. It's important to note that there are new design rule requirements that need to be adhered to in the process. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/5.PNG"><br><br>

* Every network or wire inherently possesses parasitic capacitance. We must conduct parasitic extraction, a procedure in which we retrieve and utilize the resistances and capacitances associated with the wires for subsequent stages in the process. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/6.PNG"><br><br>

</details>

### Power Distribution Network and routing


<details>
<summary>Lab steps to build power distribution network</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/7.jpeg"><br><br>

</details>

<details>
	
<summary>Lab steps from power straps to std cell power</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/8.jpeg"><br><br>

</details>

<details>
<summary>Basics of global and detail routing and configure TritonRoute</summary><br>

Routing, in the context of electronic design and integrated circuits, refers to the process of determining the physical paths or connections for electrical signals on a chip or a printed circuit board (PCB). It involves deciding how wires, traces, or interconnects should be laid out to ensure that signals can travel from their source to their destination while meeting various design constraints, such as timing, area constraints, and avoiding interference. <br><br>

**Global and detailed routing are two phases within the routing process:**<br><br>

**Global Routing:**<br>

* Global routing is the initial phase in the routing process, where the overall path for connections is established at a high level.<br>
* It focuses on determining the general path and direction of wires or signal paths while taking into account high-level design constraints.<br>
* At this stage, specific paths for each wire or signal are not yet defined in detail. Instead, it involves creating a rough plan for how wires should traverse the chip or PCB to connect various components.<br>
* Global routing helps define the general topology of the interconnections and ensures that there are no major conflicts or congestion issues in the design.<br><br>

**Detailed Routing:**<br>

* Detailed routing, also known as track assignment or channel routing, is the subsequent phase that follows global routing.<br>
* In this phase, the exact paths for each wire or signal are defined in detail. This includes determining the specific locations of vias, routing layers, and obstacles that may be encountered.<br>
* Detailed routing takes into consideration the intricacies of the design, adheres to design rules, and aims to optimize the routing for various objectives such as minimizing wirelength, reducing crosstalk, and avoiding congestion. <br>
* It's a more computationally intensive and fine-grained process than global routing and requires careful consideration of various design constraints and objectives. <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/9.jpeg"><br><br>

</details>

### TritonRoute Features

<details>
	
<summary>TritonRoute feature 1 - Honors pre-processed route guides</summary><br>

* TritonRoute is an open-source detailed routing tool designed for contemporary industrial designs. This router comprises key components such as pin access analysis, track assignment, initial detailed routing, search and repair functionalities, and a DRC engine.<br>
* TritonRoute was created by graduate students Lutong Wang and Bangqi Xu at UC San Diego and serves as the detailed routing component within the OpenROAD project.<br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/10.PNG"><br><br>

</details>

<details>

<summary>TritonRoute Feature2 & 3 - Inter-guide connectivity and intra- & inter-layer routing</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/089433b219fcb36d9d14ed8864eb1792b9432c76/day19/13.png"><br><br>

In the above image: <br>
* Purple colour is common between M1 and M2 which mean they are connected.
* Then the tool will put via.

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/11.PNG"><br><br>

In the above image: <br>
* Intra mean within laver.<br>
* Inter mean between layer. <br>
* The dash line are called panel.<br>
* Each routing guide are assign to 1 panel.<br>
* Routing intra-layer will happen in parallel. <br>
* Routing interlayer (M1 to M2) will happen in sequence. <br>

</details>

<details>
	
<summary>TritonRoute method to handle connectivity</summary><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d508e3180c813c781a533b1a4cc110ec1f9d3dc5/day19/12.jpeg"><br><br>

</details>

## Day 20 - Floorplanning and power planning labs

<details>
<summary>Physical Design Flow</summary>

The Physical Design Flow in Very Large Scale Integration (VLSI) is a critical phase in the chip design process where the logical design of a semiconductor chip is transformed into a physical representation suitable for manufacturing. This process involves various steps and tools to ensure that the chip can be fabricated accurately and efficiently. Here, I'll elaborate on the steps involved in the physical design flow of VLSI:<br><br>

1. **Netlist and Constraints**:<br>
* Begin with the logical netlist, which represents the connections between the different components of the chip.<br>
* Define design constraints, including area, power, timing, and testability requirements. These constraints are essential for guiding the physical design process.<br><br>

2. **Floorplanning**:<br>
* Determine the overall chip's floorplan, which involves placing the major blocks or modules in the chip and defining their approximate size and shape.<br>
* Optimize the placement of these blocks to meet area, power, and timing constraints.<br><br>

3. **Placement**:<br>
* In this step, the individual cells (logic gates, memory elements, etc.) are placed within each block according to the predefined floorplan.<br>
* Efficient placement minimizes wire lengths, reduces congestion, and meets the timing constraints.<br><br>

4. **Global Routing**:<br>
* Connect the macro blocks with wires, known as global routing. It establishes a high-level interconnect structure while adhering to design constraints.<br><br>

5. **Clock Tree Synthesis (CTS)**:<br>
* Design a clock distribution network that ensures consistent and synchronized clock signals throughout the chip.<br>
* Minimize clock skew and power consumption.<br><br>

6. **Detailed Routing**:<br>
* Detailed routing involves connecting the individual cells within blocks and between blocks.<br>
* It considers the manufacturing rules, layer-specific constraints, and timing requirements.<br>
* Typically, this process generates a detailed routing guide for the next step.<br><br>

7. **Physical Verification**:<br>
* Run a series of design rule checks (DRC) and layout versus schematic (LVS) checks to ensure that the design complies with foundry-specific manufacturing rules and the original logical design.<br><br>

8. **Extraction and Timing Analysis**:<br>
* Extract the parasitic capacitance and resistance values from the layout to perform accurate timing analysis.<br>
* Perform static timing analysis to ensure that the chip meets its timing requirements.<br><br>

9. **Optimization**:<br>
* Iteratively optimize the layout to meet power, area, and performance targets. This may involve adjustments to placement and routing.<br><br>

10. **Design for Testability (DFT)**:<br>
* Implement test structures like scan chains, boundary scan cells, and Built-In Self-Test (BIST) to facilitate chip testing during manufacturing and in the field.<br><br>

11. **Power Grid Design**:<br>
* Design a power distribution network to provide a stable power supply to all parts of the chip.<br><br>

12. **Final Physical Verification**:<br>
* Perform a final round of DRC and LVS checks to ensure that the design is error-free and ready for manufacturing.<br><br>

13. **Tape-Out**:<br>
* Prepare the final design files and documentation for submission to the foundry for semiconductor manufacturing.<br><br>

14. **Post-Tapeout Activities**:<br>
* Support any post-tapeout activities, such as mask generation, testing, and debugging. <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4850ad6715fd4fa1ebe1a71e6ed727c867eafbf7/day20/1_flow.png"><br><br>

</details>




<details >
<summary>Lab on floorplan and powe planning</summary>

* To start up, we fist need to clone the foolowing github dierectories:<br>

 ```ruby
git clone https://github.com/manili/VSDBabySoC.git
git clone https://github.com/Devipriya1921/VSDBabySoC_ICC2.git
git clone https://github.com/bharath19-gs/synopsys_ICC2flow_130nm.git
git clone https://github.com/kunalg123/icc2_workshop_collaterals.git
git clone https://github.com/google/skywater-pdk-libs-sky130_fd_sc_hd.git
git clone https://github.com/kunalg123/sky130RTLDesignAndSynthesisWorkshop.git
```
* In the dierctory VSDBabySoC_ICC2, edit vsdbabysoc.tcl as shown in the figure below:<br>
  
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/1_tcl"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/2_tcl"><br><br>

* In the dierctory VSDBabySoC_ICC2, edit avsdpll.lib as shown in the figure below:<br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/3_avsdpll_lib.png"><br><br>

* Now we will source the vsdbabysoc.tcl in dc_shell: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/4_source_tcl.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/5_sourcing_completed.png"><br><br>

#### Area Report of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/6_area_report.png"><br><br>


#### Power Report of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/7_power_report.png"><br><br>


#### Timing Report of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/8_timing_report.png"><br><br>


#### SDC Constraints Report of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/9_sdc.png"><br><br>

#### Output schematic of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/10_schemativ.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/11_schemativ.png"><br><br>

#### RVMYTH core of the desing 
<br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/12_schemativ.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/13_schemativ.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/14_schemativ.png"><br><br>

### Now we will do the floor plan and power palnning 
<br>
* First we will modify the top.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/15_top_tcl.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/17_top_tcl.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/18_top_tcl.png"><br><br>

* Now we will modify the icc2_common_setup.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/19_icc2_common.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/20_icc2_common.png"><br><br>

* Now we will modify the icc2_dp_setup.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/21_icc2_common.png"><br><br>

* Now we will modify the init_design.read_parasitic_tech_example.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/22_icc2_common.png"><br><br>

* Now we will modify the init_design.mcmm_example.auto_expanded.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/23_expanded_tcl.png"><br><br>

* Now we will modify the pns_example.tcl in the VSDBabySoC_ICC2 and put the location of the files according to our personal machines. Screenshots for the same are as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/130209c3c13abe81dd2c0c7a770fb2a9251eb3b6/day20/24_pns_example.png"><br><br>

#### Output Layout 

* Invoke ```icc2_shell``` by commands shown below: <br>

```ruby
csh
icc2_shell
source top.tcl
start_gui
```
* ```start_gui``` run only when it is not specified in the top.tcl: <br>
* Gui of the design with core utilization of 0.07 is shown below: <br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/25_gui.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/26_gui_zoomed.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/27_gui_zoomed.png"><br><br>

* Now we will ```set_propagated_clock [all_clocks]``` and check the timing report: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/28_set_clock_timig.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/29_report_timing.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/30_report_timing.png"><br><br>

* Now we will try ```estimate_timing``` as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/31_estimate_timing.png"><br><br>

* Now we will try ```report_constraints -all_violators -nosplit -verbose -significant_digits 4 > a``` as shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/32_constraint.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/33_constraint_report.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/34_constraint_report.png"><br><br>

* Now we will set the ```-core_utilization 0.40``` to 40 % and check the gui: <br>
```ruby
csh
icc2_shell
source top.tcl
start_gui
```

* GUI of the design wiht core utilization of 40 % is shown below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/35_gui_utilization_40.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/36_gui_utilization_zoomed_41.png"><br><br>

* Now after increasing the core utilisation, we see slack getting improved from ```-2.43``` to ```-1.94``` : <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/36_timing_reduced_slack.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/24e151ea475d9c2acee547e63bd38c25e89160e1/day20/37_estimate_timing.png"><br><br>

</details>

## Day-21 Placement and CTS labs

<details>
	
<summary>Placement</summary>

Placement is a crucial step in the physical design flow of VLSI. It involves determining the physical locations of standard cells within a chip's floorplan. Standard cells are predefined, fixed-height, and fixed-width cells that contain logic gates and other components necessary for the chip's functionality. Placement plays a significant role in meeting various objectives, such as congestion, performance, timing, routability, and runtime.<br><br>

**Standard Cell Placement Stages**:<br><br>

1. **Global Placement**:<br>

* This initial phase of placement determines the approximate locations of standard cells based on the chip's floorplan.<br>
* The primary goal is to achieve a high-level arrangement that satisfies area and power constraints while minimizing wirelength.<br><br>

2. **Legalization**:<br>
* In this stage, the preliminary placement is refined to ensure that standard cells are positioned according to manufacturing and design rules.<br>
* It addresses issues like cell overlap, off-grid placement, and boundary violations.<br><br>

3. **Detailed Placement**:<br>
* Detailed placement refines the positions of individual cells within their legal positions.<br>
* It aims to optimize the placement for timing, congestion, and other design objectives.<br><br>

**Placement Objectives**:<br><br>

1. **Congestion**: Minimize the density of cells in a specific region of the chip to prevent overcrowding, which can negatively impact manufacturability and performance.<br>

2. **Performance**: Optimize the placement to enhance the chip's performance, including speed and power efficiency.<br>

3. **Timing**: Ensure that cells are placed to meet timing requirements, minimizing signal delays and maximizing performance.<br>

4. **Routability**: Facilitate efficient routing by reducing congestion and ensuring there are clear paths for interconnections.<br>

5. **Runtime**: Efficient placement can reduce the runtime for subsequent stages of physical design, such as routing and verification.<br><br>

**Clock Tree Synthesis (CTS)**:<br><br>
Clock Tree Synthesis is a critical part of placement that focuses on distributing the clock signals throughout the chip in a balanced and efficient manner. The inputs of CTS typically include:<br>

* **Placement Database (Placement DB)**: This database contains the location and attributes of all standard cells, as determined by the placement stage.<br>

* **CTS Spec File**: It contains specifications and constraints for the clock tree, such as the target clock skew, insertion delay limits, and other requirements.<br><br>

**CTS Steps**:<br><br>

1. **Clustering**: Group logically related cells into clusters to simplify clock distribution. These clusters are connected to the main clock tree.<br>

2. **DRV (Driver) Fixing**: Adjust the sizing of clock buffers to meet required signal strength and drive capability.<br>

3. **Insertion Delay Reduction**: Minimize clock skew by adjusting the insertion delays in the clock tree to meet timing constraints.<br>

4. **Power Reduction**: Optimize the clock tree for power consumption while still meeting timing requirements.<br>

5. **Balancing**: Achieve a balanced clock tree to minimize clock skew and improve overall chip performance.<br>

6. **Post-conditioning**: Perform additional optimizations to ensure that the clock tree meets design specifications.<br><br>

**CTS Quality Checks**:<br>

During Clock Tree Synthesis, several quality checks are performed to ensure that the clock distribution is reliable and meets design objectives. These checks include:<br>

* **Skew**: Ensure that clock signals arrive at different parts of the chip with minimal skew, which is essential for synchronous operation.<br>

* **Pulse Width**: Verify that clock pulses have the required width to enable proper operation of flip-flops and other clocked elements.<br>

* **Duty Cycle**: Ensure that the clock signal's duty cycle (percentage of time it is high) is within specifications.<br>

* **Latency**: Assess the time it takes for the clock signal to propagate from the source to the destination, ensuring that it is within acceptable limits.<br>

* **Clock Tree Power**: Check that the power consumed by the clock tree is within acceptable limits.<br>

* **Signal Integrity and Crosstalk**: Verify that clock signals are free from noise and crosstalk, which can cause errors in the operation of digital circuits.<br>

* **Timing Analysis and Fixing**: Continue to perform timing analysis to confirm that the clock tree meets all design constraints and, if necessary, make further adjustments to ensure timing closure.<br><br>

Successful placement and Clock Tree Synthesis are critical for achieving a functional, high-performance VLSI chip that meets its design requirements. The iterative nature of these steps, along with rigorous quality checks, ensures that the chip operates as intended.

</details>

<details>
<summary>Labs on Placement and it's reports</summary>

* In the script ```top.tcl```, for placement we have used create_placement as shown in the image below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/1_placement_tcl.png"><br><br>

* Informaton on pin placement is also present in the ```top.tcl``` as shown in the figure below: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/2_pin_placement.png"><br><br>

* Reports generated for the placement are also listed in the ```top.tcl```: <br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/3_timing_constraint.png"><br><br>

* Noe will go on with exploring the different types of the reports genearted for the placement: <br><br>

1. **check_design.pre_pin_placement** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/4_placement_report_location.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/5_placement_report.png"><br><br>

2. **report_port_placement.rpt** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/6_report_port_placement_location.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/7_report_port_placement.png"><br><br>

3. **icc2_output.txt** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/8_icc2_output_location.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/9_icc3_output.png"><br><br>

4. **icc2_output.txt** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/8_icc2_output_location.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/9_icc3_output.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/10_icc2_output.png"><br><br>

5. **vsdbabysoc.post_estimated_timing.rpt** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/12_timing_rpt.png"><br><br>

6. **vsdbabysoc.post_estimated_timing.qor** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/13_placement_qor_location.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/14_placement_qor.png"><br><br>
<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/15_placement_qor.png"><br><br>

7. **vsdbabysoc.post_estimated_timing.qor.sum** <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/6c34f82df6426cc79d5d12ab712ae38195c3ee76/day21/17_placement_qor_sum.png"><br><br>

### CTS schematic design: <br><br>

<img width="700" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/e12b4ebea1fabc9ee043d66deebf155b7136e110/day21/18.png"><br><br>


</details>

## Day-22-CTS analysis labs

<details>

<summary>CTS</summary>

* Clock Tree Synthesis (CTS) is a critical phase in the physical design of integrated circuits, particularly in digital ASIC (Application-Specific Integrated Circuit) and FPGA (Field-Programmable Gate Array) designs. CTS focuses on the generation of an optimized clock distribution network to ensure that clock signals reach all the sequential elements (e.g., flip-flops or latches) in a synchronous digital design with minimal skew and appropriate timing.<br><br>

* Here's an overview of the CTS process in physical design:<br><br>

1. **Input Constraints**:<br>

* **Clock Constraints**: Designers define clock constraints such as clock frequency, clock edges, and setup/hold time requirements.<br>
* **Clock Domain Information**: Identify different clock domains within the design, each with its own set of clock signals.<br><br>

2. **Clock Tree Generation**:<br>

* **Buffer Insertion**: Clock buffers are inserted into the clock tree to fan-out the clock signal and reduce skew.
* **Clock Network Topology**: The tool determines the topology of the clock network, including the placement of buffers and routing paths.<br>
* **Clock Gating**: Clock gating cells may be used to reduce dynamic power consumption by disabling clock signals when not needed.<br><br>

3. **Clock Tree Optimization**:<br>

* **Skew Minimization**: The goal is to minimize clock skew, which is the variation in clock arrival times at different registers. Equalizing skew ensures that all registers see the same clock edge with minimal delay.<br>
* **Buffer Sizing**: The sizing of clock buffers is adjusted to control skew and meet timing constraints.<br>
* **Balancing Loads**: The clock tree is designed to balance loads on each branch to minimize skew.<br>
* **Clock Tree Insertion**: Additional buffers may be inserted if necessary to meet timing requirements.<br><br>

4. **Timing Analysis**:<br>

* **Clock Path Analysis**: Timing analysis is performed to ensure that all clock paths meet setup and hold time requirements.<br>
* **Data Path Integration**: The clock tree's impact on data paths is considered to ensure that data signals meet timing constraints in the presence of clock signals.<br><br>

5. **Verification and Optimization Iteration**:<br>

* After CTS, the design is verified to check if it meets timing and other constraints. If issues are found, designers iterate through the optimization process.<br><br>

6. **Clock Domain Crossing (CDC) Analysis**:<br>

* Designers analyze and address issues that can arise when signals cross clock domains. Special synchronizers or techniques may be used to ensure data integrity.<br><br>

7. **Final Checks**:<br>

Final physical design checks and sign-off are performed, including DRC (Design Rule Check) and LVS (Layout versus Schematic) checks.<br><br>

8. **Layout and Tapeout**:<br>

* Once the design is fully validated and optimized, the physical layout is generated, and the design is ready for tapeout, which is the process of preparing the design for fabrication.<br><br>

CTS is a critical step in achieving a reliable and high-performance integrated circuit design, as it ensures that clock signals are distributed efficiently, and that the design meets timing and power requirements. The specific tools and methodologies used in CTS can vary depending on the design flow, technology node, and design requirements.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/5af34622c28a915587c21f14ce2bc37e056bf73b/daay22/2.jpeg"><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/5af34622c28a915587c21f14ce2bc37e056bf73b/daay22/3.jpeg"><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/5af34622c28a915587c21f14ce2bc37e056bf73b/daay22/4.jpeg"><br>

</details>



 <details>
	 
 <summary>Labs on CTS Analysis</summary>
	 
* Below is the tcl script sourced to: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/065d202f5927b0f7adf7cf9049b1f515a666d3c3/daay22/1_utilization_40.png"><br>

* Now we will have to modify some constraints in the ```vsdbabysoc.tcl```: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/065d202f5927b0f7adf7cf9049b1f515a666d3c3/daay22/2_vsdbabysoc_tcl.png"><br>

* Usage of ```check_clock_tree```:<br>

Analysis: The ```check_clock_tree``` command is used to analyze the quality and characteristics of the generated clock tree. It checks for issues such as skew, insertion delay, and hold time violations, which could affect the functionality and performance of the design.<br>

**Optimization**: After running the command, you can make adjustments to the clock tree, if necessary, to improve its quality. This might involve changing buffer placements, resizing buffers, or altering the clock tree topology.<br>

**Verification**: It's important to ensure that the clock tree meets the design specifications and requirements. The check_clock_tree command helps in verifying that the clock tree adheres to these specifications and constraints.<br>

* Below ss shows the report for ```check_clock_tree```: <br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/3_report_clock_tree.png"><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/4_report_clock_tree.png"><br><br>

* The ```check_legality``` command in IC Compiler II (ICC2) is a tool used in the context of digital integrated circuit design to check the legality or compliance of your physical design with various design rules and constraints. It helps ensure that your design adheres to the required specifications and constraints, particularly in the placement and routing stages. This is crucial for producing a manufacturable and functional integrated circuit.<br>

* Checking for Design Rule Violations: One of the primary purposes of the ```check_legality``` command is to verify that your design complies with design rules. Design rules are a set of constraints provided by the semiconductor foundry or design team to ensure that the manufacturing process can produce a working chip. These rules cover various aspects, such as minimum spacing, minimum width, metal layer usage, and more.<br>

* Below report is for ```clock_legality```:<br>

```ruby
************************

running check_legality

Warning: Routing direction of metal layer li1 is neither "horizontal" nor "vertical".  PDC checks will not be performed on this layer. (PDC-003)
Warning: Routing direction of metal layer fieldpoly is neither "horizontal" nor "vertical".  PDC checks will not be performed on this layer. (PDC-003)
PDC app_options settings =========
	place.legalize.enable_prerouted_net_check: 1
	place.legalize.num_tracks_for_access_check: 1
	place.legalize.use_eol_spacing_for_access_check: 0
	place.legalize.allow_touch_track_for_access_check: 1
	place.legalize.reduce_conservatism_in_eol_check: 0
	place.legalize.preroute_shape_merge_distance: 0.0
	place.legalize.enable_non_preferred_direction_span_check: 0

Layer met1: cached 207 shapes out of 9445 total shapes.
Layer met2: cached 0 shapes out of 8979 total shapes.
Cached 19649 vias out of 56798 total vias.

check_legality for block design vsdbabysoc ... 
Information: Initializing classic cellmap without advanced rules enabled and without PDC enabled
Information: The following app options are used in cellmap
        place.legalize.enable_color_aware_placement : false
        place.legalize.use_nll_query_cm : false
        place.legalize.enable_advanced_legalizer : false
        place.legalize.enable_prerouted_net_check : true
        place.legalize.enable_advanced_prerouted_net_check : false
        place.legalize.always_continue : true
        place.legalize.limit_legality_checks : false
        place.common.pnet_aware_density : 1.0000
        place.common.pnet_aware_min_width : 0.0000
        place.common.pnet_aware_layers : {}
        place.common.use_placement_model : false
        place.common.enable_advanced_placement_model : true
        cts.placement.cell_spacing_rule_style : maximum
Total 0.0900 seconds to build cellmap data
Information: Creating classic rule checker.
Warning: Routing direction of metal layer li1 is neither "horizontal" nor "vertical".  PDC checks will not be performed on this layer. (PDC-003)
Warning: Routing direction of metal layer fieldpoly is neither "horizontal" nor "vertical".  PDC checks will not be performed on this layer. (PDC-003)
=====> Processed 43 ref cells (4 fillers) from library
Design has no advanced rules
Checking legality
Checking cell legality:
0%....10%....20%....30%....40%....50%....60%....70%....80%....90%....100%
Sorting rows.
Checking spacing rule legality.
0%....10%....20%....30%....40%....50%....60%....70%....80%....90%....100%
Checking packing rule legality.


****************************************
  Report : Legality
****************************************

VIOLATIONS BY CATEGORY:
   MOVABLE  APP-FIXED USER-FIXED  DESCRIPTION
         0          0          0  Two objects overlap.
         0          0          0  A cell violates a pnet.
         0          0          0  A cell is illegal at a site.
         0          0          0  A cell is not aligned with a site.
         0          0          0  A cell has an illegal orientation.
         0          0          0  A cell spacing rule is violated.
         0          0          0  A layer rule is violated.
         0          0          0  A cell is in the wrong region.
         0          0          0  Two cells violate cts margins.
         0          0          0  Two cells violate coloring.

         0          0          0  TOTAL

TOTAL 0 Violations.

VIOLATIONS BY SUBCATEGORY:
     MOVABLE  APP-FIXED USER-FIXED  DESCRIPTION

         0          0          0    Two objects overlap.
           0          0          0    Two cells overlap.
           0          0          0    Two cells have overlapping keepout margins.
           0          0          0    A cell overlaps a blockage.
           0          0          0    A cell keepout margin overlaps a blockage.

         0          0          0    A cell violates a pnet.

         0          0          0    A cell is illegal at a site.
           0          0          0    A cell violates pin-track alignment rules.
           0          0          0    A cell is illegal at a site.
           0          0          0    A cell violates legal index rule.
           0          0          0    A cell has the wrong variant for its location.

         0          0          0    A cell is not aligned with a site.
           0          0          0    A cell is not aligned with the base site.
           0          0          0    A cell is not aligned with an overlaid site.

         0          0          0    A cell has an illegal orientation.

         0          0          0    A cell spacing rule is violated.
           0          0          0    A spacing rule is violated in a row.
           0          0          0    A spacing rule is violated between adjacent rows.
           0          0          0    A cell violates vertical abutment rule.
           0          0          0    A cell violates metal spacing rule.

         0          0          0    A layer rule is violated.
           0          0          0    A layer VTH rule is violated.
           0          0          0    A layer OD rule is violated.
           0          0          0    A layer OD max-width rule is violated.
           0          0          0    A layer ALL_OD corner rule is violated.
           0          0          0    A layer max-vertical-length rule is violated.
           0          0          0    A layer TPO rule is violated.
           0          0          0    Filler cell insertion cannot satisfy layer rules.

         0          0          0    A cell is in the wrong region.
           0          0          0    A cell is outside its hard bound.
           0          0          0    A cell is in the wrong voltage area.
           0          0          0    A cell violates an exclusive movebound.

         0          0          0    Two cells violate cts margins.

         0          0          0    Two cells violate coloring.


check_legality for block design vsdbabysoc succeeded!


check_legality succeeded.

**************************
```

* The ```report_clock_timing -type summary``` command in IC Compiler II (ICC2) is used to generate a summary report of the clock timing information for your digital integrated circuit design. This command provides a high-level overview of the clock timing performance, which is essential for ensuring the proper functioning of synchronous digital circuits.<br>

* Output: When you execute this command, it generates a summary report that includes key timing information related to the clock signals in your design.<br>

* Here's how to use the ```report_clock_timing -type summary``` command in ICC2:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/5_report_clock_timing_summary.png"><br><br>

* Different terms of the above report are explained below: <br>

1. **Minimum setup launch latency**: The term "launch flip-flop maximum setup latency" refers to the maximum allowable time delay between the launch flip-flop (the flip-flop that sends out data) and the data becoming stable and valid at its output. <br><br>
2. **Minimum setup capture latency**: The term "minimum setup capture latency" refers to the minimum amount of time it takes for a digital flip-flop or latch to successfully capture and store an input signal as valid data. It's essential to ensure that the captured data meets the setup time requirement of the receiving flip-flop or latch.<br>
* Clock-to-Q Delay<br>
* Data Arrival Time<br>
* Clock Skew<br>
* Timing Constraints<br>
* Data Path Delays<br>
* Clock Frequency<br><br>
3. Minimum hold launch latency: The term "launch flip-flop minimum hold latency" refers to the minimum amount of time that data must remain stable and valid at the output of the launch flip-flop after it is captured by a receiving element (such as a capture flip-flop) in order for that data to be reliably captured.<br><br>
4. Maximum hold capture latency: The term "capture flip-flop maximum hold latency" refers to the maximum allowable time delay between the data being captured at the input of a capture flip-flop and the clock edge triggering the capture.<br><br>
5. **Maximum setup skew**: In digital circuit design, "setup skew" refers to the intentional or controlled variation in the arrival times of clock signals to different elements of the circuit, such as flip-flops or latches. The concept of "maximum setup skew" is associated with ensuring that the clock signal arrives at all relevant elements within a specified time window while considering the worst-case scenario.<br><br>
6. **Maximum hold skew**: In digital circuit design, "hold skew" refers to the controlled variation in the arrival times of clock signals to different elements of the circuit, such as flip-flops or latches, specifically in the context of ensuring that data remains stable for the required hold time. The "maximum hold skew" is the maximum allowed difference in clock arrival times at different flip-flops while still ensuring that data meets the hold time requirement for reliable operation.<br><br>

* The ```report_clock_timing -type skew``` command in IC Compiler II (ICC2) is used to generate a report that provides information about the skew in the clock tree of your digital integrated circuit design. Clock skew is the variation in arrival times of clock signals at different elements (e.g., flip-flops or latches) in the design. Understanding and managing clock skew is essential to ensure the reliable operation of synchronous digital circuits.<br>

* Here's how to use the ```report_clock_timing -type skew``` command in ICC2:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/6_report_clock_timing_skew.png"><br><br>

* The ```report_clock_timing -type latency``` command in IC Compiler II (ICC2) is used to generate a report that provides information about the clock latency in your digital integrated circuit design. Clock latency refers to the time it takes for a clock signal to propagate through the clock tree and reach specific elements (e.g., flip-flops or latches) in the design. Understanding and managing clock latency is crucial to ensure the proper operation and performance of synchronous digital circuits.<br>

* Here's how to use the ```report_clock_timing -type latency``` command in ICC2:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/7_report_clock_timing_latency.png"><br><br>

* The ```report_clock_timing -type transition``` command in IC Compiler II (ICC2) is used to generate a report that provides information about the transition times of signals in your digital integrated circuit design. Transition time refers to the time it takes for the signal to change from one logic state (e.g., high or low) to another. Understanding and managing signal transition times is important for analyzing signal integrity, power consumption, and overall design performance.<br>

* Here's how to use the ```report_clock_timing -type transition``` command in ICC2:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/03f99aac37fcdb759d22cab277ae46b8dd686ebb/daay22/8_report_clock_timing_transit.png"><br><br>

</details>

## Day-23-Clock gating technique

<details>
	
<summary>Clock gating technique</summary> <br>

In a digital circuit having many clocks and power consumption is a concern, dividing the chip into smaller sections with their own clock trees and implementing clock gating at various levels can be an effective strategy to manage power and keep the design more manageable. This approach allows for fine-grained control over clock signals, reducing power usage in parts of the chip that are not actively processing data or logic.<br><br>

Clock Gating (CG) is a power-saving technique commonly used in digital circuit design to reduce dynamic power consumption in synchronous systems, particularly in the context of clock trees. This technique involves selectively enabling or disabling clock signals to specific sections or components of a digital circuit, depending on their operational requirements. By turning off clock signals to idle or unused portions of a circuit, you can significantly reduce power consumption while still maintaining proper functionality.<br><br>

Here's an elaboration on the concept of Clock Gating:<br><br>

1. **Dynamic Power Consumption**: In digital circuits, dynamic power consumption is a significant concern. This type of power is consumed when transistors switch states, which happens with every clock cycle. The more frequently the clock toggles, the higher the power consumption.<br><br>

2. **Clock Tree**: A clock tree is a hierarchical structure that distributes clock signals from a single source (usually a PLL or oscillator) to various parts of a digital chip. It ensures that the clock signals reach all the flip-flops, registers, and other synchronous elements in the chip while maintaining skew and delay constraints.<br><br>

4. **Clock Gating**: Clock Gating is a method to selectively enable or disable the clock signals to specific regions or components of the chip. By doing this, you can effectively reduce the number of clock cycles during which the circuits are active. Clock Gating is achieved by inserting special logic gates, known as clock gating cells, into the clock tree. These gating cells decide whether to propagate the clock signal or block it based on certain conditions.<br><br>

5. **Conditions for Gating**: Clock gating can be controlled by various conditions, such as:<br><br>

* **Functional Requirements**: Clock signals can be gated based on the actual need of the logic within a particular block. For example, if a certain module is not actively processing data, its clock can be gated off to save power.<br>
* **ctivity or Idle Status**: Clock gating can be based on the activity or idle status of a module. If a module is inactive for some time, its clock can be disabled.<br>
* **Data Dependencies**: Some clock gating may depend on the availability of valid data or control signals.<br>
* **Power Management Modes**: In low-power modes, some clock domains may be completely shut down.<br><br>

6. **Benefits**:<br>

* **Reduced Power Consumption**: Clock gating effectively reduces dynamic power consumption because it reduces the number of clock cycles where circuits are active.<br>
* **Improved Timing**: By selectively gating the clock, it is possible to manage clock skew and improve timing closure in complex designs.<br>
* **Heat Reduction**: Lower power consumption translates to reduced heat generation, which is especially important for high-performance and high-density chips.<br><br>

7. **Challenges**:<br>

* **Timing Constraints**: Careful consideration of timing constraints is necessary to ensure that gating does not violate setup and hold times.<br>
* **Verification and Testing**: Complex clock gating logic can introduce new challenges for design verification and testing.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f7a35c40df4a6cda0ba68c9b0c388433de4c7783/day23/1.jpeg"><br><br>


</details>

<details>

<summary>Labs</summary>

* Since our library supports 1.8 volts, we first change teh ```set_voltage``` level: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/1_voltage_change.png"><br><br>


* Clock and signal routing:<br>

```place_opt```: The ```place_opt``` command in ICC2 (Integrated Circuit Compiler 2) is used to perform placement optimization for digital integrated circuit design. It is a part of the Cadence Design Systems suite of EDA (Electronic Design Automation) tools and is typically used for ASIC (Application-Specific Integrated Circuit) and FPGA (Field-Programmable Gate Array) design. The primary purpose of the ```place_opt``` command is to improve the physical layout of the design, which can impact factors such as performance, power, and area utilization. <br>

```clock_opt```: The ```clock_opt``` command in Cadence's ICC2 (Integrated Circuit Compiler 2) is used for clock tree synthesis and optimization in digital integrated circuit design. Clock tree synthesis is a critical step in the design process to ensure that the clock signal is efficiently distributed to various parts of the chip, while meeting timing, power, and skew constraints. <br>

```route_auto``` The route_auto command in Cadence's ICC2 (Integrated Circuit Compiler 2) is used for automatic routing in digital integrated circuit design. This command allows the tool to automatically generate the routing for the connections between different components in your design, based on the netlist and constraints.<br>

```set_lib_cell_purpose```: The ```set_lib_cell_purpose``` command in Cadence's ICC2 (Integrated Circuit Compiler 2) is used to specify the usage purpose of standard cells from technology libraries in your digital integrated circuit design. This command is helpful for providing guidance to the tool regarding the intended purpose of each standard cell, such as whether a cell is meant for combinational logic, flip-flops, latches, or other purposes.<br><br>

* Above commands in tcl file are shown below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/2_top_tcl.png"><br><br>

* Source top.tcl: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/3_sourced_top_tcl.png"><br><br>

* Now ```start_gui```, now we will see the clock buffer cells of the design: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/4_buffer_cells.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/5_buffer_cells.png"><br><br>


* Clock buffer cells and the ICG cells of the design are shown below: <br>

```ruby

Buffer/Inverter reference list for clock tree synthesis:
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_12
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_6
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__buf_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__bufbuf_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__bufbuf_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkbuf_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkbuf_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkbuf_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkbuf_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkbuf_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s15_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s15_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s18_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s18_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s25_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s25_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s50_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkdlybuf4s50_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd1_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd2_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlygate4sd3_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s2s_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s4s_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlymetal6s6s_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__probe_p_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__probec_p_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkbufkapwr_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkbufkapwr_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkbufkapwr_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkbufkapwr_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkbufkapwr_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__bufinv_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__bufinv_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinv_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinvlp_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__clkinvlp_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_12
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_6
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__inv_8
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkinvkapwr_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkinvkapwr_16
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkinvkapwr_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkinvkapwr_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__lpflow_clkinvkapwr_8

ICG reference list:
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlclkp_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlclkp_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__dlclkp_4
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__sdlclkp_1
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__sdlclkp_2
   sky130_fd_sc_hd__tt_025C_1v80/sky130_fd_sc_hd__sdlclkp_4

```
* Now we will see the clcok sink cells in the gui: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/6_clock_sink.png"><br><br>
*  The ```report_clock_timing``` command generates a report of clock  timing  information  for  the current design.<br>
*  There  are several reporting types provided, which allow you to examine skew, latency and transition time attributes of a given  clock  network or  sub network at various levels of generality. By default, the report displays the values of these attributes only at sink pins (that is, the clock  pins  of  sequential  devices) of the clock network. You use the -verbose option to display source-to-sink path traces. If  you  specify several clock domains, the report_clock_timing command generates a separate subreport for each clock domain.<br>
* The summary style report is at the highest level of  abstraction.  This report  provides only a list of maxima and minima of the skew, latency, and transition time attributes over the  given  networks.  At  a  lower level  of  abstraction  are  the  transition,  latency,  and  skew type reports, called list style reports, in which you can sort, filter and display the worst set of sink pins in the given network with respect toa single attribute of interest. For skew reports, each report entry  is a  pair  of  sink  pins and their relative skew. For transition time or latency reports, each entry corresponds to a single sink pin. The  lowest  level  of  abstraction is provided by verbose mode, which replaces every sink pin in a list style report by a corresponding source-to-sink path trace.<br>
* The ```report_clock_timing -type summary``` command in IC Compiler II (ICC2) is used to generate a summary report of the clock timing information for your digital integrated circuit design. This command provides a high-level overview of the clock timing performance, which is essential for ensuring the proper functioning of synchronous digital circuits. It specifies a  summary  report,  which  shows  the  worst  instances  of transition time, latency and skew over the clock networks or subnetworks of interest. If you specify a  summary report,  you  can  use only the -clock, -to_list,  -from_list, -include_uncertainty_in_skew, -nosplit, and  -significant_dig- its options.<br>
* For  non  summary  reports,  report  entries  are ordered with respect to the specified  attribute  of  interest  (transition time,  latency,  or  skew).   Note that all skews reported are  "local" skews. For an  explanation  of  local  skew,  see  the DESCRIPTION section.<br><br>
       
* Different terms of the report ```report_clock_timing -type summary``` are explained below: <br>

1. **Minimum setup launch latency**: The term "launch flip-flop maximum setup latency" refers to the maximum allowable time delay between the launch flip-flop (the flip-flop that sends out data) and the data becoming stable and valid at its output. <br><br>
2. **Minimum setup capture latency**: The term "minimum setup capture latency" refers to the minimum amount of time it takes for a digital flip-flop or latch to successfully capture and store an input signal as valid data. It's essential to ensure that the captured data meets the setup time requirement of the receiving flip-flop or latch.<br>
* Clock-to-Q Delay<br>
* Data Arrival Time<br>
* Clock Skew<br>
* Timing Constraints<br>
* Data Path Delays<br>
* Clock Frequency<br><br>
3. Minimum hold launch latency: The term "launch flip-flop minimum hold latency" refers to the minimum amount of time that data must remain stable and valid at the output of the launch flip-flop after it is captured by a receiving element (such as a capture flip-flop) in order for that data to be reliably captured.<br><br>
4. Maximum hold capture latency: The term "capture flip-flop maximum hold latency" refers to the maximum allowable time delay between the data being captured at the input of a capture flip-flop and the clock edge triggering the capture.<br><br>
5. **Maximum setup skew**: In digital circuit design, "setup skew" refers to the intentional or controlled variation in the arrival times of clock signals to different elements of the circuit, such as flip-flops or latches. The concept of "maximum setup skew" is associated with ensuring that the clock signal arrives at all relevant elements within a specified time window while considering the worst-case scenario.<br><br>
6. **Maximum hold skew**: In digital circuit design, "hold skew" refers to the controlled variation in the arrival times of clock signals to different elements of the circuit, such as flip-flops or latches, specifically in the context of ensuring that data remains stable for the required hold time. The "maximum hold skew" is the maximum allowed difference in clock arrival times at different flip-flops while still ensuring that data meets the hold time requirement for reliable operation.<br><br>

* Now compare the ```report_clock_timing -type summary``` report with day 22: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/7_report_clock_timing_summary.png"><br><br>

* Here we see that latency as well as skew has increased in the clock paths because we have added new buffer cells in the clock path. When latency and skew increase in the clock paths due to the addition of new buffer cells in the physical design circuit, it's typically a trade-off that has implications for circuit performance. Let's break this down:<br><br>

1. **Latency**: The addition of buffer cells, which are used to improve clock signal distribution and control, introduces additional delay into the clock paths. Buffer cells are inserted to maintain signal integrity, reduce clock skew, and ensure that the clock signal reaches all sequential elements (like flip-flops) in a synchronized manner. However, each buffer cell has a certain delay associated with it, so as you add more buffers to the clock path, you increase the overall latency of the clock signal. This means that the clock signal takes more time to propagate from the source (e.g., a clock generator) to the destination flip-flops.<br><br>

2. **Skew**: Clock skew refers to the variation in arrival times of the clock signal at different points in the circuit. It's important to minimize skew to ensure synchronous operation. When you add buffer cells to the clock paths, you might introduce variations in clock signal arrival times due to differences in the delay of these buffer cells. In some cases, if not managed properly, this can lead to increased clock skew, making it more challenging to meet timing constraints.<br><br>

* Timing reports are shown below: <br>

1. Hold violation timing report: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/8_report_timing_delay_min.png"><br><br>

* **Arrival Time (arrival)**: Arrival time is the time at which the data at the input of a flip-flop (or any sequential element) is considered to have reached a stable and valid state with respect to the clock edge. It's the moment when the data is ready to be captured by the flip-flop. In most cases, this is determined by the clock edge.<br>

* **Required Time (required)**: Required time is the minimum amount of time that the data must remain stable and valid after the clock edge to ensure correct and reliable capture by the flip-flop. It's the amount of time the data must be held stable to meet the hold time requirement.<br>

* A hold violation occurs when data changes its state too quickly after the clock edge arrives. In other words, the data doesn't remain stable for the required time (required) after the clock edge (arrival time). To avoid a hold violation, the data at the input of the flip-flop should meet the required condition, which means it must remain stable for at least that duration after the clock edge.<br>

* In our case the the data arrival time or time at which data changes its state is less than the data required time, due to which we can see the hold violation. <br><br>

2. Setup violation timing report: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/9_report_timing_delay_max.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d6124e5427e7d07d1eae2dc064ebb048cf1f1ce9/day23/10_report_timing_delay_max.png"><br><br>

* A setup violation occurs when data doesn't reach a stable and valid state for a sufficient duration (data required time) before the clock edge (data arrival time) arrives.<br>

* To avoid a setup violation, the data at the input of the flip-flop should meet the data required time condition, meaning it must be stable for at least that duration before the clock edge arrives. If the data changes its state too late, such that it doesn't meet the data required time condition, it might result in incorrect capture by the flip-flop.<br>

* In our case data arrival time is greater than the data requred time, that means data becomes unstable within setup window of the capture flip flop, hence we see the hold timing violation.<br><br>

* We see that there are timing violations, in further days we will try to improve the timing profile.

</details>

## DAY 24 Timing violations and ECO

<details>

<summary>ECO</summary>

An Engineering Change Order (ECO) is a critical part of the semiconductor design and manufacturing process. It is used to incorporate last-minute changes into a design after the initial design phase has started. ECOs are particularly important in the context of chip design and manufacturing because they help ensure that the final product meets the desired specifications and standards. Here's an elaboration of the steps you mentioned:<br><br>

1. **Investigate the Problem**: The first step in the ECO process is to identify and investigate the problem or changes required in the design. This could be due to various reasons, such as changes in specifications, bug fixes, or improvements. Designers typically use the recent database, which includes all the information about the current design, to understand the problem fully.<br>

2. **ECO Generation**: Once the problem is understood, the next step is to generate the ECO. This involves making the necessary changes at the gate-level netlist and, as you mentioned, also replicating these changes in the RTL (Register-Transfer Level) representation. The ECO document specifies the modifications required to address the issue, including changes to the logic gates, connections, or any other relevant components in the design.<br>

3. **ECO Implementation**: After generating the ECO, designers proceed to implement it in the design. This means making the actual changes in the gate-level netlist and RTL. It's crucial to ensure that these changes do not introduce new issues or violations. Verification checks should be carried out to confirm that the modifications meet the required specifications. These checks include both formal verification (ensuring the changes adhere to design rules) and functional verification (ensuring the design still functions correctly).<br>

4. **Database Update**: Once the ECO has been successfully implemented and all verification checks have passed, the changes are saved in the design database. This step is important for maintaining a comprehensive and up-to-date record of the design, ensuring that the modifications are preserved for future reference and use. The database is essentially the master copy of the design that encapsulates all changes and adjustments made during the design process.<br>

5. **Trade-offs and PPA Optimization**: Throughout the ECO process, it's important to consider the trade-offs between Power, Performance, and Area (PPA). Changes made during the ECO may have implications for one or more of these aspects, and the engineering team should analyze these trade-offs to make informed decisions. Implementation tools can assist in optimizing PPA, but they may not resolve all issues, and engineers often need to fine-tune the design manually.<br>

6. **Sign-Off Checks**: ECOs may involve additional sign-off checks beyond what was done during the initial Physical Design (PD) flow. This is to ensure that the changes introduced by the ECO are compliant with design constraints and do not lead to new issues or violations.<br>

7. **Final Documentation**: As part of the ECO process, it's important to maintain proper documentation. This includes records of the problem, the changes made, verification results, and any trade-offs considered. This documentation is crucial for traceability and for future reference, especially in case further changes or revisions are needed.<br><br>

ECOs are a critical part of chip design, as they allow design teams to adapt to changing requirements, fix issues, and optimize the design for performance, power, and area without starting the design process from scratch. The successful execution of ECOs requires a balance between the need for changes and the maintenance of design integrity.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/40983a2bf189b6f7d6123e6177ff579d135e3fc8/day24/eco.png"><br><br>

 
</details>

<details>

<summary>Labs</summary>

* Setup violation report for our design is shown below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/2_old_timing.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/3_old_timing.png"><br><br>

* To view this path in the GUI, in the console of the GUI write the command: ```change_selection [get_timing_path -from <start_point> -to <end_point>]```. These start and endpoints are in the setup timing report of the design. Below ss shows the wns path for the setup: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/5_old_path_highlight.png"><br><br>

* Now to fix the setup violations, we will upsize the combinational path cells to reduce the data path delay. Cells which are upsized are shown in the figure below: <br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/6_eco.png"><br><br>

*Now we will again check the setup timing report. Here we find that now the setup slack is met by 150 ps as shown in the figures below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/7_new_timing_max.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/8_new_timing_max.png"><br><br>

* Now we will see the hold violation of the design: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/9_old_timing_hold.png"><br><br>

* Lets see this path in the GUI: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/10_old_timing_path.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/11_old_timing_path.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/14_path_min.png"><br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/12_clk_path_launch.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/13_clk_path_launch.png"><br><br>

* In order to fix the hold violation we can add a bufferin the data path, for that we first need to check the setup margin: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/16_setup_margin_hold_path.png"><br><br>

* In the above image we can see that we have enough setup margin to insert a buffer, command to do so is: ```insert_buffer <instance name of the pin before/after which buffer needs to be placed> <reference name of the buffer>``` 
* Same is shown in the figure below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/17_inserting_buffer.png"><br><br>

* Hold timing report after inserting the buffer: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/18_new_hold_timing.png"><br><br>

* Hold violated path which is fixed now, shown in the GUI: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/15_path_min_fixed.png"><br><br>

* In the global timing report for the design, there are no hold or setup violation left, as seen in the image below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/19_global_violations.png"><br><br>

* Filler and decap cells of the design are shown in the figure below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/21_decap_filler_cells.png"><br><br>

* Now lets see the transition violation of the design: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/22_constraint_report_transition.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/23_constraint_report_transition.png"><br><br>

* We see in total there are 9 transition violations in the design. To fix these, first we find the net driving cell and upsize it to fix the trnasition violation. To find the net driving cell we use ```report_timing -through <net_name>```. In the timing report we will the get the cell with a arrow marker. Now to upsize this cell we will ```size_cell <instance_name> <ref_name_upsized_cell>```. This is done repeatidly for all the nine nets which have the timing violation as shown in the images below: <br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/24_fix_tran_net_one.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/25_fix_tran_net_one.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/26_fix_tran_net_one.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/27_fix_tran_net_two.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/28_fix_tran_net_three.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/29_fix_tran_net_four.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/30_fix_tran_net_five.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/31_fix_tran_net_six.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/32_fix_tran_net_seven.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/33_fix_tran_net_eight.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/34_fix_tran_net_nine.png"><br><br>

* Now after fixing all the transition violation, lets again check ```report_constranits -max_transition -all-violators````, here we see that all the transition violations are fixed: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/35_no_tran_violation.png"><br><br>

* QOR report of the desing is shown below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/36_report_qor.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2018b735dc92c2dfff39f374ab6a99c3d721f344/day24/37_report_qor.png"><br><br>

* In the QOR report we can see that there are no:<br><br>
1. Setup timing violation<br>
2. Hold timing violation<br>
3. Max Trans Violation<br>
4. Max Cap Violation <br>

</details>

## Day 26 Introduction to mixed-signal flow

<details>

<summary>Mixed Signals</summary>

Mixed-signal design is a field of electronic design that combines both analog and digital components to process and communicate information. To understand mixed-signal design, it's important to define and differentiate electronic signals:<br><br>

**Electronic Signals**:<br>
* Electronic signals are messages or information conveyed by altering the voltage of an electric current. They serve as a means of communication between various electronic devices.<br><br>

Types of Electronic Signals:<br>

1. **Analog Signals**: These are continuous signals that vary smoothly over time. They are prevalent in nature, as many physical processes naturally produce analog signals. Analog signals can represent a wide range of values.<br>
2. **Digital Signals**: Digital signals are discrete and represent data as a sequence of 1s and 0s. They are commonly used in microcontrollers, microprocessors, and digital systems. Digital signals are often derived from analog signals through a process known as digitization.<br><br>

**Availability of Signals in Nature**:<br>
* Analog signals are more commonly found in nature because most real-world phenomena produce continuous and varying signals. Digital signals are typically generated by converting analog signals through a digitization process.<br><br>

**Understanding and Communication by Microcontrollers/Microprocessors**:<br>
* Microcontrollers and microprocessors primarily operate with digital signals. They understand and communicate using 1s and 0s. This digital nature simplifies data processing and control in digital systems.<br><br>

**Handling Analog Signals with Microcontrollers/Microprocessors**:
* To interface with analog signals in the physical world, microcontrollers and microprocessors use special components known as Analog-to-Digital Converters (ADC) to convert analog signals into digital form. Conversely, Digital-to-Analog Converters (DAC) are used to convert digital signals back into analog form when needed.<br><br>

* Mixed-signal chips, in this context, refer to integrated circuits that deal with both analog and digital signals. These chips serve various purposes, including RF (Radio Frequency) applications, analog signal processing, and the conversion between analog and digital domains (Analog-to-Digital and Digital-to-Analog conversion). In some cases, mixed-signal chips are designed to measure and process signals with high precision, often requiring specific design techniques and process technologies different from those used in typical digital circuits.<br><br>

#### AMS: Analog and Mixed Signal (digital and analog)

AMS flow<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22e3d60b8aff91cf63117415222ea1853e709544/day26/1.png"><br><br>

* Block diagram representation for mixed signal design<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22e3d60b8aff91cf63117415222ea1853e709544/day26/2.png"><br><br>

#### Exploring the example of VSDBabySoC

* RVMYTH processor --> digital block<br>
* PLL --> analog block<br>
* DAC --> analog block (for digital to analog conversion)<br>

#### Introduction to various files
LEF (Library Exchange Format) file: physical properties such as width, height etc regarding the standard cells<br>

* tf (technology file) or tlef (technology lef) --> contains same information<br>
	* Cell tf<br>
	* LIBerty file --> contains timing information of the cells<br><br>

* gdsII and OASIS file --> GDSII is a file format similar to JPEG, DOCX, XLSX etc to enable a layout design to be transferred from one place to another (IP owner handoff to PD team, PD team to foundry for fabrication), to be viewed/used for verifications like Physical verification checks by EDA tools.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22e3d60b8aff91cf63117415222ea1853e709544/day26/3.png"><br><br>

#### PNR Tool

A Place-and-Route (PnR) tool is essential in the field of digital chip design. Its primary purpose is to automate the placement and routing of standard cells on a semiconductor device to optimize various design parameters such as timing, congestion, area, and power. Here's a simplified breakdown of PnR tool functions and why certain files are required:<br><br>
**PnR Tool Functions**:<br>

* **Placement**: The PnR tool arranges standard cells in the chip's layout area to minimize congestion (clutter) and meet specified design objectives, such as optimizing timing.<br>

* **Routing**: It determines how interconnections between these cells should be established, taking into account factors like wirelength, signal integrity, and minimizing crosstalk.<br>

* **Optimization**: The tool offers various commands and switches that users can employ to fine-tune the design based on their specific requirements. For example, users can optimize for timing, congestion, area, or power consumption.<br><br>

Why LEF, LIB, and Timing Files Are Needed:<br><br>

* **LEF (Library Exchange Format) File**: This file contains essential information about the physical properties of the standard cells, such as dimensions, pin locations, and other details. The PnR tool relies on the LEF file to accurately place these cells within the chip's layout area.<br>

* **LIB (Library) File**: The LIB file provides information about the logical and electrical properties of the standard cells. It includes details like cell functionality, timing characteristics, power consumption, and more. This information is crucial for the tool to optimize timing and other design parameters.<br>

* **Timing Files (Tf Files - TLU+ File)**: Timing files, such as those in TLU+ format, contain timing constraints and information that guide the PnR tool in optimizing the design for timing-related goals. These files specify things like clock frequencies, setup times, hold times, and more. They are essential for ensuring that the chip meets its required performance targets.<br><br>

After obtaining the necessary information from the LEF, LIB, and timing files, users can configure the PnR tool to perform placement and routing according to their specific design goals. By leveraging the tool's commands and switches, they can fine-tune the placement and routing process to optimize the design for the desired balance between timing, congestion, area, and power consumption. This customization ensures that the chip design aligns with the project's objectives and requirements.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22e3d60b8aff91cf63117415222ea1853e709544/day26/4.png"><br><br>

Sources of various files<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/22e3d60b8aff91cf63117415222ea1853e709544/day26/5.png"><br><br>

#### IP cores

IP Cores, short for Intellectual Property cores, are fundamental building blocks of logic or data used in semiconductor chips. These cores are typically owned by specific individuals or companies and play a crucial role in the creation of field-programmable gate arrays (FPGAs) or application-specific integrated circuits (ASICs).<br>

Throughout the chip design process, IP cores are developed and can be transformed into reusable components. These cores fall into two main categories:<br>

1. **Soft IP Cores**:<br>

* Soft IP cores are versatile and can be customized during the physical design phase to adapt to various process technologies.<br>
* They provide flexibility and can be tailored to specific project requirements.<br><br>

2. **Hard IP Cores**:<br>
* Hard IP cores are more rigid in nature as they encompass both the logical and physical implementations.<br>
* The physical layout of a hard macro-IP core is finalized and fixed within a specific process technology.<br><br>

In essence, IP cores are essential components that can be integrated into semiconductor designs, offering efficiency, reusability, and the ability to meet various design constraints based on whether they are soft or hard IP cores.<br><br>

* How it works in semiconductor industry<br><br> 

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f1c45211683254bd43734a509387313c40a0679e/day26/6.png"><br><br>

 
</details>

## Day 27 Introduction to crosstalk - glitch and delta delay

<details>

<summary>Crosstalk and signal intergrity</summary><br>

1. **Signal Integrity**:<br>
Signal integrity is a critical consideration in digital design, particularly for high-speed digital circuits. It refers to the ability of an electrical signal to propagate through a transmission medium (such as a printed circuit board or an on-chip interconnect) while retaining its quality and without suffering degradation. Signal integrity issues can result in signal distortion, data errors, and other problems.<br><br>

2. **Crosstalk**:<br>
Crosstalk is a common signal integrity issue in high-density and high-speed digital circuits. It occurs due to the unwanted electromagnetic coupling between adjacent signal lines, typically through capacitive and inductive effects. Crosstalk can result in noise on the affected signal lines, potentially corrupting data and causing signal integrity problems. As the geometry of cells reduces and the distance between interconnects decreases, the capacitive cross-coupling between these interconnects increases. This increased capacitive coupling can exacerbate crosstalk issues. The narrower spacing between wires allows for more efficient capacitive coupling, and as signals transition quickly through these narrow spaces, the potential for crosstalk interference also increases. Design techniques, such as careful routing, spacing, and the use of shielding or guard traces, are employed to mitigate crosstalk effects and improve signal integrity.<br>
* Types of Glitches --> Rise, Fall, Overshoot, Undershoot<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/37c1d0595ed53d43f74e1fcaebaa32871eddb781/day27/1.1.png"><br><br>


### Reasons for crossstalk:<br>

1. **High Routing Density**:<br><br>
* Increasing the routing density and incorporating a larger number of standard cells is a common practice in advanced semiconductor processes. This is often achieved by reducing the channel length of MOSFETs, which results in smaller transistors and therefore a reduction in the overall size of combinational logic cells. This downsizing of individual cells allows for more circuitry to fit within a given area, making it possible to instantiate multiple instances of a circuit or similar circuits within the same chip area.<br>

* For example, consider a circuit designed for tasks like sending and receiving messages, calls, processing, and running various applications. Before reducing the MOSFET size, this area might accommodate only one or two such applications. However, after reducing the transistor size, it becomes feasible to house nine or more of these applications within the same chip area, greatly increasing the chip's functionality and versatility.<br>

* Nonetheless, there is a notable drawback to shrinking the size of components, especially in processes with channel lengths of 0.1 micrometers and below. In these advanced processes, components like wires and nets are positioned very closely to each other, and this proximity can lead to interference issues. This close placement of components is a major factor contributing to crosstalk.<br>

* Initially, there might be 20 standard cells in the design. However, after reducing the component sizes, the number of standard cells increases substantially, often by a factor of nine or more. As a result, there's a significant increase in the number of routes and interconnections between these cells. The routing paths become tightly packed and, in close proximity to one another, which can lead to various design failures, notably due to crosstalk.<br><br>

2. **Dominant Lateral Capacitance**:<br>

The increase in the number of metal layers in semiconductor manufacturing has several implications, one of which is the rise in lateral capacitance, leading to crosstalk issues.<br><br>

Types of Capacitance:<br><br>
There are two primary types of capacitance involved here:<br>

i. **Interlayer Capacitance**: This capacitance exists between two consecutive metal layers in a semiconductor structure.<br>

ii. **Lateral Capacitance**: This capacitance occurs between two wires on the same level and metal layer.<br><br>

* **Factors Contributing to Lateral Capacitance Increase**:<br>
	* The increase in the number of metal layers is driven by the need to reduce resistance and lower the overall resistance of the chip. To accomplish this, wider metal layers are introduced.<br>

	* One reason for the rise in lateral capacitance is the substantial overlap area between adjacent metal layers, which leads to higher lateral capacitance. This is particularly noticeable in the 0.25-micrometer and above processes, where interlayer capacitance tends to be dominant.<br><br>

* **Effects of Reducing MOSFET Size and Increasing Standard Cells**:<br>
	* Reducing the size of individual transistors (MOSFETs) allows for more standard cells to fit in a given area. This increase in the number of standard cells results in a greater number of connections, leading to a proliferation of routing.<br>

	* In response to the high routing demand, the width of the metal layers is reduced. However, this reduction alone is often insufficient to accommodate the extensive routing requirements.<br><br>

* **Alternative Routing Strategies**:<br>
	* To address these challenges, alternative routing strategies are employed. These strategies often involve routing signals in a more direct manner, such as limiting them to a single metal layer (e.g., metal 1), avoiding unnecessary transfers to higher metal layers. This approach is necessary due to the limited routing resources in the densely packed chip area.<br><br>

* **Lateral Capacitance Dominance and Crosstalk Issues**:<br>
	* As a result of the changes described above, lateral capacitance becomes more dominant. This is problematic because lateral capacitance primarily affects signals within the same layer. When two adjacent signals on the same metal layer are closely spaced, they are prone to crosstalk interference. The close proximity of wires on the same layer means that any switching activity in one wire can immediately affect adjacent wires on the same layer.<br><br>
 
3. **Noise Margin**:<br>

Voltage levels in digital circuits are crucial for determining logic states, and understanding the boundaries of these levels is essential.<br><br>

**Definition of Logic Levels**:<br>

* Any voltage falling between VOL (Output Low Voltage) and VIL (Input Low Voltage) is typically considered as representing a logic 0.<br>
* Similarly, voltage levels between VIL and VIH (Input High Voltage) are considered an undefined region, where the logic state is ambiguous and can transition from logic 1 to logic 0 or vice versa.<br>
* Voltages above VIH and up to VOH (Output High Voltage) are consistently treated as logic 1.<br><br>

**Concern with the Undefined Region**:<br>
* The undefined region poses a significant concern since it's challenging to determine whether the voltage should be interpreted as logic 1 or logic 0. This can lead to unpredictable behavior and logic errors in a digital circuit.<br><br>

**Dealing with Voltage Variations**:<br>
* When voltage levels vary, it's important to avoid allowing signals to enter the undefined region. Large physical distances between the main power supply and the circuit can introduce voltage variations and noise, making it crucial to maintain a stable and clear distinction between logic 0 and logic 1.<br><br>

**Noise Margin**:<br>
* To address this issue, the concept of noise margin is employed. Noise margin defines a range of input voltage levels where the output remains correctly interpreted. For example:<br><br>
	* Any voltage within the noise margin above VOH and below VIH is reliably detected as logic 1.<br>
	* Voltages within the noise margin below VIL are unambiguously considered as logic 0.<br>
In the noise margin range, noise or voltage variations can be tolerated without causing logic level misinterpretations.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/37c1d0595ed53d43f74e1fcaebaa32871eddb781/day27/2.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/37c1d0595ed53d43f74e1fcaebaa32871eddb781/day27/3.png"><br><br>

</details>

<details>

<summary>Labs on crosstalk</summary>

In ICC2 Shell: 
```ruby
source top.tcl
update_timing
write_parasitics -format spef -output vsdbabysoc_spef
```
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/1_1_sorce.png"><br><br>

```update_timing```: The update_timing updates timing for the current design. Timing is also  automatically updated by commands that need the information, such as the report_timing command. This command explicitly prepares the design for further analysis.<br>
* By default, the update_timing command uses an efficient timing analysis algorithm that requires minimal computation effort and updates existing timing analysis information only where needed. You can override this default behavior using the -full option, which causes the entire timing update  to be performed from the beginning. To avoid unnecessarily lon runtimes, use the -full option only when you need to override incremental timing analysis. If the design is not timed, the update_timing command has the same runtime independent of the -full option.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/2_update_timing.png"><br><br>

```write_parasitics```: This  command  writes  parasitics for the current design to SPEF files. All corners are written to SPEF files. The file XX.spef_scenario is generated  when executing the command and this file lists the scenarios associated with  the  output  spef   files.   Basically, it honors set_user_units but it only accpets Kohm, ohm and F, pF, fF only. For up-to-date parasitics, it is recommended to do update_timing before write_parasitics.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/4_write_parasitics.png"><br><br>

* SPEF (Standard Parasitics Exchange Format) file obtained after RC EXtraction is shown in the image below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/5_spef.png"><br><br>
* It contains the resistance, capacitance values of the nets in the design. <br>

* Now invoke the pt_shell and proceed as shown below:<br>
```ruby
pt_shell
set target_library {avsddac.db avsdpll.db sky130_fd_sc_hd__tt_025C_1v80.db}
set link_library {* avsddac.db avsdpll.db sky130_fd_sc_hd__tt_025C_1v80.db}
read_verilog vsdbabysoc.pt.v
link_design
```
* Generated netlist of the design is named ```vsdbabysoc.pt.v```:<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/7_invoke_pt.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/8_set_lib_to_link.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/9_link_design.png"><br><br>

* Generated SDC file of the design is shown below: <br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/6_sdc_generated.png"><br><br>

```ruby
read_sdc func1.sdc
set_app_var si_enable_analysis true
read_parasitics -keep_capacitive_coupling vsdbabysoc_spef.temp1_25.spef
```
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/10_read_sdc.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/11_read_spef.png"><br><br>

```ruby
report_qor
report_timing
report_timing -delay_type min
```
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/12_report_qor.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/14_report_timing_setup.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/15_report_timing_setup.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/09f8a42301d29dc0caf521c98c94f3b794fb92ab/day27/16_report_timing_hold.png"><br><br>

```report_si_bottleneck```: The report_si_bottleneck command reports the nets that have the largest crosstalk effects that contribute to timing violations. You can  choose any one of the following "cost functions" to consider in the analysis:

* delta_delay  (the default) -- Reports the victim nets with the worst change in absolute delay

* delta_delay_ratio -- Reports the victim nets with the worst change in delay as a fraction of the total stage delay

* total_victim_delay_bump  -- Reports the victim nets with the largest crosstalk bumps

* delay_bump_per_aggressor -- Reports the aggressor nets  that  produce the largest total bump voltages in victim nets of failing paths

* By default, the analysis considers only crosstalk effects that contribute to timing violations. Paths with zero or better slack are  ignored. You can change this by using the -slack_lesser_than option.
* By default, the analysis considers both maximum-delay (setup) and minimum-delay (hold) constraints. To restrict the analysis to only one constraint type, use the -max or -min option.

```report_bottleneck```: This command reports information about timing bottlenecks in  the  current design. A bottleneck is a common point in the design that contributes to multiple violations.

* To report bottlenecks throughout the current design, the arrival totals and  slacks  must  be available on all pins, not just at endpoints. To achieve this, set  the  timing_save_pin_arrival_and_slack  variable  to true before using this command. If the timing_save_pin_arrival_and_slack variable is set to false,  this  command automatically  sets it to true and updates the design timing before the command executes.

* If you intend to use this command, it is recommended that you set the timing_save_pin_arrival_and_slack variable to true before the first timing update, therefore preventing the cost of an additional timing update.

```report_si_delay_analysis```: Produces a report showing coupling information specified by you on nets for crosstalk analysis.

* The report_si_delay_analysis command allows you to view all of the sets of  nets  on  which  you  have indicated the default crosstalk analysis behavior to be ignored and the behavior specified by you to take precedence. For every pair of nets, the type of behavior and analysis for which the default behavior is ignored, is reported. This command also specifies whether the information is specified for the net as a victim or aggressor.

* Any combination of the options can be used to generate the  corresponding report information. If no options are specified, the command reports all the information on all the nets.

* This command reports the behavior  set  by  the  set_si_delay_analysis, remove_si_delay_analysis, set_coupling_separation, remove_coupling_separation, set_si_delay_disable_statistical and remove_si_delay_disable_statistical commands.

```report_si_aggressor_exclusion```: The report_si_aggressor_exclusion command  reports  all  the  exclusive groups that have been set by the set_si_aggressor_exclusion command.
* Arguments: <br><br>
       -rise:  Reports all the exclusive groups that have been set as exclusive
              in  the  rise  direction.  If  neither  the  -rise nor the -fall
              options are specified, the exclusive  groups  of  the  aggressor
              nets anets in both rise and fall directions are reported.<br>

       -fall  Reports all the exclusive groups that have been set as exclusive
              in the fall direction.  If  neither  the  -rise  nor  the  -fall
              options  are  specified,  the  exclusive groups of the aggressor
              nets anets in both rise and fall directions are reported.<br>

       -nosplit
              Prevents line splitting  and  facilitates  writing  software  to
              extract  information  from  the report output. If you do not use
              this option, most of the design information is listed in  fixed-
              width  columns. If the information for a given field exceeds the
              column width, the next field begins on a new line,  starting  in
              the correct column.<br>

       net_list:
              Specifies  the  list  of  nets  for  exclusive  groups  you want
              reported.  You can use this option  with  either  the  -rise  or
              -fall  options to specify exclusive groups only in that particu-
              lar direction.<br>

```report_si_noise_analysis```:Produces a report showing coupling information specified by you on nets
       for noise analysis.

       The  report_si_noise_analysis command allows you to view all the set of
       nets on which you have indicated the default noise analysis behavior to
       be  ignored  and the behavior specified by you to take precedence.  For
       every pair of nets, the type of behavior and  analysis  for  which  the
       default  behavior  is ignored, is reported. This command also specifies
       whether the information is specified for the net as a victim or aggres-
       sor.<br>

       Any  combination of the options can be used to generate the correspond-
       ing report information.  If  no  options  are  specified,  the  command
       reports all the information on all the nets.<br>

       This  command  reports  the  behavior set by the set_si_noise_analysis,
       remove_si_noise_analysis, set_coupling_separation, remove_coupling_sep-
       aration,   set_si_noise_disable_statistical   and  remove_si_noise_dis-
       able_statistical commands.<br>


```ruby
report_si_bottleneck           
report_bottleneck                 
report_si_delay_analysis
report_si_aggressor_exclusion
report_si_noise_analysis
```
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/18_report_si_delay_analysis.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/19_report_si_noise_analysis.png"><br><br>

</details>


## Day 28 Introduction to DRC/LVS

<details>

<summary>Introduction to Skywater PDK</summary>

The SkyWater Open Source Process Design Kit (PDK) is a collaborative effort between Google and SkyWater Technology Foundry. It offers a complete open-source PDK and associated resources for the semiconductor industry.<br>

The public repository for the SkyWater Open Source PDK includes:<br>

* Documentation: Detailed information can be found at https://skywater-pdk.readthedocs.io/en/main/.<br>

* PDK Library and Files: You can access the PDK library and associated files at https://github.com/google/skywater-pdk.<br>

* Community: For engaging with the community and discussions, you can visit https://invite.skywater.tools/.<br>

This initiative aims to provide accessible and open resources for semiconductor design and development.<br>
* "130" in SKY130 stands for the feature size, which is the length of smallest transistor that can be manufactured in the process.<br><br>

Open-Source EDA Tools<br>

Open_PDKs is an installer based on Makefile that takes data from the SkyWater PDKs and adapts it for a range of open-source EDA (Electronic Design Automation) tools.<br>

The open_pdks tool supports the following EDA tools:<br>

1. Magic<br>
2. Klayout<br>
3. Openlane<br>
4. Xschem<br>
5. Netgen<br>
6. Ngspice<br>
7. IVerilog<br>
8. qflow<br>
9. IRSIM<br>
10. xcircuit<br><br>


The libraries that open_pdks supports are categorized as follows:<br><br>

1. Digital standard cells (e.g., sky130_fd_sc_hd)<br>
2. Primitive devices and analog components (e.g., sky130_fd_pr)<br>
3. I/O cells (e.g., sky130_fd_io)<br>
4. 3rd party libraries (e.g., sky130_ml_xx_hd)<br><br>

Open_PDKs maintains a consistent file system structure, with SkyWater PDKs located under the /usr/share/pdk/sky130A/ directory. Within this directory, there are two subdirectories:<br><br>

1. libs.tech: This directory contains subdirectories for setting up open-source EDA tools.<br>

2. libs.ref: This directory contains reference libraries in various formats.<br>

The project_root/ directory serves as the project's main directory and contains subdirectories for each tool or workflow needed.<br><br>

**Physical Verification and Design Flow**<br>

Physical verification is an essential step to ensure that the mask layout corresponds to the expected circuit design. This verification process involves two major steps:<br>

1. Design Rule Checking (DRC): DRC verifies that the layout adheres to all the specific rules provided by the foundry for the given semiconductor process.<br>

2. Layout Vs. Schematic (LVS): LVS confirms that the layout's netlist matches the schematic netlist, ensuring that the physical design corresponds to the intended circuit design.<br>
 
</details>

<details>

<summary>Lab: Tool installations and basic DRC/LVS design flow tools</summary>

#### Opensource EDA Tools: Check Tool Installations

**Magic**

* To access the magic interface through the command prompt, you can utilize the ```magic``` command. When you execute this command, it will bring up two windows: a layout window and a console window. These windows serve as your workspace for executing layout and action commands.

* If you wish to run a Tcl interpreter within your terminal instead of a separate console window, you can achieve this by adding the ```magic -noconsole``` option to your command.

* For situations where you don't require the graphical layout window, and only want to use Magic in a text-based mode, you can use the ```magic -dnull -noconsole``` option. This is particularly useful when running Magic from a script, and the command should be formatted accordingly.

* For batch mode execution, use the command ```magic -dnull -noconsole filename.tcl``` to run Magic without the graphical interface. This is handy for automated or script-driven tasks.

**Netgen**

* To start Netgen from the terminal, simply use the ```netgen``` command. Netgen is a text-based tool with no graphical user interface. The console window it opens is a standard Tcl interpreter similar to what you find in Magic.

* If you prefer to use the Tcl interpreter in your terminal rather than a separate console window, you can achieve this by adding the ```netgen -noconsole``` option to your command.

* For running Netgen in batch mode, the command to use is ```netgen -batch source filename.tcl``` This is ideal for automated or scripted tasks.

* While Netgen primarily operates in a command-driven mode, it also offers a GUI window built in Python. You can access this GUI at ```usr/local/lib/netgen/python/lvs_manager.py``` However, it's worth noting that this GUI may not expose all the advanced features and options available in the command-line interface.

**Xschem**

* To launch Xschem from the terminal, simply use the ```xschem``` command. This will open a schematics window where you can work on your designs.

* Unlike Netgen and Magic, Xschem does not spawn a separate console window. Instead, it utilizes the native command-line terminal for executing Tcl commands.

* To run Xschem in batch mode, you can use the command ```xschem --tcl filename.tcl -q```. This is a useful option when you need to automate tasks or work with Xschem in a script-driven fashion.

**Ngspice**

* To initiate Ngspice on a Linux system, simply enter the ```ngspice``` command in the terminal.

* Ngspice operates with its own built-in prompt, running a distinct set of interpreter commands that are not derived from Tcl or any other scripting language.

* For batch mode execution in Ngspice, the command ```ngspice -b``` is employed. This mode is advantageous when you want to automate tasks or run Ngspice from scripts without manual intervention.

#### Creating Sky130 Device Layout In Magic

* In the home directory: <br>

```ruby
mkdir inverter
cd inverter
mkdir xschem
mkdir mag
mkdir netgen
```

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

```ruby
cd xschem
ln -s /usr/share/pdk/sky130A/libs.tech/xschem/xschemrc
ln -s ln -s /usr/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
cd ../mag/
ln -s /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
cd ../netgen/
ln -s /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl
```

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

```ruby	
cd inverter/xschem/
xschem
```

* Upon launching Xschem, a display appears featuring numerous sample schematics, including SKY130 devices.

* To access these examples, simply click on the corresponding rectangle and then press the "E" key on your keyboard. You can return to the menu by pressing ```CTRL+E```. Additionally, if you'd like to resize the schematic to fit the window, you can do so by pressing the ```F``` key.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

**MAGIC**

```ruby
cd ../mag/
magic
magic -d XR     (To invoke a cairo graphics package that uses 3D acceleration to get better rendering than the default graphics)
magic -d -OGL   (An OpenGL based graphics package)
```

* Executing these commands will open two Magic windows. The layout window will present information such as "Technology: sky130A" along with a range of colors and icons that represent the available layers within this technology.

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

**Helpful Magic Shortcuts**:<br><br>

* Adjust the cursor box using the left and right mouse buttons.<br>
* Zoom out by pressing Shift+Z.<br>
* Select a layer (also referred to as painting) using the middle mouse button or the P key.<br>
* Erase content within the cursor box with the E key (you can also achieve this by clicking the middle mouse button on an empty part of the layout).<br>
* View the entire layout with the V key.<br>
* Open the parameter options for the selected device with CTRL+P.<br>
* Select layers using the S key.<br>
* Obtain information about the selected layer by typing the "what" command in the Magic console.<br>
* Use the ";" key to type commands in the Magic console without switching between windows, which will execute the command when you press Enter.<br>
* Select a device with the I key.<br>
* Move the selected device using the M key.<br>

To modify the settings in the Devices drop-down menu, follow these steps:<br><br>

1. Click on "Devices 1."<br>
2. Choose "nmos (MOSFET)."<br>
3. Under "Devices 1," adjust the width to 2 um, the length to 0.5 um, and set the number of fingers to 3.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

#### Creating Simple Schematic In Xschem

```ruby
cd ../xschem/
xschem
```

1. Open the "Choose symbol" window with the "Insert" key.<br>
2.Navigate to the SkyWater library directory path to access its components.<br>
3. Select the "fd_pr" library.<br>
4. From the insert window, pick the nfet and pfet devices.<br>
5. Place these devices anywhere you desire within the schematic.<br><br>

To work with pins, which are not specific to a Process Design Kit (PDK) and can be found in the xschem library within the insert window, follow these steps:<br><br>

1. Locate the pins in the xschem library, named as "ipin.sym," "opin.sym," and "iopin.sym."<br>
2. Place the pins on the schematic and use the "M" key to move components around.<br>
3. Employ the "C" key to copy components and the "Del" key to delete them.<br>
4. Use the "W" key to insert wires between components and make connections.<br>
5. Rename each pin with meaningful labels by using the "Q" key to bring up the parameter window.<br>
6. Select components by clicking on them and use the "Q" key to open the parameter windows to configure their properties.<br><br>

For the nfet device, make the following adjustments:<br><br>

* Change the length to 0.18 (the default of 0.15 is limited to SRAM devices).<br>
* Set the number of fingers to 3.<br>
* Set the width of each finger to 1.5.<br>
* Since there are 3 fingers, ensure that the total width in the parameter window is set to 3 times the width of each finger, which is 4.5.<br><br>

Similarly, for the pfet device:<br><br>

* Adjust the parameters for 3 fingers.<br>
* Set the width to 1 for each finger.<br>
* Set the length to 0.18.<br>
* Specify that the body should be connected to the Vdd pin, as it is a 3-pin pfet.<br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

* Save the design by clicking tab File --> save as --> inverter.sch. <br><br>

#### Creating Symbol And Exporting Schematic In Xschem

To perform functional validation of the schematic, you'll need to create a testbench that's separate from the schematic. Here's how to go about it:<br><br>

1. Start by creating a symbol for the schematic since the schematic will appear as a symbol in the testbench. To do this, go to the "Symbol" menu and select "Make symbol from schematic."<br>

2. Then, create a testbench schematic using the "new schematic" option and insert the generated symbol from the local directory using the "Insert" key.<br>

3. In the "File" tab, select "new schematic" and choose "inverter.sch" under your home directory. Paste it into the schematic window.<br>

4. The testbench will be quite simple. You'll generate a ramp input and observe the output response after connecting the power supplies. To achieve this, insert two voltage sources from the default xschem library, one for the input and one for the supply. Connect them, and add a GND node to the supply connections. Create "ipins" and "opins" for the input and output signals you want to observe in Ngspice.<br>

5. Set the supply voltage 1 to 1.8 V. For the input voltage, you need to set it as a piece-wise linear function to generate a ramp. The PWL function specifies voltage and time values. It will start at 0V, then begin to ramp up from 20 ns until it reaches its final value at 900 ns of 1.8 V.<br>

6. Next, insert two more statements for Ngspice. Since these statements are not specific to any component, they should be placed in text boxes. To add a text box, select the "code_shown.sym" component under the xschem library.<br>

7. The first text box specifies the location of the device models used in the device schematic. It uses a ".lib" statement to select a top-level file that informs Ngspice where to find all the models and specifies a simulation corner for all the models. value = ```".lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt" could be used to specify the typical corner with the value = "tt"```.<br>

8. The second text box includes the statement:<br>
```
".control
tran 1n 1u
plot V(in) V(out)
.endc"
```
This instructs Ngspice to run a transient simulation for 1 ns and monitor voltages for the "in" and "out" pins.<br>

9. Finally, save this complete testbench schematic as "inverter_tb.sch."<br>

* This testbench setup will help you verify the functionality of your schematic by generating input signals, simulating the circuit, and observing the output response using Ngspice.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

* To create the netlist, click on the ```Netlist``` button, and then proceed to simulate it using Ngspice by clicking the ```Simulate``` button.<br>

* The resulting waveform will confirm that the schematic operates as an inverter, as demonstrated below.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

* After verified the schematic, create a layout for it. To do this, go back to the inverter schematic.<br>

* Firstly, click on the Simulation menu and select "LVS netlist: Top Lvel is a .subckt" option.<br><br>

#### Importing Schematic To Layout And Inverter Layout Steps


To bring the schematic into the layout in Magic, follow these steps:<br><br>

1. Launch Magic by running the command:<br>
```ruby
cd ../mag/
magic -d XR
```
2. Click on "File" and select "Import SPICE."<br>
3. Then, choose the "inverter.spice" file from the xschem directory.<br>
If performed correctly, the layout corresponding to the schematic will be displayed in Magic as shown:<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

Regarding the layout that was generated earlier, it's important to note that the schematic import process doesn't handle analog placement and routing automatically because of its complexity. Therefore, you need to manually position the components in the best locations and create the connections.<br><br>

Here are the steps:<br><br>

1. Begin by placing the pfet device above the nfet and adjust the positions of the input, output, and supply pins as illustrated in the figure.<br>

2. Next, configure certain parameters that are only adjustable in the layout, which will simplify the wiring process.<br>

3. To access the parameter editing section, press the "S" key, then select the object using the "I" key. Finally, open the parameter options for the selected device by pressing CTRL+P.<br>

4. Set the "Top guard ring via coverage" to 100. This will add a local interconnect to metal1 via at the top of the guard ring. For the "Source via coverage," set it to +40, and for the "Drain via coverage," set it to -40. This configuration will separate the source and drain contacts, making them easier to connect with wires.<br>

5. For the nfet, set the "Bottom guard ring via coverage" to 100, and configure the source and drain via coverages as +40 and -40, respectively, similar to the pfet.<br>

6. Now, start creating the wire connections using the metal1 layers. Connect the source of the pfet to Vdd and the source of the nfet to Vss. Then, connect the drains of both mosfets to the output. Finally, connect the input to all the poly contacts of the gate.<br>

This manual placement and routing process ensures that the layout is properly configured and connected for the desired functionality.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

* Save the file and select the autowrite option.<br>

* Run the following commands in the magic console:<br>
```ruby
extract do local    (Ensuring that magic writes all results to the local directory)
extract all         (Performing the actual extraction)
ext2spice lvs       (Simulating and setting up the netlist to hierarchical spice output in ngspice format with no parasitic components)
ext2spice           (Generating the spice netlist)
```

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

```ruby
rm *.ext                                          (Clear any unwanted files -> .ext files are just intermediate results from the extraction)
/usr/share/pdk/bin/cleanup_unref.py -remove .     (Clean up extra .mag files -> files containing paramaterised cells that were created and saved but not used in the design)
netgen -batch lvs "../mag/inverter_new.spice inverter_new" "../xschem/inverter_new.spice inverter_new"    (Run LVS by entering the netgen subdirectory)
```

* Ensure that when using the "netgen" command, you always place the layout netlist first and the schematic netlist second, essentially creating a side-by-side comparison where the layout is on the left and the schematic is on the right.<br>

* Each netlist is denoted by a pair of keywords enclosed in quotes, with the first representing the location of the netlist file and the second specifying the name of the subcircuit for comparison.<br>

* Upon examining the results, it becomes evident that there is a wiring problem causing a mismatch between the netlists. This issue stems from wiring errors in the layout.<br><br>

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>
<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

#### Debugging errors in netlist, rerun and save layout

```ruby
extract do local
extract all
ext2spice lvs
ext2spice cthresh 0     (Tells magic to add all the parasitic capacitances to the spice netlist)
ext2spice
```

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>

* Referring to the netlist file below, there are multiple lines beginning with C, which detail the parasitic capacitances. <br>

```vim inverter.spice```

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/f736be11d3a57500da5b40dc7ed968b1140366a8/day27/17_report_si_bottleneck.png"><br><br>











 
</details>
