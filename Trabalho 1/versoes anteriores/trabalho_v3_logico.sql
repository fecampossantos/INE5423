/* trabalho_v2_logico: */

CREATE TABLE Curriculo (
    id INT PRIMARY KEY,
    telefone VARCHAR,
    nascimento DATE,
    nome_citacoes VARCHAR,
    lattesID INT,
    orcidID INT,
    ultima_atualizacao TIMESTAMP,
    descricao VARCHAR,
    outrasinfo VARCHAR,
    nome VARCHAR
);

CREATE TABLE endereco (
    cep INT,
    id_endereco INT PRIMARY KEY,
    fk_rua_id_rua INT,
    fk_Curriculo_id INT
);

CREATE TABLE rua (
    id_rua INT PRIMARY KEY,
    nome VARCHAR,
    fk_bairro_id_bairro INT
);

CREATE TABLE bairro (
    id_bairro INT PRIMARY KEY,
    nome VARCHAR,
    fk_cidade_id_cidade INT
);

CREATE TABLE cidade (
    id_cidade INT PRIMARY KEY,
    nome VARCHAR,
    fk_estado_id_estado INT
);

CREATE TABLE estado (
    id_estado INT PRIMARY KEY,
    nome VARCHAR,
    fk_pais_id_pais INT
);

