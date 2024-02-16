LOAD httpfs;
LOAD spatial;

COPY (
    SELECT
        type,
        version,
        CAST(updatetime as varchar) as updateTime,
        height,
        numfloors as numFloors,
        level,
        class,
        JSON(names) as names,
        JSON(sources) as sources,
        ST_GeomFromWKB(geometry) as geometry
    FROM
        read_parquet('s3://overturemaps-us-west-2/release/__OVERTURE_RELEASE/theme=buildings/type=*/*', hive_partitioning=1)
    LIMIT
        100
    ) TO 'buildings_sample.geojsonseq'
WITH (FORMAT GDAL, DRIVER 'GeoJSONSeq');
