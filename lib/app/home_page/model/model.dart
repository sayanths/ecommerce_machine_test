class FruitsModel {
    FruitsModel({
        this.pName,
        this.pId,
        this.pCost,
        this.pAvailability,
        this.pDetails,
        this.pCategory,
    });

    String? pName;
    int? pId;
    int? pCost;
    int? pAvailability;
    String? pDetails;
    String? pCategory;

    factory FruitsModel.fromJson(Map<String, dynamic> json) => FruitsModel(
        pName: json["p_name"],
        pId: json["p_id"],
        pCost: json["p_cost"],
        pAvailability: json["p_availability"],
        pDetails: json["p_details"] == null ? null : json["p_details"],
        pCategory: json["p_category"] == null ? null : json["p_category"],
    );

    Map<String, dynamic> toJson() => {
        "p_name": pName,
        "p_id": pId,
        "p_cost": pCost,
        "p_availability": pAvailability,
        "p_details": pDetails == null ? null : pDetails,
        "p_category": pCategory == null ? null : pCategory,
    };
}
