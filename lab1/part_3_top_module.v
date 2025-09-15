module part_3_top_module (input [31:0]a, input [31:0]b, input cin, output [31:0] sum); // 32-битный сумматор из двух 16-битных блоков

    wire [15:0] low_sum; // Сумма младших 16 бит
    wire [15:0] high_sum; // Сумма старших 16 бит
    wire carry16; // Перенос из младших 16 бит
    wire carry32; // Перенос из старших 16 бит (не используется дальше)

    // Нижняя часть: складываем младшие 16 бит
    assign {carry16, low_sum} = a[15:0] + b[15:0];

    // Верхняя часть: складываем старшие 16 бит с переносом carry16
    assign {carry32, high_sum} = a[31:16] + b[31:16] + carry16;

    assign sum = {high_sum, low_sum}; // Собираем 32-битную сумму

endmodule // Конец модуля part_3_top_module