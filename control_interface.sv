
module control_interface (
    //towards user
    input [1:0] cmd,
    output cmdack,
    input [ASIZE-1]

);


    //contains a command-interface
    //refresh_control
    
    command_interface comm_intfr (

    );

    refresh_control ref_cntr (

    );

    //fsm to control the logic
    typedef enum node [3:0] {
        IDLE        = 4'b0000,
        PRECHARGE   = 4'b0001,
        REFRESH     = 4'b0010,
        ACT         = 4'b0011,
        LOAD_MORE   = 4'b0100,
        ACT_WAIT    = 4'b0101,
        WRITE       = 4'b0110,
        READ        = 4'b0111,
        DATA        = 4'b1000,
        READ_WAIT   = 4'b1001,
        WRITE_DATA  = 4'b1010
    } t_fsm_state;


t_fsm_state fsmCS, fsmNS;




endmodule