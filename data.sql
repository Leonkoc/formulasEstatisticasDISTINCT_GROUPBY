SELECT 
    cliente,
    valor_do_orcamento,
    estado,
FROM forcamentos
ORDER BY valor_do_orcamento DESC
LIMIT 5