CREATE TABLE consultas_2 AS

WITH
medicos AS(
    SELECT DISTINCT
        id_medico
        ,IFNULL("MED-"|| sequencia, 'Não identificado') AS id_medico_aj
    FROM(
        SELECT
            id_medico
            ,ROW_NUMBER() OVER(ORDER BY id_medico) AS sequencia

        FROM consultas_ajustada

        GROUP BY id_medico
        ORDER BY id_medico
    )

    GROUP BY id_medico
    ORDER BY id_medico
),

pacientes AS(
    SELECT DISTINCT
        id_paciente
        ,IFNULL("PAC-"|| sequencia, 'Não identificado') AS id_paciente_aj
    FROM(
        SELECT
            id_paciente
            ,ROW_NUMBER() OVER(ORDER BY id_paciente) AS sequencia

        FROM consultas_ajustada

        GROUP BY id_paciente
        ORDER BY id_paciente
    )

    GROUP BY id_paciente
    ORDER BY id_paciente
)

SELECT 
    ca.* 
    ,me.id_medico_aj
    ,pa.id_paciente_aj
    ,ca.data_consulta || " " || ca.inicio_consulta AS inicio_consulta_aj
    ,CASE
        WHEN SUBSTR(ca.fim_consulta,1,2) <> '00' THEN ca.data_consulta
        ELSE DATE(ca.data_consulta, '+1 days')
    END || " " || ca.fim_consulta   AS fim_consulta_aj

FROM consultas_ajustada ca

    LEFT JOIN medicos me
        USING(id_medico)

    LEFT JOIN pacientes pa
        USING(id_paciente)

;

