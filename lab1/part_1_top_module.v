module part_1_top_module (input clk, input d, output q ); // Три последовательно соединённых D-триггера

    reg q_stage1; // Выход первого триггера
    reg q_stage2; // Выход второго триггера
    reg q_stage3; // Выход третьего триггера

    always @ (posedge clk) begin // Захват данных по фронту тактового сигнала
        q_stage1 <= d; // Первый триггер принимает вход d
        q_stage2 <= q_stage1; // Второй принимает выход первого
        q_stage3 <= q_stage2; // Третий принимает выход второго
    end

    assign q = q_stage3; // На выход top-модуля подаём третий триггер


endmodule // Конец модуля part_1_top_module