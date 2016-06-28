# $Id: index.php $
# TomatoCart Open Source Shopping Cart Solutions
# http://www.tomatocart.com
#
# Copyright (c) 2009-2010 Wuxi Elootec Technology Co., Ltd
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License v2 (1991)
# as published by the Free Software Foundation.

page_title_welcome = Bem vindo à Loja Virtual TomatoCart V1.0!
page_title_pre_installation_check = Checagem Pré-instalção
page_title_database_server_setup = Configuração do Servidor do Banco de Dados
page_title_web_server = Servidor Web
page_title_online_store_settings = Configurações da Loja Virtual
page_title_finished = Finalizado!

nav_menu_title = Passos
nav_menu_step_1_text = 1: Licença de Uso
nav_menu_step_2_text = 2: Checagem Pré-instalação
nav_menu_step_3_text = 3: Configuração do Banco de Dados
nav_menu_step_4_text = 4: Configuração do Servidor Web
nav_menu_step_5_text = 5: Configuraçções da Loja Online
nav_menu_step_6_text = 6: Finalizado

title_language = Língua:

box_title_license = Licença de Uso
label_agree_to_the_license = Eu concordo com a licença
warning_accept_license = Por favor, você deve marcar a caixa "Eu concordo..." para continuar!

text_welcome = <p style="background-color: #ff6633; padding: 5px; border: 1px #000 solid;">Lembre-se que esta é uma versão alpha unsuppported desenvolvimento que não deve ser utilizado para uso em produção.</p><p>TomatoCart é nova geração de soluções open source de lojas virtuais desenvolvido pela Elootec, é derivada da osCommerce 3 alpha 4 "Lebkuchen" como um projeto à parte. Sua característica de fácil instalação out-of-the-box permite aos próprios donos das lojas instalar, administrar e manter as suas lojas virtuais com o mínimo de esforço e sem custos. .</p><p>TomatoCart combina soluções de código aberto para fornecer uma plataforma livre de desenvolvimento aberto, que inclui a <i>poderosa</i> linguagem PHP, o <i>estável</i> Servidor Apache, e o <i>rápido</i> banco de dados MySQL.</p><p>Sem restrições ou exigências especiais, TomatoCart pode ser instalado em qualquer servidor web com PHP4 ou PHP5 habilitado, em qualquer ambiente que suporte PHP e MySQL, o que inclui Linux, Solaris, BSD, e ambientes Microsoft Windows.</p>
text_pre_installation_check = Antes de continuar com a instalação certifique-se que o seu sistema é compativel com os requerimentos mínimos para a instalação. Se qualquer uma destas configurações não forem suportadas, por favor por favor tome as providencias necessárias para corrigir os erros. Há risco de alguma ferramenta do TomatoCart não funcionar corretamente.
text_database_server_setup = O servidor do Banco de Dados armazena o conteúdo da loja online como informações dos produtos, clientes e os pedidos que forem feitos. Por favor consulte o administrador do servidor se  você não conhecer os parâmetros do servidor do Banco de Dados.
text_web_server = O servidor web é responsável por hospedar as páginas da loja virtual para os visitantes e clientes. Os parâmetros do servidor web são responsáveis por apontar as páginas para os locais corretos.
Arquivos temporários bem como as sessões de dados e arquivos de cache são armazenados no diretório de instalação. É importante que este diretório seja localizado fora do diretorio raiz do servidor e tenha acesso restrito.
text_online_store_settings = Aqui você pode definir o nome da sua Loja Virtual e as informações de contato do administrador.
O administrador e a senha são usados para fazer login na seção protegida da administração.
text_finished = Parabéns por instalar e configurar a Solução de Lojas Virtuais TomatoCart!
Desejamos sucesso com sua Loja Virtual e damos boas vindas para participar de nossa comunidade.
-Equipe TomatoCart


param_database_server = Servidor do Banco de Dados
param_database_server_description = Endereço do servidor do banco de dados na forma de url ou endereço de IP.
param_database_username = Usuário
param_database_username_description = Usuário para conectar ao servidor do banco de dados.
param_database_password = Senha
param_database_password_description = Senha utilizada juntamente com o usuario para se conectar ao servidor do banco de dados.
param_database_name = Banco de Dados
param_database_name_description = Nome do Banco de Dados para armazenar os dados.
param_database_type = Tipo do Banco de Dados
param_database_type_description = Software usado no Banco de Dados.
param_database_prefix = Prefixo das Tabelas do Banco de Dados
param_database_prefix_description = Prefixo a ser utilizado nas tabelas do Banco de dados.

param_database_import_sample_data = Importar Dados de Exemplo
param_database_import_sample_data_description = Inserir dados de exemplo no Banco de Dados é recomendado para instalações iniciantes.

