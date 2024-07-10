def spark(request):
    """
    Creates a spark context

    Parameters
    ----------
    request: pytest.FixtureRequest object
        provides access to testing context
    """

    spark = (
        SparkSession
        .builder
        .appName('pytest-pyspark-local-testing')
        .master('local[2]')
        .getOrCreate()
    )

    request.addfinalizer(lambda: spark.stop())

    return spark
