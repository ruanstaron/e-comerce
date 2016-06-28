# $Id: backup.php $
# TomatoCart Open Source Shopping Cart Solutions
# http://www.tomatocart.com
#
# Copyright (c) 2009-2010 Wuxi Elootec Technology Co., Ltd
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License v2 (1991)
# as published by the Free Software Foundation.

heading_title = Gerenciador de Backup do banco de dados

action_heading_new_backup = Novo Backup do banco de dados
action_heading_restore_local_file = Restaurar do Backup Local
action_heading_batch_delete_backup_files = Deletar arquivos de Backup em massa

table_heading_backups = Backups
table_heading_date = Data
table_heading_file_size = Tamanho do arquivo
table_heading_action = Ação

field_compression_none = Sem compressão
field_compression_gzip = Compressão GZIP
field_compression_zip = Compressão ZIP
field_download_only = Apenas Baixar (Não salvar no servidor)

backup_location = Diretório de Backup:
last_restoration_date = Data da última restauração:
forget_restoration_date = Esquecer da data da restauração

introduction_new_backup = Por favor, preencha as seguintes informações para o novo backup do banco de dados.

introduction_restore_file = Por favor, verifique a restauração do seguinte arquivo de backup de banco de dados.

introduction_restore_local_file = Por favor, selecione o arquivo de backup do banco de dados para restaurar.

introduction_delete_backup_file = Por favor, verifique a remoção deste arquivo de backup do banco de dados.

introduction_batch_delete_backup_files = Por favor, verifique a remoção dos seguintes arquivos de backup do banco de dados.

ms_error_backup_directory_not_writable = Erro: O diretório de backup do banco de dados não tem permissão de escrita: %s
ms_error_backup_directory_non_existant = Erro: O diretório de backup do banco de dados não existe: %s
ms_error_download_link_not_acceptable = Erro: O link de download não é válido.

ms_success_database_restore = Sucesso: O banco de dados foi restaurado com sucesso. Por favor, faça login novamente para acessar o sistema.
