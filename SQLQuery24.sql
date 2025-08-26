-- tablas maestras (las que manejan información como: categorías, tipos, clasificaciones, grupos); es decir que son datos fijos que no cambian
-- Unidad , Doctor tratante , Doctor Jefe =7

--- Unidad:
--- Insert Into Unidad Values(001,'Urgencias',1,2554);
--- Insert Into Unidad Values(012,'UCI',1,5334);
--- Insert Into Unidad Values(023,'Ginecología y Obstetricia',2,5469);
--- Insert Into Unidad Values(024,'Pediatría',2,2745);
--- Insert Into Unidad Values(025,'Oncologia',2,6184);
--- Insert Into Unidad Values(036,'Cirugia General',3,1857);
--- Insert Into Unidad Values(037,'psiquiatria',3,9237);

--- Doctor Jefe :
--- Insert Into Doctor_Jefe Values(001,'Cardiología','Dr. Ana Martínez')
--- Insert Into Doctor_Jefe Values(002,'Pediatría','Dr. Juan Pérez')
--- Insert Into Doctor_Jefe Values(003,'Neurología'','Dra. Laura Gómez')
--- Insert Into Doctor_Jefe Values(004,'Urología','Dr. Carlos Sánchez')
--- Insert Into Doctor_Jefe Values(005,'Ginecología','Dra. Paula Ramírez')
--- Insert Into Doctor_Jefe Values(006,'Oncología','Dr. Manuel Torres')
--- Insert Into Doctor_Jefe Values(007,'Psiquiatría','Dra. Silvia López')

--- Doctor Tratante:
--- Insert Into Doctor_Tratante Values(010,'Pediatra','Dr. Andrés Ríos');
--- Insert Into Doctor_Tratante Values(020,'Traumatología','Dr. Fernando Medina');
--- Insert Into Doctor_Tratante Values(030,'Medicina Interna','Dra. Carmen Delgado')
--- Insert Into Doctor_Tratante Values(040,'Oncología','Dr. Jorge Herrera')
--- Insert Into Doctor_Tratante Values(050,'Neumología','Dra. Isabel Mendoza')
--- Insert Into Doctor_Tratante Values(060,'Urología','Dr. Ricardo Castillo')
--- Insert Into Doctor_Tratante Values(070,'Reumatología','Dra. Teresa Navarro')


--tablas transaccionales (clientes, pedidos, facturas, ventas, registros, etc.) de sus modelos 
-- Paciente, Intervencion,Unidad Paciente =15

--- Paciente:
--- Insert Into Paciente Values('SS0012345', 28, 'Lucía Morales');
--- Insert Into Paciente Values('SS0012346', 34, 'Miguel Rivas');
--- Insert Into Paciente Values('SS0012347', 45, 'Sofía Delgado');
--- Insert Into Paciente Values('SS0012348', 52, 'Carlos Méndez');
--- Insert Into Paciente Values('SS0012349', 19, 'Ana Torres');
--- Insert Into Paciente Values('SS0012350', 63, 'Jorge Castillo');
--- Insert Into Paciente Values('SS0012351', 39, 'Valeria Navarro');
--- Insert Into Paciente Values('SS0012352', 27, 'Andrés Gómez');
--- Insert Into Paciente Values('SS0012353', 41, 'Claudia Ruiz');
--- Insert Into Paciente Values('SS0012354', 55, 'Pedro Hernández');
--- Insert Into Paciente Values('SS0012355', 22, 'María Fernanda Pérez');
--- Insert Into Paciente Values('SS0012356', 38, 'Luis Alberto Ramírez');
--- Insert Into Paciente Values('SS0012357', 30, 'Daniela Pineda');
--- Insert Into Paciente Values('SS0012358', 47, 'Raúl Sánchez');
--- Insert Into Paciente Values('SS0012359', 60, 'Beatriz Ortega');

-- Intervencion:
--- Insert Into Intervencion Values('2024-05-10', 'Jarabe y descanso', 'Fiebre alta', 010, 'SS0012345');
--- Insert Into Intervencion Values('2024-05-12', 'Fisioterapia', 'Dolor muscular', 020, 'SS0012346');
--- Insert Into Intervencion Values('2024-05-14', 'Análisis general', 'Cansancio extremo', 030, 'SS0012347');
--- Insert Into Intervencion Values('2024-05-15', 'Quimioterapia', 'Nódulo en cuello', 040, 'SS0012348');
--- Insert Into Intervencion Values('2024-05-18', 'Inhalador', 'Dificultad respiratoria', 050, 'SS0012349');
--- Insert Into Intervencion Values('2024-05-20', 'Tratamiento hormonal', 'Fatiga y cambios de humor', 030, 'SS0012350');
--- Insert Into Intervencion Values('2024-05-21', 'Revisión articular', 'Dolor en rodillas', 070, 'SS0012351');
--- Insert Into Intervencion Values('2024-05-22', 'Terapia respiratoria', 'Tos persistente', 050, 'SS0012352');
--- Insert Into Intervencion Values('2024-05-25', 'Ejercicios y vendaje', 'Luxación de hombro', 020, 'SS0012353');
--- Insert Into Intervencion Values('2024-05-27', 'Antibióticos', 'Infección urinaria', 060, 'SS0012354');
--- Insert Into Intervencion Values('2024-05-30', 'Consulta interna', 'Dolores abdominales', 030, 'SS0012355');
--- Insert Into Intervencion Values('2024-06-01', 'Radiografía', 'Caída reciente', 020, 'SS0012356');
--- Insert Into Intervencion Values('2024-06-02', 'Oxigenoterapia', 'Asma', 050, 'SS0012357');
--- Insert Into Intervencion Values('2024-06-04', 'Evaluación urológica', 'Dolor al orinar', 060, 'SS0012358');
--- Insert Into Intervencion Values('2024-06-05', 'Terapia articular', 'Rigidez matutina', 070, 'SS0012359');

--- Unidad Paciente
--- Insert Into Unidad_Paciente Values('SS0012345', 001, '2024-04-21');
--- Insert Into Unidad_Paciente Values('SS0012346', 012, '2024-04-23');
--- Insert Into Unidad_Paciente Values('SS0012347', 023, '2024-04-25');
--- Insert Into Unidad_Paciente Values('SS0012348', 024, '2024-04-27');
--- Insert Into Unidad_Paciente Values('SS0012349', 025, '2024-05-01');
--- Insert Into Unidad_Paciente Values('SS0012350', 036, '2024-05-03');
--- Insert Into Unidad_Paciente Values('SS0012351', 037, '2024-05-04');
--- Insert Into Unidad_Paciente Values('SS0012352', 024, '2024-05-06');
--- Insert Into Unidad_Paciente Values('SS0012353', 001, '2024-05-09');
--- Insert Into Unidad_Paciente Values('SS0012354', 012, '2024-05-11');
--- Insert Into Unidad_Paciente Values('SS0012355', 025, '2024-05-13');
--- Insert Into Unidad_Paciente Values('SS0012356', 036, '2024-05-14');
--- Insert Into Unidad_Paciente Values('SS0012357', 037, '2024-05-16');
--- Insert Into Unidad_Paciente Values('SS0012358', 023, '2024-05-18');
--- Insert Into Unidad_Paciente Values('SS0012359', 001, '2024-05-20');

