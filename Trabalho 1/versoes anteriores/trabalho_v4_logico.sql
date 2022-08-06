    /* L�gico_1: */

    CREATE TABLE Curriculo (
        id INTEGER PRIMARY KEY,
        telefone VARCHAR,
        nascimento DATE,
        nome_citacoes VARCHAR,
        lattesID bigint,
        orcidID bigint,
        ultima_atualizacao DATE,
        descricao VARCHAR,
        outrasinfo VARCHAR,
        nome VARCHAR
    );

    CREATE TABLE endereco (
        cep VARCHAR,
        id_endereco INTEGER PRIMARY KEY,
        fk_rua_id_rua INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE rua (
        id_rua INTEGER PRIMARY KEY,
        nome VARCHAR,
        fk_bairro_id_bairro INTEGER
    );

    CREATE TABLE bairro (
        id_bairro INTEGER PRIMARY KEY,
        nome VARCHAR,
        fk_cidade_id_cidade INTEGER
    );

    CREATE TABLE cidade (
        id_cidade INTEGER PRIMARY KEY,
        nome VARCHAR,
        fk_estado_id_estado INTEGER
    );

    CREATE TABLE estado (
        id_estado INTEGER PRIMARY KEY,
        nome VARCHAR,
        fk_pais_id_pais INTEGER
    );

    CREATE TABLE pais (
        id_pais INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Formacao_Academica (
        fim DATE,
        inicio DATE,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE Bolsa_PQ (
        id INTEGER PRIMARY KEY,
        descricao VARCHAR
    );

    CREATE TABLE Titulacao (
        inicio DATE,
        fim DATE,
        conceito_capes INTEGER,
        local VARCHAR,
        descricao VARCHAR,
        orientador VARCHAR,
        id INTEGER PRIMARY KEY,
        fk_Tipo_Titulacao_id INTEGER,
        fk_Grande_Area_id INTEGER
    );

    CREATE TABLE Tipo_Titulacao (
        id INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Grande_Area (
        nome VARCHAR,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE Area (
        nome VARCHAR,
        id INTEGER PRIMARY KEY,
        fk_Grande_Area_id INTEGER
    );

    CREATE TABLE Subarea (
        nome VARCHAR,
        id INTEGER PRIMARY KEY,
        fk_Area_id INTEGER
    );

    CREATE TABLE Especialidade (
        nome VARCHAR,
        id INTEGER PRIMARY KEY,
        fk_Subarea_id INTEGER
    );

    CREATE TABLE PosDoc (
        inicio DATE,
        fim DATE,
        tipo VARCHAR,
        local VARCHAR,
        descricao VARCHAR,
        id_pos_doc INTEGER PRIMARY KEY
    );

    CREATE TABLE Formacao_complementar (
        inicio DATE,
        fim DATE,
        carga_horaria INTEGER,
        local VARCHAR,
        id_formacao_complementar INTEGER PRIMARY KEY
    );

    CREATE TABLE Atuacao_profissional (
        inicio DATE,
        fim DATE,
        descricao VARCHAR,
        id INTEGER PRIMARY KEY,
        fk_Local_Atuacao_Profissional_idLocal INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE Local_Atuacao_Profissional (
        idLocal INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Tipo_Atuacao_Profissional (
        descricao VARCHAR,
        id_tipo_atuacao_prof INTEGER PRIMARY KEY
    );

    CREATE TABLE LinhaPesquisa (
        titulo VARCHAR,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE ProjetosPesquisa (
        descricao VARCHAR,
        alunosEnvolvidos VARCHAR,
        financiadores VARCHAR,
        fk_Projeto_id INTEGER PRIMARY KEY,
        fk_natureza_id INTEGER,
        fk_situacao_id INTEGER
    );

    CREATE TABLE integrante (
        lattesID bigint,
        nome VARCHAR,
        cargo VARCHAR,
        id_integrante INTEGER PRIMARY KEY
    );

    CREATE TABLE natureza (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR
    );

    CREATE TABLE situacao (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR
    );

    CREATE TABLE ProjetosExtensao (
        apoioEventos VARCHAR,
        descricao VARCHAR,
        fk_Projeto_id INTEGER PRIMARY KEY,
        fk_situacao_id INTEGER
    );

    CREATE TABLE ProjetosDesenvolvimento (
        fk_Projeto_id INTEGER PRIMARY KEY
    );

    CREATE TABLE Revisao_Periodico (
        inicio DATE,
        fim DATE,
        id INTEGER PRIMARY KEY,
        fk_Periodico_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE Periodico (
        id INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Revisao_Projeto_Fomento (
        fim DATE,
        inicio DATE,
        id INTEGER PRIMARY KEY,
        fk_Agencia_Fomento_id INTEGER
    );

    CREATE TABLE Agencia_Fomento (
        nome VARCHAR,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE idioma (
        nome VARCHAR,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE nivel_Idioma (
        nivel VARCHAR,
        id INTEGER PRIMARY KEY
    );

    CREATE TABLE PremiosTitulos (
        ano INTEGER,
        descricao VARCHAR,
        id_PremiosTitulos INTEGER PRIMARY KEY
    );

    CREATE TABLE Producao (
        nomePeriodico VARCHAR,
        ano INTEGER,
        paginas INTEGER,
        versao FLOAT,
        title VARCHAR,
        id_producao INTEGER PRIMARY KEY,
        fk_Subcategoria_Producao_id_subcategoria_producao INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE Subcategoria_Producao (
        id_subcategoria_producao INTEGER PRIMARY KEY,
        nome VARCHAR,
        fk_Categoria_Producao_id_categoria_producao INTEGER
    );

    CREATE TABLE Categoria_Producao (
        id_categoria_producao INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Banca (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR,
        descricao VARCHAR,
        fk_Subcategoria_Banca_id_subcategoria_banca INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE Eventos (
        id INTEGER PRIMARY KEY,
        titulo VARCHAR,
        fk_Categoria_Evento_id_categoria_eventos INTEGER
    );

    CREATE TABLE Subcategoria_Banca (
        id_subcategoria_banca INTEGER PRIMARY KEY,
        fk_Categoria_Banca_id_categoria_banca INTEGER
    );

    CREATE TABLE Categoria_Banca (
        id_categoria_banca INTEGER PRIMARY KEY,
        nome_categoria_banca VARCHAR
    );

    CREATE TABLE Categoria_Evento (
        id_categoria_eventos INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Orientacao (
        id_orientacao INTEGER PRIMARY KEY,
        em_andamento BOOLEAN,
        titulo_orientacao VARCHAR,
        fk_Categoria_Orientacao_id_categoria_orientacoes INTEGER
    );

    CREATE TABLE Categoria_Orientacao (
        id_categoria_orientacoes INTEGER PRIMARY KEY,
        nome_categoria_orientacao VARCHAR
    );

    CREATE TABLE Inovacao (
        id INTEGER PRIMARY KEY,
        ano INTEGER,
        descricao VARCHAR,
        fk_CategoriaInovacao_id INTEGER
    );

    CREATE TABLE CategoriaInovacao (
        id INTEGER PRIMARY KEY,
        nome VARCHAR
    );

    CREATE TABLE Projeto (
        id INTEGER PRIMARY KEY,
        inicio DATE,
        fim DATE,
        titulo VARCHAR
    );

    CREATE TABLE tipoAtuacao (
        fk_Atuacao_profissional_id INTEGER,
        fk_Tipo_Atuacao_Profissional_id_tipo_atuacao_prof INTEGER
    );

    CREATE TABLE curriculo_linha_pesquisa (
        fk_LinhaPesquisa_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE IntegrantePesquisa (
        fk_integrante_id_integrante INTEGER,
        fk_ProjetosPesquisa_fk_Projeto_id INTEGER
    );

    CREATE TABLE integranteExtensao (
        fk_integrante_id_integrante INTEGER,
        fk_ProjetosExtensao_fk_Projeto_id INTEGER
    );

    CREATE TABLE integranteDesenvolvimento (
        fk_ProjetosDesenvolvimento_fk_Projeto_id INTEGER,
        fk_integrante_id_integrante INTEGER
    );

    CREATE TABLE nivelIdioma (
        fk_nivelIdioma_id INTEGER,
        fk_idioma_id INTEGER
    );

    CREATE TABLE curriculo_grande_area (
        fk_Grande_Area_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_area (
        fk_Area_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_subarea (
        fk_Curriculo_id INTEGER,
        fk_Subarea_id INTEGER
    );

    CREATE TABLE curriculo_especialidade (
        fk_Curriculo_id INTEGER,
        fk_Especialidade_id INTEGER
    );

    CREATE TABLE integrante_inovacao (
        fk_Inovacao_id INTEGER,
        fk_integrante_id_integrante INTEGER
    );

    CREATE TABLE curriculo_formacao_academica (
        fk_Curriculo_id INTEGER,
        fk_Formacao_Academica_id INTEGER
    );

    CREATE TABLE curriculo_bolsa_pq (
        fk_Bolsa_PQ_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_revisao_projeto_fomento (
        fk_Revisao_Projeto_Fomento_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE projetos_curriculo (
        fk_Projeto_id INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculos_premio (
        fk_PremiosTitulos_idPremiosTitulos INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_premios (
        fk_PremiosTitulos_id_premios INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_formacao (
        fk_Formacao_complementar_id_formacao_complementar INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_posdoc (
        fk_PosDoc_id_pos_doc INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE eventos_curriculo (
        fk_Curriculo_id INTEGER,
        fk_Eventos_id INTEGER
    );

    CREATE TABLE curriculo_orientacao (
        fk_Orientacao_id_orientacao INTEGER,
        fk_Curriculo_id INTEGER
    );

    CREATE TABLE curriculo_idioma (
        fk_Curriculo_id INTEGER,
        fk_idioma_id INTEGER
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
        FOREIGN KEY (fk_nivelIdioma_id)
        REFERENCES nivel_Idioma (id)
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
        REFERENCES PremiosTitulos (id_PremiosTitulos)
        ON DELETE SET NULL;
    
    ALTER TABLE curriculos_premio ADD CONSTRAINT FK_curriculos_premio_2
        FOREIGN KEY (fk_Curriculo_id)
        REFERENCES Curriculo (id)
        ON DELETE SET NULL;
    
    ALTER TABLE curriculo_premios ADD CONSTRAINT FK_curriculo_premios_1
        FOREIGN KEY (fk_PremiosTitulos_id_premios)
        REFERENCES PremiosTitulos (id_PremiosTitulos)
        ON DELETE SET NULL;
    
    ALTER TABLE curriculo_premios ADD CONSTRAINT FK_curriculo_premios_2
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