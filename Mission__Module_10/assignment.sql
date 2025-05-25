-- Active: 1747415867666@@127.0.0.1@5432@medical_db
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50) NOT NULL
);

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers (ranger_id) ON DELETE CASCADE,
    species_id INT REFERENCES species (species_id),
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(100) NOT NULL,
    notes TEXT
);

INSERT INTO
    rangers (ranger_id, name, region)
VALUES (
        1,
        'Alice Green',
        'Northern Hills'
    ),
    (2, 'Bob White', 'River Delta'),
    (
        3,
        'Carol King',
        'Mountain Range'
    );

INSERT INTO
    species (
        common_name,
        scientific_name,
        discovery_date,
        conservation_status
    )
VALUES (
        'Snow Leopard',
        'Panthera uncia',
        '1775-01-01',
        'Endangered'
    ),
    (
        'Bengal Tiger',
        'Panthera tigris tigris',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Red Panda',
        'Ailurus fulgens',
        '1825-01-01',
        'Vulnerable'
    ),
    (
        'Asiatic Elephant',
        'Elephas maximus indicus',
        '1758-01-01',
        'Endangered'
    );

INSERT INTO
    sightings (
        sighting_id,
        species_id,
        ranger_id,
        location,
        sighting_time,
        notes
    )
VALUES (
        1,
        1,
        1,
        'Peak Ridge',
        '2024-05-10 07:45:00',
        'Camera trap image captured'
    ),
    (
        2,
        2,
        2,
        'Bankwood Area',
        '2024-05-12 16:20:00',
        'Juvenile seen'
    ),
    (
        3,
        3,
        3,
        'Bamboo Grove East',
        '2024-05-15 09:10:00',
        'Feeding observed'
    ),
    (
        4,
        1,
        2,
        'Snowfall Pass',
        '2024-05-18 18:30:00',
        NULL
    )

-- problem - 7
UPDATE species
SET
    conservation_status = 'Historic'
WHERE
    extract(
        YEAR
        FROM discovery_date
    ) < 1800;

SELECT * FROM species

-- problem - 8
SELECT
    sighting_id,
    CASE
        WHEN EXTRACT(
            HOUR
            FROM sighting_time
        ) BETWEEN 0 AND 11  THEN 'Morning'
        WHEN EXTRACT(
            HOUR
            FROM sighting_time
        ) BETWEEN 12 AND 17  THEN 'Afternoon'
        WHEN EXTRACT(
            HOUR
            FROM sighting_time
        ) BETWEEN 18 AND 23  THEN 'Evening'
    END AS time_of_day
FROM sightings;

INSERT INTO
    rangers (ranger_id, name, region)
VALUES (
        4,
        'Derek Fox',
        'Coastal Plains'
    );

-- problem - 9
DELETE FROM rangers
WHERE
    ranger_id IN (
        SELECT rangers.ranger_id
        FROM rangers
            LEFT JOIN sightings ON rangers.ranger_id = sightings.ranger_id
        WHERE
            sightings.ranger_id IS NULL
    );

SELECT * FROM rangers