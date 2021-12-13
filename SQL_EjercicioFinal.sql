-- Ejercicio 1
select
    e.legajo,
    count(*) as 'cursos'
from
    ESTUDIANTE e
    inner join INSCRIPCION i on e.legajo = i.ESTUDIANTE_legajo
    inner join CURSO c on c.codigo = i.ESTUDIANTE_legajo
GROUP BY
    e.legajo -- Ejecicio 2
select
    e.legajo,
    count(*) as 'cursos'
from
    ESTUDIANTE
WHERE
    (
        select
            count(*)
        from
            CURSO c
        WHERE
            e.carrera = c.nombre
    ) > 1
GROUP BY
    e.legajo --Ejercicio 3
select
    e.legajo,
    count(*)
from
    ESTUDIANTE
WHERE
    (
        select
            count(*)
        from
            CURSO c
        WHERE
            e.carrera = c.nombre
    ) = null 
    
    --Ejercicio 4

    --Ejercicio 5
select
    apellido
from
    (
        (
            (ESTUDIANTE e
                inner join INSCRIPCION i on e.legajo = i.ESTUDIANTE_legajo
            )
            inner join CURSO c on c.codigo = i.ESTUDIANTE_legajo
        )
        inner join PROFESOR p on p.id = c.PROFESOR_id
    )
WHERE
    p.nombre like 'Pérez'
    or 'Paz'