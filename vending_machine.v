module vending_machine (
    input  wire clk,
    input  wire reset,
    input  wire coin5,
    input  wire coin10,
    output reg  dispense
);

    // State encoding
    parameter
        S0  = 2'b00,
        S5  = 2'b01,
        S10 = 2'b10;
    

    reg[1:0] state, next_state;

    //  State Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    //  Next State Logic
    always @(*) begin
        next_state = state;   // default

        case (state)
            S0: begin
                if (coin5)       next_state = S5;
                else if (coin10) next_state = S10;
            end

            S5: begin
                if (coin5 || coin10)
                    next_state = S10;
            end

            S10: begin
                next_state = S0; // after dispense
            end
        endcase
    end

    //  Output Logic
    always @(*) begin
        if (state == S10)
            dispense = 1'b1;
        else
            dispense = 1'b0;
    end

endmodule
