module full_add ( // Однобитный полный сумматор
    input a, b, cin, // Два бита-операнда и входной перенос
    output sum, cout ); // Выход суммы и выходной перенос

    assign sum  = a ^ b ^ cin; // Сумма: XOR всех трех входов
    assign cout = (a & b) | (a & cin) | (b & cin); // Перенос: когда хотя бы две единицы


endmodule // Конец модуля full_add