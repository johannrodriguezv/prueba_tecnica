-- Catálogo de productos que usa el core para calcular el total de cada pedido.
-- Las tablas de pedidos las crea el candidato con sus propias migraciones.

CREATE TABLE products (
    id         BIGSERIAL      PRIMARY KEY,
    sku        VARCHAR(32)    NOT NULL UNIQUE,
    name       VARCHAR(120)   NOT NULL,
    price      NUMERIC(12, 2) NOT NULL CHECK (price > 0),
    created_at TIMESTAMPTZ    NOT NULL DEFAULT now()
);

INSERT INTO products (sku, name, price) VALUES
    ('KB-MEC-01',  'Teclado mecánico',            249900.00),
    ('MS-WL-01',   'Mouse inalámbrico',            89900.00),
    ('HS-BT-01',   'Audífonos Bluetooth',         179900.00),
    ('CH-USBC-65', 'Cargador USB-C 65 W',          99900.00),
    ('CB-USBC-2M', 'Cable USB-C de 2 m',           29900.00),
    ('MN-27-QHD',  'Monitor 27" QHD',            1299900.00),
    ('WC-1080',    'Cámara web 1080p',            159900.00),
    ('HB-USBC-7',  'Hub USB-C 7 en 1',            139900.00);
