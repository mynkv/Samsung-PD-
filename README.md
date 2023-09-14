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
<summary>Introdiction</summary><br>

**GOALS** <br>

* Optimazation til the cost is met. <br>
* Over optimization of one goal will harm other goals. <br>
* Goals for synthesis: <br>
	* Meet Timing <br>
 	* Meet Area <br>
  	* Meet Power <br>

**COMBINATION LOGIC OPTIMIZATION** <br>

* **Constant Propagation**: <br><br>
Let us consider an exression: Y = (A.B + C)<br>
 
The expected synthesis of the above function is as shown in figure below:<br><br>
 **<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4607.jpeg"><br>**

 
In the original expression one AND gate and one NOR gate is used.<br>
 If A is grounded in the above expression then: Y = C'<br>
 	Now only one NOT gate is used.<br>
  
  After optimisation we get only a NOT gate as shown below:<br><br>
**<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4608.jpeg"><br>**
  
So, both area and speed of operation is improved.<br>

* **Boolean Logic Optimization**: <br><br>

Let us consider an exression: Y = a ? (b ? c:(c ? a:0)):(!c) <br>

 The expected synthesis of the above function is as shown in figure below:<br><br>
 **<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>**
 
Y = a'c' + a.(b'ac + bc) <br>
  = a'c' + ab'c + abc <br>
  = a'c' + ac <br>
  = a ex_nor b

The optimised design will only contain a ex-nor gate, instead of 3 mux. <br>

* **Resource Sharing**:<br>

Consider the expression: assign y = sel ? (a * b) : (c * d). This can be implemented in two ways as shown in the figure below: <br>

**<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>**

* In the design on the left there are 2 multipliers and oneMUX while on the RHS we have one Multiplier and 2 MUX, cleary design on the right will have comparativeli less area, power and delay as compared to one the RHS. This was possible because the operations a*b and c*d do not occur at the same time, instead they only one of them occur at a time. o only one multiplier is =need to perform the task hence the muntiplier is shared depending on the "sel" input.<br>

* **Logic Sharing**:<br>

```ruby
assign y = a & b & c;
assign y = (a & b) | c;
```
Above two statements can be implemented as shown in the filugure below: <br>

**<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>**

On the right side of the inade, output a*b of the AND is shared and hence the need of a 3 input AND gate is eliminated.

* **Balanced vs Prefenrential Implementation**: <br>

```ruby
assign y = a & b & c & d & e;
```

Assuming 4 and 5 input AND gates, above statement can be implemented as shown in figure below: <br>

**<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4609.jpeg"><br>**

* The right side implementaion is preffered when: <br>

	* e to y path is very tight i.e. 'e' is a late arriving signal.<br>
 	* Say a to y, b to y, c to y, d to y paths are having sufficient time margin to meet the contraint, then e to y path can be given prefference. <br>
  	* Which design is preffered is decided why the contraints file. <br>


**SEQUENTIAL LOGIC OPTIMIZATION**

**Constant Propagation**
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
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/c4e84c53077bffe1725de7dcff66086bccc9cb8c/7_dff_con2_gui.PNG"><br>	
Here there are no flops inferred because output always renains high irrespective of the rst signal

**Optimisation of the unloaded outputs**:<br>
Consider the following counter example as shown in fig below: <br><br>
<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_counter1_verilog.PNG"><br>
Here we can clearly see that only th emsb of the counter is used for the output, rest 2 bits are unused. Now let for a counter:<br><br>
<img width="250" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/77849ff7b577447e818144a1686bbe129eb72ef3/Day3/table.PNG"><br>
Here count[0] is toggling for every clock cycle so the circuit can be optimised. In GUI we can clearty see that only the inverter cell is used to implement the design, this also shown below<br><br>
<img width="800" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_count1_gui.PNG"><br>
</details>


#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3498f21ae064587ef6ee7d0770db7d0880ccbd0a/8_counter1_verilog.PNG"><br>**

Now if we consider the expression: <br>
y1 = a ? b:0 <br>
y1 = a.b + a'.0 <br>
y1 = a.b <br><br>

Similarly <br>
y2 = ~((a1 & b) | c) <br>
y2 = c' <br><br>

* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog opt_check.v
```
* Timing report of the design is as follows, we have not yet linked and compiled the design: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/1_read_timing.png"><br>

* Now

```ruby
link
compile
```
* Timing report after compiling the design: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/2_timing_aftercompile.png"><br>

In the timing report above, only an ANd cell is present in the path to y1. In the path to y2 we see only an inverter cell with 'c' as input, this is shown in GUI of the design in the figure below.

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/4_GUI.png"><br>

</details>

<details> 
<summary> Example2 : opt_check2 </summary> <br>

Consider the verilog code: <br>

```ruby
module opt_check2 (input a , input b , output y);
	assign y = a?1:b;
endmodule

```

* Expected synthesis of the design is as shown below : <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>

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

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/5_optcheck2_timinng_post_compile.png"><br>

In the timing report above, only an OR cell is present in the path to y, with a and b as inputs. Same is depicted in the GUI of the design shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d122ee381347a47f680e550a96dbcca039577438/day9/6_GUI.png"><br>

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

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**

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

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/7_optcheck3_timinng_post_compile.png"><br>

In the timing report above, only an 3 input AND cell is present in the path to y, with a, b and c as inputs. Same is depicted in the GUI of the design shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/8_GUI.png"><br>

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

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**

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

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/9_optcheck4_timinng_post_compile.png"><br>

In the timing report above, only a X-NOR cell is present in the path to y, with a and c as inputs. Same is depicted in the GUI of the design shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/13_GUI.png"><br>

* Now we will contraint the path from input to output as and check the timing vilation, if any. This is depicted in the image below.<br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/10_set_delay_timing_violate.png"><br>

* In the above image we see that slack is getting violated by 20 ps, as we constrainted the input to output path to 60 ps, and at the same time EXNOR gate requires 80 ps alone, hence slack is violated by 20 ps.<br>
* Now we will change the EXNOR gate with some other exnor gate. Timing report after using the new EXNOR gate is shown below is shown below: <br> 

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/11_change_xnor_timing_violate_up.png"><br>

* Here timimg violation increases from 20 ps to 50 ps because new EXNOR gate have 110 ps delay.
* Lets try to optimise the design using compule_ultra. Timing report post com_ultra is shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/12_timing_after_compile.png"><br>

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

* Expected synthesis of the design is as shown below : <br>

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**

Now if we consider the expression y = sel ? (a*b) : (c*d), here depending on the value of sel either a*b or c*d takes place. Both the operations never take place toghether. So we can optimise the dsign as follows: <br>

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**

* We will now optimize the same design in the dc_shell:<br>

```ruby
set target_library <lib_path.db>
set link_library {* <lib_path.db>}
read_verilog resource_sharing_mult_check.v
link
compile_ultra
```
* Screenshot for ```read_verilog``` and ```compile_ultra``` is shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/14_readv_resourcesharing_compile.png"><br>

* Now lets write the ddc file and see the GUI of the design: <br>

```ruby
write -f ddc -out resource_sharing_mult_check1.ddc
```
GUI is shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/15_GUI.png"><br><br>

In GUI we have multiplexer as shown: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/16_GUI_mux.png"><br><br>

In the GUI we can see the two Multiplexer and a multiplier, which is what the optimised design looks like with no constraints.<br>

* Area report of the design with no constraints is as shown below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/17_report_area.png"><br><br>

* Timing report of the design with no constraints is as shown: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/18_timing_pastcompile.png"><br><br>

* Setting the max delay from all inputs to all outputs paths to 2.5 ns and checking the timing report we see that slack is getting violated. This is shown in the design below: <br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/ab3438164aafa93658b1710f9fb9744623800148/day9/19_set_delay_timing_violate.png"><br><br>

* Now we will optimise the design by ```compile_ultra```. Timing report of the design after optimization is as shown below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/20_timing_post_compile.png"><br><br>

* Now slack is met. Area report of the design after constraining the input to ouput paths is shown below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/21_area_report_2.png"><br><br>

* In the expected design we can see that paths from a, b, c and d to y have the same delay. Now if we tighten the paht from sel to y lets see what happens. This is shown in figure below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/22_sel_delay_timing_report.png"><br><br>

* In the above image we see that slack is getting violated by a huge time. We will now optimise the design by using ```compile_ultra``` and then check the timing report. This is shown in the image below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/23_timing_post_compile.png"><br><br>

* Area report with constrained sel to output y is shown below: <br><br> 

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/25_area_report_3.png"><br><br>

* Here it is seen that the area has almost tripled, it shows that the instead of one multiplier, two multipliers are used. This can also be seen in the GUI of the design below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/24_GUI.png"><br><br>

* Now we will constraint the are using ```set_max_area 800```. Timing report after constraining the area is shown below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/26_timing_report_postareaconstraint.png"><br><br>

* Area report after contraining the are is as shown below: <br><br>

<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/7db7067913862014c18407e199dd08fc31f79c87/day9/27_area_report4.png"><br><br>

</details>

</details>


<details> 
<summary> Labs on Sequential Logic Optimization </summary> <br>

**Tie Cells**<br>

* To prevent potential damage to the delicate oxide layer of the MOSFETs in CMOS logic circuits, tie cells are essential when providing logic zero or one inputs to a flip-flop. The presence of tie cells safeguards against any fluctuations or disturbances at the gate of the MOSFET, which could otherwise compromise the integrity of the oxide layer, leading to adverse consequences for the chip's functionality and reliability.<br>
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

* Expected synthesis of the design is as shown below : <br>

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**


* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const1.v
link
compile
```

* Cells of the design are shown in the figure below: <br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/28_seq_dff_const1_cells.png"><br>

* Write the ddc file to view the GUI of the design: <br>

```ruby
write -f ddc -out dff-const1.ddc
```

* In the GUI of the design we can clearly see the Tie cells used to provice the logic 1. GUI of the design is as shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/29_dff_c1_GUI.png"><br><br>

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

* Expected synthesis of the design is as shown below : <br>

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**


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

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/30_dff_c2_GUI.png"><br><br>

* We employ a command to prevent optimization from taking place ```set compile_seqmap_propagate_constants false```. Same is shown in the figure below.<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/31_dff_c2_restrict_optimisation.png"><br><br>

* The graphical user interface (GUI) for the constrained customization design appears as depicted below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/32_dff_c2_restrict_optimisation.png"><br><br>

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

* Expected synthesis of the design is as shown below : <br>

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**


* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const3.v
link
compile
write -f ddc -out dff_const3.ddc
```

* GUI of the design is as shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/33_dff_c3_GUI.png"><br><br>

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

**<img width="400" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d4a3c4782955af7ffb46adf1012a771ad6566dbd/Day3/IMG_4603.jpeg"><br>**


* We will begin in dc_shell as follows: <br>

```ruby
read_verilog dff_const4.v
link
compile
write -f ddc -out dff_const4.ddc
```

* GUI of the optimised design design is as shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/34_dff_c4_GUI_unconstrained.png"><br><br>

* We employ a command to prevent optimization from taking place ```set compile_seqmap_propagate_constants false```. The graphical user interface (GUI) for the constrained customization design appears as depicted below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/2bd5c81013f8f7017ffbce57ff9cf565777a7be8/day9/34_dff_c5_GUI_constrained.png"><br><br>

</details>

</details>

<details>
<summary> Boundary Optimization </summary> <br>

Boundary optimization" typically refers to optimizing the boundary of a digital design, often for power, performance, or area (PPA) improvements. It involves optimizing the input and output (I/O) interfaces and the interface between digital blocks.<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d32cf1d18cae59897643dca48b3fc447b94de244/day9/boundary_1.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/d32cf1d18cae59897643dca48b3fc447b94de244/day9/boundary_2.png"><br><br>
	
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

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/35_boundary_read.png"><br><br>

* Compiling the design as shown in image below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/36_boundary_compile_ultra.png"><br><br>

* Cells of the design are shown in image below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/37_boundary_cell_nohier.png"><br><br>

* GUI of the design design with no hierarchy is as shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/38_boundary_GUI_nohier.png"><br><br>

* We employ a command to prevent boundary optimization from taking place ```set_boundary_optimization u_im false```. u-im is the sub module in the design. The GUI of the design with intact hierarchy is shown in the images below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/39_boundary_cells_hier_set_no_hier_in_gui.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/40_compile_ultra.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/4393691621387a17733fe176052af49ae3a62815/day9/41_boundary_GUI_withhier.png"><br><br>

</details>

<details>
<summary> Register Retiming </summary> <br>

Register retiming is a technique used to optimize the performance of digital circuits by rearranging the registers in the circuit without changing its functionality. The primary goal of register retiming is to minimize the critical path delay, which is the longest path in the circuit from an input to an output.<br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/78ef74baa74f227c15b6a34610e241e443cf0f58/day9/reg_time1.png"><br><br>

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

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/42_retime_read.png"><br><br>

* Compiling the design as shown in image below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/43_retime_compile.png"><br><br>

* Timing report of the design shows that the path is uncontrained, as shown in image below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/44_retime_timing_pastclock.png"><br><br>

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

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/45_retime_clocks.png"><br><br>

* Timing report of the design without ```retime``` is shown below, it shows that slack violation has occured: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/46_retime_timig_report.png"><br><br>

* Now we will optimise the design with ```retime``` as shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/47_retime_compile_ultra_retime.png"><br><br>

* Timing report after the ```retime``` optimization is shown below: <br><br>

<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/48_retime_compile_ultra_post_compile.png"><br><br>
<img width="600" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/a923df906d4a167a62f7e387284f60727e25185e/day9/49_retime_timing_report_input_post_compile.png"><br><br>

While there is still a slack violation, it's worth noting that when compared to the previous timing report, the situation has improved significantly. <br>


</details>



</details>










</details><br>



```ruby


tcl file



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

<img width="1085" alt="[icc2_shell" src="https://github.com/mynkv/Samsung-PD-/blob/3e1d8985e957a169015f340f7cc1de32cf8976d5/Samsung_PD_%23day0/dc_shell.png">
</details>





