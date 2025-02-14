# CountryInfo

CountryInfo is a mobile app built with **Flutter** that allows users to:
- View a list of countries.
- See detailed information about a selected country (such as states, country code, flag, and capital).
- Change theme styles (e.g., light/dark mode).

---

## Features
- **Country List**: Browse a list of all countries.
- **Country Details**: View detailed information about a selected country, including:
  - Flag
  - Capital
  - Country Code
  - Region
  - Population
  - Timezone
- **Theme Switching**: Toggle between light and dark themes.
- **Responsive Design**: Works seamlessly on both Android and iOS devices.


## Project Setup

### Prerequisites
- **Flutter SDK**: Ensure you have Flutter installed. If not, follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).
- **IDE**: Use [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/) with the Flutter and Dart plugins installed.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/ebel-frank/hng_country_info_app.git
2. Navigate to the project directory:
   ```bash
   cd hng_country_info_app
3. Install dependencies:
   ```bash
   flutter pub get
4. Connect a device and Run the app:
   ```bash
   flutter run

### Dependencies/Packages Used
The app uses the following Flutter packages:

- http: For making API calls to fetch country data.
- get: For state management, navigation, and theme management.
- cached_network_image: For caching and displaying country flags.
- shared_preferences: For persisting theme preferences.
- shimmer: For loading effect
- azlistview_plus: For sorting the countries 

You can find all dependencies in the pubspec.yaml file.

## API Used
The app fetches country data from the https://restcountries.com/v3.1/all.

## Contributing
Contributions are welcome! If you'd like to contribute, please follow these steps:
1. Fork the repository
2. Create a new branch for your feature or bugfix
3. Commit your changes
4. Push to the branch
5. Open a pull request

## Demo
Test the app directly on Appetize.io:
👉 [HNG Mobile App on Appetize](https://appetize.io/app/b_7lgi7lcj7erxx5hrbtar2y7v6q)

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

