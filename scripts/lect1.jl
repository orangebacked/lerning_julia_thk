using DataFrames, VegaLite, Query, VegaDatasets

cars = dataset("cars")

cars |> @select(:Acceleration, :Name) 

