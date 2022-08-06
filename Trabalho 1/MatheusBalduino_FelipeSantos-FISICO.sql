/* Lógico_1: */

CREATE TABLE Curriculo (
    id BIGINT PRIMARY KEY,
    telefone VARCHAR(100),
    nascimento DATE,
    nome_citacoes VARCHAR(100),
    lattesID BIGINT,
    orcidID BIGINT,
    ultima_atualizacao DATE,
    descricao VARCHAR,
    outrasinfo VARCHAR,
    nome VARCHAR(100)
);

CREATE TABLE endereco (
    cep VARCHAR(100),
    id_endereco BIGINT PRIMARY KEY,
    fk_rua_id_rua BIGINT,
    fk_Curriculo_id BIGINT,
    fk_TipoEndereco_idTipoEndereco BIGINT
);

CREATE TABLE rua (
    id_rua BIGINT PRIMARY KEY,
    nome VARCHAR(100),
    fk_bairro_id_bairro BIGINT
);

CREATE TABLE bairro (
    id_bairro BIGINT PRIMARY KEY,
    nome VARCHAR(100),
    fk_cidade_id_cidade BIGINT
);

CREATE TABLE cidade (
    id_cidade BIGINT PRIMARY KEY,
    nome VARCHAR(100),
    fk_estado_id_estado BIGINT
);

CREATE TABLE estado (
    id_estado BIGINT PRIMARY KEY,
    nome VARCHAR(100),
    fk_pais_id_pais BIGINT
);