CREATE TABLE pais (
    id_pais INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Formacao_Academica (
    fim DATE,
    inicio DATE,
    id INT PRIMARY KEY
);

CREATE TABLE Bolsa_PQ (
    id INT PRIMARY KEY,
    descricao VARCHAR
);

CREATE TABLE Titulacao (
    inicio DATE,
    fim DATE,
    conceito_capes VARCHAR,
    local VARCHAR,
    descricao VARCHAR,
    orientador VARCHAR,
    id INT PRIMARY KEY,
    fk_Tipo_Titulacao_id INT,
    fk_Grande_Area_id INT
);

CREATE TABLE Tipo_Titulacao (
    id INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Grande_Area (
    nome VARCHAR,
    id INT PRIMARY KEY
);

CREATE TABLE Area (
    nome VARCHAR,
    id INT PRIMARY KEY,
    fk_Grande_Area_id INT
);

CREATE TABLE Subarea (
    nome VARCHAR,
    id INT PRIMARY KEY,
    fk_Area_id INT
);

CREATE TABLE Especialidade (
    nome VARCHAR,
    id INT PRIMARY KEY,
    fk_Subarea_id INT
);

CREATE TABLE PosDoc (
    inicio DATE,
    fim DATE,
    tipo VARCHAR,
    local VARCHAR,
    descricao VARCHAR
);

CREATE TABLE Formacao_complementar (
    inicio DATE,
    fim DATE,
    carga_horaria INT,
    local VARCHAR
);

CREATE TABLE Atuacao_profissional (
    inicio DATE,
    fim DATE,
    descricao VARCHAR,
    id INT PRIMARY KEY,
    fk_Local_Atuacao_Profissional_idLocal INT,
    fk_Curriculo_id INT
);

CREATE TABLE Local_Atuacao_Profissional (
    idLocal INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Tipo_Atuacao_Profissional (
    descricao VARCHAR
);

CREATE TABLE LinhaPesquisa (
    titulo VARCHAR,
    id INT PRIMARY KEY
);

CREATE TABLE integrante (
    lattesID INT,
    nome VARCHAR,
    cargo VARCHAR
);

CREATE TABLE natureza (
    id INT PRIMARY KEY,
    titulo VARCHAR
);

CREATE TABLE situacao (
    id INT PRIMARY KEY,
    titulo VARCHAR
);

CREATE TABLE ProjetosExtensao (
    inicio DATE,
    fim DATE,
    apoioEventos INT,
    descricao VARCHAR,
    fk_situacao_id INT
);

CREATE TABLE Revisao_Periodico (
    inicio DATE,
    fim DATE,
    id INT PRIMARY KEY,
    fk_Periodico_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE Periodico (
    id INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Revisao_Projeto_Fomento (
    fim DATE,
    inicio DATE,
    id INT PRIMARY KEY,
    fk_Agencia_Fomento_id INT
);

CREATE TABLE Agencia_Fomento (
    nome VARCHAR,
    id INT PRIMARY KEY
);

CREATE TABLE idioma (
    nome VARCHAR,
    id INT PRIMARY KEY
);

CREATE TABLE nivelIdioma (
    nivel VARCHAR,
    id INT PRIMARY KEY
);

CREATE TABLE PremiosTitulos (
    ano INT,
    descricao VARCHAR
);

CREATE TABLE PremiosTitulos (
    idPremiosTitulos INT PRIMARY KEY,
    ano INT,
    descricao VARCHAR
);

CREATE TABLE Producao (
    nomePeriodico VARCHAR,
    ano INT,
    paginas INT,
    versao FLOAT,
    title VARCHAR,
    id_producao INT PRIMARY KEY,
    fk_Subcategoria_Producao_id_subcategoria_producao INT,
    fk_Curriculo_id INT
);

CREATE TABLE Subcategoria_Producao (
    id_subcategoria_producao INT PRIMARY KEY,
    nome VARCHAR,
    fk_Categoria_Producao_id_categoria_producao INT
);

CREATE TABLE Categoria_Producao (
    id_categoria_producao INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Banca (
    id INT PRIMARY KEY,
    titulo VARCHAR,
    descricao VARCHAR,
    fk_Subcategoria_Banca_id_subcategoria_banca INT,
    fk_Curriculo_id INT
);

CREATE TABLE Eventos (
    id INT PRIMARY KEY,
    titulo VARCHAR,
    fk_Categoria_Evento_id_categoria_eventos INT
);

CREATE TABLE Subcategoria_Banca (
    id_subcategoria_banca INT PRIMARY KEY,
    fk_Categoria_Banca_id_categoria_banca INT
);

CREATE TABLE Categoria_Banca (
    id_categoria_banca INT PRIMARY KEY,
    nome_categoria_banca VARCHAR
);

CREATE TABLE Categoria_Evento (
    id_categoria_eventos INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Orientacao (
    id_orientacao INT PRIMARY KEY,
    em_andamento BOOLEAN,
    titulo_orientacao VARCHAR,
    fk_Categoria_Orientacao_id_categoria_orientacoes INT
);

CREATE TABLE Categoria_Orientacao (
    id_categoria_orientacoes INT PRIMARY KEY,
    nome_categoria_orientacao VARCHAR
);

CREATE TABLE Inovacao (
    id INT PRIMARY KEY,
    ano INT,
    descricao VARCHAR,
    fk_CategoriaInovacao_id INT
);

CREATE TABLE CategoriaInovacao (
    id INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Projeto (
    id INT PRIMARY KEY,
    inicio DATE,
    fim DATE,
    titulo VARCHAR,
    descricao VARCHAR,
    alunosEnvolvidos VARCHAR,
    financiadores VARCHAR,
    Projeto_TIPO INT,
    fk_natureza_id INT,
    fk_situacao_id INT
);

CREATE TABLE tipoAtuacao (
    fk_Atuacao_profissional_id INT
);

CREATE TABLE curriculo_linha_pesquisa (
    fk_LinhaPesquisa_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE IntegrantePesquisa (
    fk_Projeto_id INT
);

CREATE TABLE integranteExtensao (
);

CREATE TABLE integranteDesenvolvimento (
    fk_Projeto_id INT
);

CREATE TABLE nivelIdioma (
    fk_nivelIdioma_id INT,
    fk_idioma_id INT
);

CREATE TABLE curriculo_grande_area (
    fk_Grande_Area_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_area (
    fk_Area_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_subarea (
    fk_Curriculo_id INT,
    fk_Subarea_id INT
);

CREATE TABLE curriculo_especialidade (
    fk_Curriculo_id INT,
    fk_Especialidade_id INT
);

CREATE TABLE integrante_inovacao (
    fk_Inovacao_id INT
);

CREATE TABLE curriculo_formacao_academica (
    fk_Curriculo_id INT,
    fk_Formacao_Academica_id INT
);

CREATE TABLE curriculo_bolsa_pq (
    fk_Bolsa_PQ_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_revisao_projeto_fomento (
    fk_Revisao_Projeto_Fomento_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE projetos_curriculo (
    fk_Projeto_id INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculos_premio (
    fk_PremiosTitulos_idPremiosTitulos INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_premios (
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_formacao (
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_posdoc (
    fk_Curriculo_id INT
);

CREATE TABLE eventos_curriculo (
    fk_Curriculo_id INT,
    fk_Eventos_id INT
);

CREATE TABLE curriculo_orientacao (
    fk_Orientacao_id_orientacao INT,
    fk_Curriculo_id INT
);

CREATE TABLE curriculo_idioma (
    fk_Curriculo_id INT,
    fk_idioma_id INT
);
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_2
    FOREIGN KEY (fk_rua_id_rua)
    REFERENCES rua (id_rua)
    ON DELETE CASCADE;
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE rua ADD CONSTRAINT FK_rua_2
    FOREIGN KEY (fk_bairro_id_bairro)
    REFERENCES bairro (id_bairro)
    ON DELETE RESTRICT;
 
ALTER TABLE bairro ADD CONSTRAINT FK_bairro_2
    FOREIGN KEY (fk_cidade_id_cidade)
    REFERENCES cidade (id_cidade)
    ON DELETE RESTRICT;
 
ALTER TABLE cidade ADD CONSTRAINT FK_cidade_2
    FOREIGN KEY (fk_estado_id_estado)
    REFERENCES estado (id_estado)
    ON DELETE RESTRICT;
 
ALTER TABLE estado ADD CONSTRAINT FK_estado_2
    FOREIGN KEY (fk_pais_id_pais)
    REFERENCES pais (id_pais)
    ON DELETE RESTRICT;
 
ALTER TABLE Titulacao ADD CONSTRAINT FK_Titulacao_2
    FOREIGN KEY (fk_Tipo_Titulacao_id)
    REFERENCES Tipo_Titulacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE Titulacao ADD CONSTRAINT FK_Titulacao_3
    FOREIGN KEY (fk_Grande_Area_id)
    REFERENCES Grande_Area (id)
    ON DELETE SET NULL;
 
ALTER TABLE Area ADD CONSTRAINT FK_Area_2
    FOREIGN KEY (fk_Grande_Area_id)
    REFERENCES Grande_Area (id)
    ON DELETE CASCADE;
 
ALTER TABLE Subarea ADD CONSTRAINT FK_Subarea_2
    FOREIGN KEY (fk_Area_id)
    REFERENCES Area (id)
    ON DELETE CASCADE;
 
ALTER TABLE Especialidade ADD CONSTRAINT FK_Especialidade_2
    FOREIGN KEY (fk_Subarea_id)
    REFERENCES Subarea (id)
    ON DELETE CASCADE;
 
ALTER TABLE Atuacao_profissional ADD CONSTRAINT FK_Atuacao_profissional_2
    FOREIGN KEY (fk_Local_Atuacao_Profissional_idLocal)
    REFERENCES Local_Atuacao_Profissional (idLocal)
    ON DELETE CASCADE;
 
ALTER TABLE Atuacao_profissional ADD CONSTRAINT FK_Atuacao_profissional_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosExtensao ADD CONSTRAINT FK_ProjetosExtensao_1
    FOREIGN KEY (fk_situacao_id)
    REFERENCES situacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE Revisao_Periodico ADD CONSTRAINT FK_Revisao_Periodico_2
    FOREIGN KEY (fk_Periodico_id)
    REFERENCES Periodico (id)
    ON DELETE CASCADE;
 
ALTER TABLE Revisao_Periodico ADD CONSTRAINT FK_Revisao_Periodico_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Revisao_Projeto_Fomento ADD CONSTRAINT FK_Revisao_Projeto_Fomento_2
    FOREIGN KEY (fk_Agencia_Fomento_id)
    REFERENCES Agencia_Fomento (id)
    ON DELETE CASCADE;
 
ALTER TABLE Producao ADD CONSTRAINT FK_Producao_2
    FOREIGN KEY (fk_Subcategoria_Producao_id_subcategoria_producao)
    REFERENCES Subcategoria_Producao (id_subcategoria_producao)
    ON DELETE CASCADE;
 
ALTER TABLE Producao ADD CONSTRAINT FK_Producao_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Subcategoria_Producao ADD CONSTRAINT FK_Subcategoria_Producao_2
    FOREIGN KEY (fk_Categoria_Producao_id_categoria_producao)
    REFERENCES Categoria_Producao (id_categoria_producao)
    ON DELETE CASCADE;
 
ALTER TABLE Banca ADD CONSTRAINT FK_Banca_2
    FOREIGN KEY (fk_Subcategoria_Banca_id_subcategoria_banca)
    REFERENCES Subcategoria_Banca (id_subcategoria_banca)
    ON DELETE CASCADE;
 
ALTER TABLE Banca ADD CONSTRAINT FK_Banca_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Eventos ADD CONSTRAINT FK_Eventos_2
    FOREIGN KEY (fk_Categoria_Evento_id_categoria_eventos)
    REFERENCES Categoria_Evento (id_categoria_eventos)
    ON DELETE CASCADE;
 
ALTER TABLE Subcategoria_Banca ADD CONSTRAINT FK_Subcategoria_Banca_2
    FOREIGN KEY (fk_Categoria_Banca_id_categoria_banca)
    REFERENCES Categoria_Banca (id_categoria_banca)
    ON DELETE CASCADE;
 
ALTER TABLE Orientacao ADD CONSTRAINT FK_Orientacao_2
    FOREIGN KEY (fk_Categoria_Orientacao_id_categoria_orientacoes)
    REFERENCES Categoria_Orientacao (id_categoria_orientacoes)
    ON DELETE CASCADE;
 
ALTER TABLE Inovacao ADD CONSTRAINT FK_Inovacao_2
    FOREIGN KEY (fk_CategoriaInovacao_id)
    REFERENCES CategoriaInovacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE Projeto ADD CONSTRAINT FK_Projeto_2
    FOREIGN KEY (fk_natureza_id)
    REFERENCES natureza (id)
    ON DELETE CASCADE;
 
ALTER TABLE Projeto ADD CONSTRAINT FK_Projeto_3
    FOREIGN KEY (fk_situacao_id)
    REFERENCES situacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE tipoAtuacao ADD CONSTRAINT FK_tipoAtuacao_1
    FOREIGN KEY (fk_Atuacao_profissional_id)
    REFERENCES Atuacao_profissional (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_linha_pesquisa ADD CONSTRAINT FK_curriculo_linha_pesquisa_1
    FOREIGN KEY (fk_LinhaPesquisa_id)
    REFERENCES LinhaPesquisa (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_linha_pesquisa ADD CONSTRAINT FK_curriculo_linha_pesquisa_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE IntegrantePesquisa ADD CONSTRAINT FK_IntegrantePesquisa_1
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE SET NULL;
 
ALTER TABLE integranteDesenvolvimento ADD CONSTRAINT FK_integranteDesenvolvimento_1
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE SET NULL;
 
ALTER TABLE nivelIdioma ADD CONSTRAINT FK_nivelIdioma_1
    FOREIGN KEY (fk_nivelIdioma_id)
    REFERENCES nivelIdioma (id)
    ON DELETE RESTRICT;
 
ALTER TABLE nivelIdioma ADD CONSTRAINT FK_nivelIdioma_2
    FOREIGN KEY (fk_idioma_id)
    REFERENCES idioma (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_grande_area ADD CONSTRAINT FK_curriculo_grande_area_1
    FOREIGN KEY (fk_Grande_Area_id)
    REFERENCES Grande_Area (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_grande_area ADD CONSTRAINT FK_curriculo_grande_area_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_area ADD CONSTRAINT FK_curriculo_area_1
    FOREIGN KEY (fk_Area_id)
    REFERENCES Area (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_area ADD CONSTRAINT FK_curriculo_area_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_subarea ADD CONSTRAINT FK_curriculo_subarea_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_subarea ADD CONSTRAINT FK_curriculo_subarea_2
    FOREIGN KEY (fk_Subarea_id)
    REFERENCES Subarea (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_especialidade ADD CONSTRAINT FK_curriculo_especialidade_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_especialidade ADD CONSTRAINT FK_curriculo_especialidade_2
    FOREIGN KEY (fk_Especialidade_id)
    REFERENCES Especialidade (id)
    ON DELETE SET NULL;
 
ALTER TABLE integrante_inovacao ADD CONSTRAINT FK_integrante_inovacao_1
    FOREIGN KEY (fk_Inovacao_id)
    REFERENCES Inovacao (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_formacao_academica ADD CONSTRAINT FK_curriculo_formacao_academica_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_formacao_academica ADD CONSTRAINT FK_curriculo_formacao_academica_2
    FOREIGN KEY (fk_Formacao_Academica_id)
    REFERENCES Formacao_Academica (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_bolsa_pq ADD CONSTRAINT FK_curriculo_bolsa_pq_1
    FOREIGN KEY (fk_Bolsa_PQ_id)
    REFERENCES Bolsa_PQ (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_bolsa_pq ADD CONSTRAINT FK_curriculo_bolsa_pq_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_revisao_projeto_fomento ADD CONSTRAINT FK_curriculo_revisao_projeto_fomento_1
    FOREIGN KEY (fk_Revisao_Projeto_Fomento_id)
    REFERENCES Revisao_Projeto_Fomento (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_revisao_projeto_fomento ADD CONSTRAINT FK_curriculo_revisao_projeto_fomento_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE projetos_curriculo ADD CONSTRAINT FK_projetos_curriculo_1
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE SET NULL;
 
ALTER TABLE projetos_curriculo ADD CONSTRAINT FK_projetos_curriculo_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculos_premio ADD CONSTRAINT FK_curriculos_premio_1
    FOREIGN KEY (fk_PremiosTitulos_idPremiosTitulos)
    REFERENCES PremiosTitulos (idPremiosTitulos)
    ON DELETE SET NULL;
 
ALTER TABLE curriculos_premio ADD CONSTRAINT FK_curriculos_premio_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_premios ADD CONSTRAINT FK_curriculo_premios_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_formacao ADD CONSTRAINT FK_curriculo_formacao_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_posdoc ADD CONSTRAINT FK_curriculo_posdoc_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE eventos_curriculo ADD CONSTRAINT FK_eventos_curriculo_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE RESTRICT;
 
ALTER TABLE eventos_curriculo ADD CONSTRAINT FK_eventos_curriculo_2
    FOREIGN KEY (fk_Eventos_id)
    REFERENCES Eventos (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_orientacao ADD CONSTRAINT FK_curriculo_orientacao_1
    FOREIGN KEY (fk_Orientacao_id_orientacao)
    REFERENCES Orientacao (id_orientacao)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_orientacao ADD CONSTRAINT FK_curriculo_orientacao_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_idioma ADD CONSTRAINT FK_curriculo_idioma_1
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_idioma ADD CONSTRAINT FK_curriculo_idioma_2
    FOREIGN KEY (fk_idioma_id)
    REFERENCES idioma (id)
    ON DELETE SET NULL;