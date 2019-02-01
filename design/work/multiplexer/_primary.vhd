library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        data_out        : out    vl_logic_vector(3 downto 0)
    );
end multiplexer;
