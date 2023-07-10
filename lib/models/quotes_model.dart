class quotesModel {
  int? quotes_index;


  quotesModel({
    required this.quotes_index,
  });

  factory quotesModel.frommap({required Map<String, dynamic> data}) {
    return quotesModel(
      quotes_index: data['quotes_index'],
    );
  }
}


class QuoteModel {
  String category;
  List<Quote> quotes;
  //string quotes_image;

  QuoteModel(this.category, this.quotes);
  //this.quotes_image

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    var quoteList = json['quotes'] as List;
    List<Quote> quotes = quoteList.map((quote) => Quote.fromJson(quote)).toList();

    return QuoteModel(
      json['quotes_category'],
      //json['quotes_image'],
      quotes,
    );
  }
}

class Quote {
  int id;
  String quote;
  String author;
  //String image;

  Quote(this.id, this.quote, this.author );
  //this.image

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      json['id'],
      json['quote'],
      json['author'],
      //json['je json ma name hoy te'],
    );
  }
}