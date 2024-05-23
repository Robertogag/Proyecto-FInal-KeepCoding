-- Crear el esquema si no existe
CREATE SCHEMA IF NOT EXISTS GDR_Exportacion;

-- Establecer el esquema como el predeterminado para las siguientes operaciones
SET search_path TO GDR_Exportacion;

-- Crear la tabla de modelos de vehículos
CREATE TABLE modelos (
    id_modelo SERIAL PRIMARY KEY,
    nombre_modelo VARCHAR(100) UNIQUE
);

-- Crear la tabla de vehículos
CREATE TABLE vehiculos (
    vin VARCHAR(50) NOT NULL UNIQUE,
    modelo_id INT,
    pais_destino VARCHAR(50),
    PRIMARY KEY (vin),
    FOREIGN KEY (modelo_id) REFERENCES modelos(id_modelo)
);

CREATE TABLE areas (
    id_area INT PRIMARY KEY,
    descripcion_area VARCHAR(255)  -- llenar esto más tarde si consigues las descripciones
);

CREATE TABLE tipos (
    id_tipo INT PRIMARY KEY,
    descripcion_tipo VARCHAR(255)  -- llenar esto más tarde si consigues las descripciones
);

CREATE TABLE severidades (
    id_severidad INT PRIMARY KEY,
    descripcion_severidad VARCHAR(255)  -- llenar esto más tarde si consigues las descripciones
);


-- Crear la tabla de daños
CREATE TABLE danos (
    id_dano SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    area_id INT,
    tipo_id INT,
    severidad_id INT,
    clasificacion_dano VARCHAR(100),
    descripcion_dano TEXT,
    estatus_reparacion VARCHAR(50),
    sitio VARCHAR(50),
    modo VARCHAR(50),
    FOREIGN KEY (vin) REFERENCES vehiculos(vin),
    FOREIGN KEY (area_id) REFERENCES areas(id_area),
    FOREIGN KEY (tipo_id) REFERENCES tipos(id_tipo),
    FOREIGN KEY (severidad_id) REFERENCES severidades(id_severidad)
);

-- Crear la tabla de transportistas que también pueden ser responsables de daños
CREATE TABLE transportistas (
    id_transportista SERIAL PRIMARY KEY,
    nombre_transportista VARCHAR(100) UNIQUE,
    es_responsable BOOLEAN DEFAULT FALSE
);

-- Crear la tabla de reportes de daños
CREATE TABLE reportes_danos (
    id_reporte SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    transportista_id INT,
    FOREIGN KEY (vin) REFERENCES vehiculos(vin),
    FOREIGN KEY (transportista_id) REFERENCES transportistas(id_transportista)
);

-- Crear la tabla de fechas GDR (Global Damage Report)
CREATE TABLE fechas_gdr (
    id_fechas SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL UNIQUE,
    fecha_recibo_patio DATE,
    FOREIGN KEY (vin) REFERENCES vehiculos(vin)
);

-- Crear la tabla de evidencias de reparaciones
CREATE TABLE evidencias_reparaciones (
    id_evidencia SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    evidencia_dano1 VARCHAR(255),
    evidencia_dano2 VARCHAR(255),
    FOREIGN KEY (vin) REFERENCES vehiculos(vin)
);

-- Crear la tabla de evidencias de daños
CREATE TABLE evidencias_danos (
    id_evidencia SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    evidencia_dano1 VARCHAR(255),
    evidencia_dano2 VARCHAR(255),
    FOREIGN KEY (vin) REFERENCES vehiculos(vin)
);


