# To run this script type "./script.sh" in terminal
flutter clean
flutter pub get
cd ios
pod install
cd ..    