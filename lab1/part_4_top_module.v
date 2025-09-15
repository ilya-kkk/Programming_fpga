module part_4_top_module (input [31:0]a, input [31:0]b, input cin, output [31:0] sum, output cout); // 32-битный сумматор с переносом наружу

    wire [31:0] s; // Внутренняя сумма
    wire c_out;    // Выходной перенос

    assign {c_out, s} = a + b + cin; // Складываем a и b с входным переносом cin
    assign sum = s; // Пробрасываем сумму на выход
    assign cout = c_out; // Пробрасываем перенос на выход

endmodule