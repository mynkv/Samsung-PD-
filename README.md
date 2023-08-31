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







