using PalmerPenguins, DataFrames, AlgebraOfGraphics, CairoMakie

penguins = dropmissing(DataFrame(PalmerPenguins.load()))
first(penguins, 6)
set_aog_theme!()

axis = (width=225, height=225)
penguin_frequency = data(penguins) * frequency() * mapping(:Species)

draw(penguin_frequency; axis)