CREATE TABLE pais (
    id_pais BIGINT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Formacao_Academica (
    fim DATE,
    inicio DATE,
    id BIGINT PRIMARY KEY
);

CREATE TABLE Bolsa_PQ (
    id BIGINT PRIMARY KEY,
    descricao VARCHAR
);

CREATE TABLE Titulacao (
    inicio DATE,
    fim DATE,
    conceito_capes VARCHAR,
    local VARCHAR,
    descricao VARCHAR,
    orientador VARCHAR,
    id BIGINT PRIMARY KEY,
    fk_Tipo_Titulacao_id BIGINT,
    fk_Grande_Area_id BIGINT
);

CREATE TABLE Tipo_Titulacao (
    id BIGINT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Grande_Area (
    nome VARCHAR,
    id BIGINT PRIMARY KEY
);

CREATE TABLE Area (
    nome VARCHAR,
    id BIGINT PRIMARY KEY,
    fk_Grande_Area_id BIGINT
);

CREATE TABLE Subarea (
    nome VARCHAR,
    id BIGINT PRIMARY KEY,
    fk_Area_id BIGINT
);

CREATE TABLE Especialidade (
    nome VARCHAR,
    id BIGINT PRIMARY KEY,
    fk_Subarea_id BIGINT
);

CREATE TABLE PosDoc (
    inicio DATE,
    fim DATE,
    tipo VARCHAR,
    local VARCHAR,
    descricao VARCHAR,
    id_pos_doc BIGINT PRIMARY KEY
);

CREATE TABLE Formacao_complementar (
    inicio DATE,
    fim DATE,
    carga_horaria VARCHAR,
    local VARCHAR,
    id_formacao_complementar BIGINT PRIMARY KEY
);

CREATE TABLE Atuacao_profissional (
    inicio DATE,
    fim DATE,
    descricao VARCHAR(100),
    id BIGINT PRIMARY KEY,
    fk_Local_Atuacao_Profissional_idLocal BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE Local_Atuacao_Profissional (
    idLocal BIGINT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Tipo_Atuacao_Profissional (
    descricao VARCHAR(100),
    id_tipo_atuacao_prof BIGINT PRIMARY KEY
);

CREATE TABLE LinhaPesquisa (
    titulo VARCHAR,
    id BIGINT PRIMARY KEY
);

CREATE TABLE ProjetosPesquisa (
    descricao VARCHAR,
    alunosEnvolvidos VARCHAR,
    fk_Projeto_id BIGINT PRIMARY KEY,
    fk_natureza_id BIGINT,
    fk_situacao_id BIGINT,
    fk_tipoFinanciamento_idTipoFinanciamento BIGINT
);

CREATE TABLE integrante (
    lattesID BIGINT,
    nome VARCHAR,
    cargo VARCHAR,
    id_integrante BIGINT PRIMARY KEY
);

CREATE TABLE natureza (
    id BIGINT PRIMARY KEY,
    titulo VARCHAR
);

CREATE TABLE situacao (
    id BIGINT PRIMARY KEY,
    titulo VARCHAR
);

CREATE TABLE ProjetosExtensao (
    apoioEventos VARCHAR,
    descricao VARCHAR,
    fk_Projeto_id BIGINT PRIMARY KEY,
    fk_situacao_id BIGINT
);

CREATE TABLE ProjetosDesenvolvimento (
    fk_Projeto_id BIGINT PRIMARY KEY,
    fk_situacao_id BIGINT,
    fk_natureza_id BIGINT
);

CREATE TABLE Revisao_Periodico (
    inicio DATE,
    fim DATE,
    id BIGINT PRIMARY KEY,
    fk_Periodico_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE Periodico (
    id BIGINT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Revisao_Projeto_Fomento (
    fim DATE,
    inicio DATE,
    id BIGINT PRIMARY KEY,
    fk_Agencia_Fomento_id BIGINT
);

CREATE TABLE Agencia_Fomento (
    nome VARCHAR,
    id BIGINT PRIMARY KEY
);

CREATE TABLE idioma (
    nome VARCHAR,
    id BIGINT PRIMARY KEY
);

CREATE TABLE nive_lIdioma (
    nivel VARCHAR,
    id BIGINT PRIMARY KEY
);

CREATE TABLE PremiosTitulos (
    idPremiosTitulos BIGINT PRIMARY KEY,
    ano INTEGER,
    descricao VARCHAR
);

CREATE TABLE Producao (
    nomePeriodico VARCHAR(100),
    ano INTEGER,
    paginas VARCHAR(100),
    versao VARCHAR(100),
    title VARCHAR(100),
    id_producao BIGINT PRIMARY KEY,
    fk_Subcategoria_Producao_id_subcategoria_producao BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE Subcategoria_Producao (
    id_subcategoria_producao BIGINT PRIMARY KEY,
    nome VARCHAR,
    fk_Categoria_Producao_id_categoria_producao BIGINT
);

CREATE TABLE Categoria_Producao (
    id_categoria_producao BIGINT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Banca (
    id BIGINT PRIMARY KEY,
    titulo VARCHAR,
    descricao VARCHAR,
    fk_Subcategoria_Banca_id_subcategoria_banca BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE Eventos (
    id BIGINT PRIMARY KEY,
    titulo VARCHAR(100),
    fk_Categoria_Evento_id_categoria_eventos BIGINT
);

CREATE TABLE Subcategoria_Banca (
    id_subcategoria_banca BIGINT PRIMARY KEY,
    fk_Categoria_Banca_id_categoria_banca BIGINT
);

CREATE TABLE Categoria_Banca (
    id_categoria_banca BIGINT PRIMARY KEY,
    nome_categoria_banca VARCHAR
);

CREATE TABLE Categoria_Evento (
    id_categoria_eventos BIGINT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Orientacao (
    id_orientacao BIGINT PRIMARY KEY,
    em_andamento BOOLEAN,
    titulo_orientacao VARCHAR(100),
    fk_Categoria_Orientacao_id_categoria_orientacoes BIGINT
);

CREATE TABLE Categoria_Orientacao (
    id_categoria_orientacoes BIGINT PRIMARY KEY,
    nome_categoria_orientacao VARCHAR(100)
);

CREATE TABLE Inovacao (
    id BIGINT PRIMARY KEY,
    ano INTEGER
    descricao VARCHAR,
    fk_CategoriaInovacao_id BIGINT
);

CREATE TABLE CategoriaInovacao (
    id BIGINT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Projeto (
    id BIGINT PRIMARY KEY,
    inicio DATE,
    fim DATE,
    titulo VARCHAR
);

CREATE TABLE tipoFinanciamento (
    idTipoFinanciamento BIGINT PRIMARY KEY,
    tipoFinanciamentoNome VARCHAR(100),
    fk_Financiador_idFinanciador BIGINT
);

CREATE TABLE Financiador (
    nomeFinanciador VARCHAR(100),
    idFinanciador BIGINT PRIMARY KEY
);

CREATE TABLE TipoEndereco (
    idTipoEndereco BIGINT PRIMARY KEY,
    tituloTipoEndereco VARCHAR(100)
);

CREATE TABLE tipoAtuacao (
    fk_Atuacao_profissional_id BIGINT,
    fk_Tipo_Atuacao_Profissional_id_tipo_atuacao_prof BIGINT
);

CREATE TABLE curriculo_linha_pesquisa (
    fk_LinhaPesquisa_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE IntegrantePesquisa (
    fk_integrante_id_integrante BIGINT,
    fk_ProjetosPesquisa_fk_Projeto_id BIGINT
);

CREATE TABLE integranteExtensao (
    fk_integrante_id_integrante BIGINT,
    fk_ProjetosExtensao_fk_Projeto_id BIGINT
);

CREATE TABLE integranteDesenvolvimento (
    fk_ProjetosDesenvolvimento_fk_Projeto_id BIGINT,
    fk_integrante_id_integrante BIGINT
);

CREATE TABLE nivelIdioma (
    fk_nive_lIdioma_id BIGINT,
    fk_idioma_id BIGINT
);

CREATE TABLE curriculo_grande_area (
    fk_Grande_Area_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_area (
    fk_Area_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_subarea (
    fk_Curriculo_id BIGINT,
    fk_Subarea_id BIGINT
);

CREATE TABLE curriculo_especialidade (
    fk_Curriculo_id BIGINT,
    fk_Especialidade_id BIGINT
);

CREATE TABLE integrante_inovacao (
    fk_Inovacao_id BIGINT,
    fk_integrante_id_integrante BIGINT
);

CREATE TABLE curriculo_formacao_academica (
    fk_Curriculo_id BIGINT,
    fk_Formacao_Academica_id BIGINT
);

CREATE TABLE curriculo_bolsa_pq (
    fk_Bolsa_PQ_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_revisao_projeto_fomento (
    fk_Revisao_Projeto_Fomento_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE projetos_curriculo (
    fk_Projeto_id BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculos_premio (
    fk_PremiosTitulos_idPremiosTitulos BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_formacao (
    fk_Formacao_complementar_id_formacao_complementar BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_posdoc (
    fk_PosDoc_id_pos_doc BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE eventos_curriculo (
    fk_Curriculo_id BIGINT,
    fk_Eventos_id BIGINT
);

CREATE TABLE curriculo_orientacao (
    fk_Orientacao_id_orientacao BIGINT,
    fk_Curriculo_id BIGINT
);

CREATE TABLE curriculo_idioma (
    fk_Curriculo_id BIGINT,
    fk_idioma_id BIGINT
);
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_2
    FOREIGN KEY (fk_rua_id_rua)
    REFERENCES rua (id_rua)
    ON DELETE CASCADE;
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_3
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE CASCADE;
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_4
    FOREIGN KEY (fk_TipoEndereco_idTipoEndereco)
    REFERENCES TipoEndereco (idTipoEndereco)
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
 
ALTER TABLE ProjetosPesquisa ADD CONSTRAINT FK_ProjetosPesquisa_2
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosPesquisa ADD CONSTRAINT FK_ProjetosPesquisa_3
    FOREIGN KEY (fk_natureza_id)
    REFERENCES natureza (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosPesquisa ADD CONSTRAINT FK_ProjetosPesquisa_4
    FOREIGN KEY (fk_situacao_id)
    REFERENCES situacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosPesquisa ADD CONSTRAINT FK_ProjetosPesquisa_5
    FOREIGN KEY (fk_tipoFinanciamento_idTipoFinanciamento)
    REFERENCES tipoFinanciamento (idTipoFinanciamento)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosExtensao ADD CONSTRAINT FK_ProjetosExtensao_2
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosExtensao ADD CONSTRAINT FK_ProjetosExtensao_3
    FOREIGN KEY (fk_situacao_id)
    REFERENCES situacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosDesenvolvimento ADD CONSTRAINT FK_ProjetosDesenvolvimento_2
    FOREIGN KEY (fk_Projeto_id)
    REFERENCES Projeto (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosDesenvolvimento ADD CONSTRAINT FK_ProjetosDesenvolvimento_3
    FOREIGN KEY (fk_situacao_id)
    REFERENCES situacao (id)
    ON DELETE CASCADE;
 
ALTER TABLE ProjetosDesenvolvimento ADD CONSTRAINT FK_ProjetosDesenvolvimento_4
    FOREIGN KEY (fk_natureza_id)
    REFERENCES natureza (id)
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
 
ALTER TABLE tipoFinanciamento ADD CONSTRAINT FK_tipoFinanciamento_2
    FOREIGN KEY (fk_Financiador_idFinanciador)
    REFERENCES Financiador (idFinanciador)
    ON DELETE CASCADE;
 
ALTER TABLE tipoAtuacao ADD CONSTRAINT FK_tipoAtuacao_1
    FOREIGN KEY (fk_Atuacao_profissional_id)
    REFERENCES Atuacao_profissional (id)
    ON DELETE SET NULL;
 
ALTER TABLE tipoAtuacao ADD CONSTRAINT FK_tipoAtuacao_2
    FOREIGN KEY (fk_Tipo_Atuacao_Profissional_id_tipo_atuacao_prof)
    REFERENCES Tipo_Atuacao_Profissional (id_tipo_atuacao_prof)
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
    FOREIGN KEY (fk_integrante_id_integrante)
    REFERENCES integrante (id_integrante)
    ON DELETE RESTRICT;
 
ALTER TABLE IntegrantePesquisa ADD CONSTRAINT FK_IntegrantePesquisa_2
    FOREIGN KEY (fk_ProjetosPesquisa_fk_Projeto_id)
    REFERENCES ProjetosPesquisa (fk_Projeto_id)
    ON DELETE SET NULL;
 
ALTER TABLE integranteExtensao ADD CONSTRAINT FK_integranteExtensao_1
    FOREIGN KEY (fk_integrante_id_integrante)
    REFERENCES integrante (id_integrante)
    ON DELETE SET NULL;
 
ALTER TABLE integranteExtensao ADD CONSTRAINT FK_integranteExtensao_2
    FOREIGN KEY (fk_ProjetosExtensao_fk_Projeto_id)
    REFERENCES ProjetosExtensao (fk_Projeto_id)
    ON DELETE SET NULL;
 
ALTER TABLE integranteDesenvolvimento ADD CONSTRAINT FK_integranteDesenvolvimento_1
    FOREIGN KEY (fk_ProjetosDesenvolvimento_fk_Projeto_id)
    REFERENCES ProjetosDesenvolvimento (fk_Projeto_id)
    ON DELETE SET NULL;
 
ALTER TABLE integranteDesenvolvimento ADD CONSTRAINT FK_integranteDesenvolvimento_2
    FOREIGN KEY (fk_integrante_id_integrante)
    REFERENCES integrante (id_integrante)
    ON DELETE SET NULL;
 
ALTER TABLE nivelIdioma ADD CONSTRAINT FK_nivelIdioma_1
    FOREIGN KEY (fk_nive_lIdioma_id)
    REFERENCES nive_lIdioma (id)
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
 
ALTER TABLE integrante_inovacao ADD CONSTRAINT FK_integrante_inovacao_2
    FOREIGN KEY (fk_integrante_id_integrante)
    REFERENCES integrante (id_integrante)
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
 
ALTER TABLE curriculo_formacao ADD CONSTRAINT FK_curriculo_formacao_1
    FOREIGN KEY (fk_Formacao_complementar_id_formacao_complementar)
    REFERENCES Formacao_complementar (id_formacao_complementar)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_formacao ADD CONSTRAINT FK_curriculo_formacao_2
    FOREIGN KEY (fk_Curriculo_id)
    REFERENCES Curriculo (id)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_posdoc ADD CONSTRAINT FK_curriculo_posdoc_1
    FOREIGN KEY (fk_PosDoc_id_pos_doc)
    REFERENCES PosDoc (id_pos_doc)
    ON DELETE SET NULL;
 
ALTER TABLE curriculo_posdoc ADD CONSTRAINT FK_curriculo_posdoc_2
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