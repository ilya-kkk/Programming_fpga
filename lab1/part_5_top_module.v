module part_5_top_module (input [31:0]a, input [31:0]b, input sub, output [31:0] sum); // Сложение/вычитание на одном сумматоре

    wire [31:0] b_xor; // Модифицированный операнд b
    wire cin; // Входной перенос (для вычитания = 1)

    assign b_xor = b ^ {32{sub}}; // Если sub=1, инвертируем b (доп. код), иначе оставляем как есть
    assign cin = sub;             // При вычитании добавляем 1: a + (~b) + 1

    assign sum = a + b_xor + cin; // Универсальная операция: сложение или вычитание

endmodule