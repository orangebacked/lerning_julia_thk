using DataFrames, VegaLite, Query, VegaDatasets

cars = dataset("cars")

cars |> @select(:Acceleration, :Name) 

function foo(data, origin)
    df = data |> @filter(_.Origin==origin) |> DataFrame
    return df |> @vlplot(:point, :Acceleration, :Miles_per_Galon)
end

p = foo(cars, "USA")
