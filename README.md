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
	
**1. Default Max transition ** <br><br>
* There is a predefined capacitance limit for the load connected to a specific gate, and this limit must not be exceeded. In cases where the load capacitance surpasses this limit, additional buffer stages are introduced at the output of that particular gate to evenly distribute the load.<br>
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ea45d3daee64f6f6eebf666f84f6b40070fd84c0/day7/11.png"><br><br>

* The image below provides a representation of a standard library and offers details regarding its contents, such as:<br>
	* Time unit: ns <br>
	* Voltage unit: V <br>
 	* Current unit: mA <br>
  	* Leakage Power unit: nW <br>
	* Some others parameters are shown in the image below. <br>
 
<img width="500" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ea45d3daee64f6f6eebf666f84f6b40070fd84c0/day7/1_parameters.png"><br><br>

* Then we have different flavors of the same gate. Below image gives the information regarding the 



</details>











