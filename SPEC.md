# TravelMate - Specification Document

## 1. Project Overview

**Project Name:** TravelMate  
**Project Type:** Flutter Mobile Application (iOS-style Travel Planner)  
**Core Functionality:** A premium travel planning app that allows users to create trips, add destinations, manage activities, and track trip completion progress with a beautiful Apple iOS-inspired glassmorphism UI.

---

## 2. Technology Stack & Choices

### Framework & Language
- **Framework:** Flutter 3.x
- **Language:** Dart
- **Minimum SDK:** iOS 12.0+
- **Null Safety:** Enabled

### Key Libraries/Dependencies
- `provider: ^6.1.1` - State management
- `intl: ^0.19.0` - Date formatting
- `uuid: ^4.3.3` - Unique ID generation

### State Management
- **Provider** with ChangeNotifier pattern
- TripProvider for centralized state management

### Architecture Pattern
- **Clean Architecture** with clear separation:
  - `models/` - Data models (Trip, Destination, Activity)
  - `providers/` - State management (TripProvider)
  - `screens/` - UI screens
  - `widgets/` - Reusable widgets
  - `theme/` - App theme and styling

---

## 3. Core Features
1 Feature List

###. **Trip Management**
   - Create new trips with name, description, and date range
   - Edit existing trips
   - Delete trips
   - View all trips on home screen

2. **Destination Management**
   - Add destinations to trips
   - Edit destination details (name, location, notes)
   - Delete destinations

3. **Activity Management**
   - Add activities to destinations
   - Toggle activity completion status
   - Track completion progress

4. **Progress Tracking**
   - Calculate trip completion percentage based on completed activities
   - Visual progress indicator on trip cards
   - Dynamic UI updates

### Navigation
- Named routes with Navigator
- Cupertino-style page transitions
- Hero animations between screens

---

## 4. UI/UX Design Direction

### Overall Visual Style
- **Apple iOS 17 inspired** design language
- **Glassmorphism** effects with blurred backgrounds
- **Soft gradients** throughout the app
- Minimal, elegant, and airy aesthetic
- Premium feel with smooth animations

### Color Scheme
- **Primary Gradient:** Deep Blue (#1565C0) → Teal Accent (#00BFA5)
- **Background:** Soft Blue → Light Gray → Light Teal blend
- **Glass Surface:** White with 15-25% opacity, blur effect
- **Text:** Primary (#212121), Secondary (reduced opacity)

### Layout Approach
- Single column layout with centered constrained design
- Responsive padding using MediaQuery
- Card-based UI with glass effects
- Floating action buttons for primary actions

### Component Styling
- Trip Cards: Glass effect, 24 border radius, progress indicator
- Forms: Glass containers with rounded corners
- Buttons: Gradient fills with soft shadows
- Transitions: CupertinoPageRoute for smooth navigation

---

## 5. File Structure

```
lib/
├── main.dart
├── models/
│   ├── activity.dart
│   ├── destination.dart
│   └── trip.dart
├── providers/
│   └── trip_provider.dart
├── screens/
│   ├── home_screen.dart
│   ├── trip_details_screen.dart
│   ├── add_edit_trip_screen.dart
│   ├── add_edit_destination_screen.dart
│   └── add_edit_activity_screen.dart
├── widgets/
│   ├── glass_card.dart
│   ├── gradient_background.dart
│   ├── glass_text_field.dart
│   ├── gradient_button.dart
│   └── activity_tile.dart
└── theme/
    └── app_theme.dart
```

---

## 6. Screens Overview

1. **Home Screen** - List of all trips with glass cards and progress indicators
2. **Trip Details Screen** - Trip info with expandable destinations and activities
3. **Add/Edit Trip Screen** - Form for creating/editing trips
4. **Add/Edit Destination Screen** - Form for destination details
5. **Add/Edit Activity Screen** - Simple form for activity name

---

## 7. Animations

- CupertinoPageRoute transitions between screens
- Hero animations for trip cards
- AnimatedContainer for state changes
- Animated checkbox for activity completion
- Smooth list animations for add/remove operations
- Scale animation on button press

---

## 8. Responsive Design

- Adaptive padding based on screen width
- Centered constrained layout (maxWidth: 600)
- Flexible widgets that scale properly
- Proper spacing hierarchy (8/16/24 rule)

