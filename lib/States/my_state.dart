import 'package:flutter/material.dart';
import '../Api/api_album.dart';
import '../Api/api_review.dart';
import '../Api/api_sok_resultat.dart';
import '../Api/api_start.dart';
import '../Items/album_item.dart';
import '../Items/compiled_data_item.dart';
import '../Items/sok_item.dart';
import '../Items/start_item.dart';
import '../Api/api_artist.dart';
import '../Items/artist_item.dart';
import '../Items/review_item.dart';

class MyState extends ChangeNotifier {
  //Listor//
  List<Review> _list = [];

  List<StartItem> _startList = [];

  List<SearchItem> _searchList = [];

  List<StartItem> get startList => _startList;

  List<Review> get list => _list;

  List<SearchItem> get searchList => _searchList;

  //Reviews//
  Review? _review;

  Review? get review => _review;

  //Items//
  TrackItem? _trackList;

  TrackItem? get tracklist => _trackList;

  AlbumItem? _album;

  AlbumItem? get album => _album;

  ArtistItem? _artist;

  ArtistItem? get artist => _artist;

  //String//
  String _searchWord = '';

  String get searchWord => _searchWord;

  String _newAlbum = '';

  String _newArtist = '';

  String get newAlbum => _newAlbum;

  String get newArtist => _newArtist;

  String _newAlbum1 = '';

  String _newArtist1 = '';

  String get newAlbum1 => _newAlbum1;

  String get newArtist1 => _newArtist1;

  String _artistInfo = '';

  String get artistInfo => _artistInfo;

  String _filter = '';

  String get filterBy => _filter;

  Future getList() async {
    List<Review> list = await ReviewAPI.reviewList();
    _list = list;
    notifyListeners();
  }

  Future fetchResultList() async {
    List<SearchItem> sokList = await ApiSearchList.doAlbumSearch(searchWord);
    _searchList = sokList;
    notifyListeners();
  }

  Future getAlbum() async {
    AlbumItem album = await ApiAlbumFetch.fetchAlbum(newAlbum, newArtist);
    _album = album;
    notifyListeners();
  }

  Future getTrack() async {
    TrackItem tracklist = await ApiTrackFetch.fetchTrack(newAlbum1, newArtist1);
    _trackList = tracklist;
    notifyListeners();
  }

  Future getArtist() async {
    ArtistItem artist = await ApiArtistFetch.fetchArtist(artistInfo);
    _artist = artist;
    notifyListeners();
  }

  Future getStartList() async {
    List<StartItem> startList = await ApiStartList.fetchStartList();
    _startList = startList;
    notifyListeners();
  }

  void filter(String filter) {
    _filter = filter;
    notifyListeners();
  }

  void addReview(String albumCoverX, albumX, artistX, authorX, reviewTextX,
      int ratingX) async {
    final compile = CompiledData(
        albumCover: albumCoverX,
        album: albumX,
        artist: artistX,
        author: authorX,
        rating: ratingX,
        reviewText: reviewTextX);
    final review = Review(id: '', compiledData: compile, redundant: false);
    _list = await ReviewAPI.addReview(review);
    notifyListeners();
  }

  void setWord(String ord) {
    _searchWord = ord;
    print(_searchWord);
    notifyListeners();
  }

  void setAlbumArtist(String newArtist, String newAlbum) {
    _newAlbum = newAlbum;
    _newArtist = newArtist;
    notifyListeners();
  }

  void setTrackList(String newArtist1, String newAlbum1) {
    _newAlbum1 = newAlbum1;
    _newArtist1 = newArtist1;
    notifyListeners();
  }

  void setArtist(String artistInfo) {
    _artistInfo = artistInfo;
    notifyListeners();
  }
}
