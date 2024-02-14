class PokemonApi {

  const PokemonApi({
    required this.name,
    required this.weight,
    required this.imageUrl,
  });

  final String name;
  final double weight;
  final String imageUrl;
}