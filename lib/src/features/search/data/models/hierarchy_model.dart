class HierarchyItem {
  final String name;
  final List<HierarchyItem> children;

  HierarchyItem({required this.name, required this.children});

  factory HierarchyItem.fromJson(Map<String, dynamic> json) {
    return HierarchyItem(
      name: json['name'],
      children: (json['children'] as List<dynamic>? ?? [])
          .map((child) => HierarchyItem.fromJson(child))
          .toList(),
    );
  }
}
