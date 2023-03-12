SELECT 
    status,
    SUM(valor_do_orcamento) AS total_orcado, --dei um nome pra coluna pra n ficar como SUM
    AVG(valor_do_orcamento) AS media_orcado, -- a media mostra que os valores perdidos, mão é pelo ticket médio
    COUNT(*) AS qnt_orcamentos,
    --preciso saber a quantidade unica de clientes por status.
    COUNT(DISTINCT cliente) AS clientes_unicos-- quantidade distinta de clientes.
FROM forcamentos
GROUP BY status
ORDER BY total_orcado DESC