param_web_address = Endereço WWW
param_web_address_description = Endereço Web da Loja Online
param_web_root_directory = Diretório Raiz do Servidor
param_web_root_directory_description = Diretório onde os arquivos estão armazenados no servidor.
param_web_work_directory = Diretório de instalação
param_web_work_directory_description = O diretório para criar arquivos temporários. Este diretório deve estar localizado fora do diretório raiz do servidor por razões de segurança. (Servidores de hospedagem compartilhada não deve usar /tmp/)

param_store_name = Nome da Loja
param_store_name_description = Nome da Loja Online que será utilizado publicamente.
param_store_owner_name = Nome do Administrador
param_store_owner_name_description = Nome do Administrador da Loja que será utilizado publicamente.
param_store_owner_email_address = Email do Administrador
param_store_owner_email_address_description = Endereço de Email do administrador que será utilizado publicamente.
param_administrator_username = Usuário do Administrador
param_administrator_username_description = Nome de usuario para utilizar a ferramenta de administração.
param_administrator_password = Senha do Administrador
param_confirm_password = Confirmar Senha
param_administrator_password_description = Senha usada para a conta de administrador.


rpc_database_connection_test = Testando conexão com o Banco de Dados
rpc_database_connection_error = Houve um problema ao conectar ao Banco de Dados. Ocorreu o seguinte erro: 
%s
Por favor verifique os parâmetros da conexão e tente novamente.
rpc_database_connected = Conexão com o Banco de Dados efetuada com sucesso.
rpc_database_importing = A estrutura do banco de dados está sendo importada. Por favor seja paciente durante este procedimento.
rpc_database_imported = Banco de Dados importado com sucesso.
rpc_database_import_error = <p>Ocorreu um problema ao importar o banco de dados. O erro foi o seguinte:</p><p><b>%s</b></p><p>Por favor verifique os parâmetros de conexão com o banco de dados e tente novamente.</p>

rpc_store_setting_username_error = <p>Ocorreu um problema com a configuração da loja. O erro foi o seguinte: </p><p><b>O nome de usuário não pode se nulo!</b></p><p>Por favor insira o nome de usuário.</p>
rpc_store_setting_password_error = <p>Ocorreu um problema com a configuração da loja. O erro foi o seguinte: </p><p><b>A senha não pode se nula!</b></p><p>Por favor insira o nome de usuário.</p>
rpc_store_setting_confirm_error = <p>Ocorreu um problema com a configuração da loja. O erro foi o seguinte: </p><p><b>As senhas não conferem!</b></p><p>Por favor insira o nome de usuário.</p>
rpc_store_setting_email_error = <p>Ocorreu um problema com a configuração da loja. O erro foi o seguinte: </p><p><b>Endereço de e-mail inválido!</b></p><p>Por favor insira o nome de usuário.</p>

rpc_work_directory_test = Testando diretório principal..
rpc_work_directory_error_non_existent = Ocorreu um problema ao acessar o diretório de instalação . O erro foi o seguinte: <br /><br /><b>O seguinte diretório não existe::<br /><br />%s</b><br /><br />Por favor verifique o diretório e tente novamente.
rpc_work_directory_error_not_writeable = Ocorreu um problema ao acessar o diretório de instalação . O erro foi o seguinte: <br /><br /><b>O servidor não tem permissão de escrita no seguinte diretório:<br /><br />%s</b><br /><br />Por favor verifique as permissões deste diretório e tente novamente.
rpc_work_directory_configured = Diretório de instalação configurado com sucesso.

rpc_database_sample_data_importing = Os dados de exemplo estão sendo importados neste momento. Por favor tenha paciência durante este procedimento.
rpc_database_sample_data_imported = Banco de dados de exemplo importado com sucesso.
rpc_database_sample_data_import_error = <p>Ocorreu um problema ao importar o banco de dados de exemplo. O erro foi o seguinte:
</p><p><b>%s</b></p><p>Por favor verifique o servidor do banco de dados e tente novamente.</p>


box_pre_install_title = Checagem Pré-instalação
box_server_title = Capacidades do servidor
box_server_php_version = Versão do PHP
box_server_php_settings = Configurações do PHP
box_server_register_globals = register_globals
box_server_magic_quotes = magic_quotes
box_server_file_uploads = file_uploads
box_server_session_auto_start = session.auto_start
box_server_session_use_trans_sid = session.use_trans_sid
box_server_php_extensions = Extensões do PHP
box_server_mysql = MySQL
box_server_gd = GD
box_server_curl = cURL
box_server_openssl = OpenSSL
box_server_on = Ligado
box_server_off = Desligado
box_file_permissions = Permissões de Arquivos
box_directory_permissions = Permissões de Diretórios

error_configuration_file_not_writeable = Antes de proceder com a instalação certifique-se que você aplicou as permissões corretas para os seguintes arquivos e diretórios: %s
error_configuration_file_alternate_method = Alternativamente há a possibilidade de fornecer os parâmetros de configuração manualmente no fim do procedimento de instalação
error_agree_to_license = Por favor aceite a licença antes de instalar a TomatoCart!

text_go_to_shop_after_cfg_file_is_saved = Por favor visite sua loja após o arquivo de configuração ser salvo:
