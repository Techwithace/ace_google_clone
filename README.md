# Ace Google Clone

**Ace Google Clone** is a Flutter-based web application that mimics the core features of the Google search engine. It allows users to perform searches using the Google Custom Search JSON API. This project serves as a learning tool to understand API integration, responsive UI design, and the use of reusable widgets in Flutter.

---

## Features
- **Google Search Functionality**: Users can perform searches and retrieve results from Google using the Custom Search JSON API.
- **Dummy Data Fallback**: In case the API usage limit is exhausted, the app will switch to a set of pre-defined dummy data to continue the functionality.
- **Responsive UI**: The layout adjusts dynamically for various screen sizes (mobile, tablet, desktop) to ensure an optimal user experience.
- **Modular & Reusable Widgets**: Components are built as reusable widgets, making the codebase easier to maintain and scale.
- **Search Filters**: Ability to filter search results by categories such as "All", "Images", "Videos", "News", etc.
- **Pagination**: Browse through multiple pages of search results using a pagination system.

---

## Technologies Used
- **Flutter (Dart)**: For building the cross-platform mobile/web application.
- **Google Custom Search API**: To fetch search results from Google.
- **HTTP Package**: To make network requests to the Google Custom Search API.
- **JSON Parsing**: For handling the API responses and displaying them on the app.

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/ace_google_clone.git
cd ace_google_clone
```

### 2. Install Dependencies

Make sure you have Flutter installed. Run the following command to install all the required dependencies:

```bash
flutter pub get
```

### 3. Configure Google Custom Search API

- Go to the [Google Custom Search Engine](https://cse.google.com/cse/) and create your own search engine.
- Enable the **Custom Search JSON API** in the [Google Cloud Console](https://console.cloud.google.com/).
- Get your **API Key** and **Search Engine ID (CX)** from the Google Cloud Console.
- Open the `lib/widgets/keys.dart` file and insert your API key and Search Engine ID as follows:

```dart
const String apiKey = 'YOUR_GOOGLE_API_KEY';
const String contextKey = 'YOUR_SEARCH_ENGINE_ID';
```

### 4. Run the App

To run the app on an emulator or device, use the following command:

```bash
flutter run
```

---

## Key Features

### Google Search:
- The app fetches search results from Google based on the user's query using the Google Custom Search JSON API.
  
### Dummy Data Fallback:
- If the API usage limit is exceeded, the app will default to local dummy data stored in `api_json.dart` to simulate search results and maintain the app's functionality.
  
### Responsive Design:
- The UI dynamically adjusts for different screen sizes, ensuring that the app is usable across devices like smartphones, tablets, and desktops.
  
### Pagination:
- Users can navigate through multiple pages of search results with a "Next" and "Previous" button.

---

## How to Contribute

1. Fork the repository.
2. Clone your fork and create a new branch for your feature or fix.
3. Make your changes and write tests to cover them.
4. Open a pull request to the main repository.

---

## Demo

A short demo video of the app's functionality is available in the repository to give you an overview of how the app works and the features it offers.
[Watch the demo video](demo.mp4)


---

## Future Improvements
- **Improved Responsiveness**: Additional optimizations for complex layouts, especially for the footer on the web.
- **Better Caching**: Implement more efficient caching for API responses.
- **Additional Search Categories**: Support for more search categories like "Books", "Maps", etc.
- **UI Enhancements**: Add animations and further refine the user experience.
