class CategoriesDummy {
  final int id;
  final String slug, name;

  const CategoriesDummy({
    this.id,
    this.slug,
    this.name,
  });
}

const List<CategoriesDummy> categories = [
  CategoriesDummy(
    id: 1,
    slug: 'sports',
    name: 'Sports',
  ),
  CategoriesDummy(
    id: 2,
    slug: 'perjalanan',
    name: 'Perjalanan',
  ),
  CategoriesDummy(
    id: 3,
    slug: 'events',
    name: 'Events',
  ),
  CategoriesDummy(
    id: 4,
    slug: 'money',
    name: 'Money',
  )
];
