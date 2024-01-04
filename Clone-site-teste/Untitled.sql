CREATE TABLE `cadastro` (
  `id` integer PRIMARY KEY,
  `primeiro_nome` varchar(255),
  `sobreNome` varchar(255),
  `email` string,
  `senha` string,
  `agendamento_id` integer,
  `created_at` timestamp
);

CREATE TABLE `login` (
  `id` integer PRIMARY KEY,
  `email` string,
  `senha` string,
  `created_at` timestamp
);

CREATE TABLE `agendamento` (
  `id` integer PRIMARY KEY,
  `nome_completo` varchar(255),
  `endereco` varchar(255),
  `cpf` integer,
  `cartao_sus` integer,
  `ubs_que_deseja_atendimento` string,
  `servico_desejado` string
);

ALTER TABLE `login` ADD FOREIGN KEY (`id`) REFERENCES `cadastro` (`id`);

ALTER TABLE `agendamento` ADD FOREIGN KEY (`id`) REFERENCES `cadastro` (`agendamento_id`);
