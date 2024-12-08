alter table proprietarios add column qtd_hospedagens int;

alter table alugueis rename to reservas;

ALTER TABLE reservas CHANGE aluguel_id reserva_id INT;

-- 4min