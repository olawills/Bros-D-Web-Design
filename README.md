# Bros-D Profession Web

## Preview


A responsive Flutter application that connects users with various professional services like construction, home services, electronics repair, and more.
Overview
Brys is a service marketplace platform that allows users to:

Find and hire local artisans and professionals
Browse different service categories
View top-rated professionals
Contact the platform team

Features

1. User Interface Components

Header Section

Search functionality
Welcome message with user name
Date display
Notification icon
User profile icon

Navigation Bar

Brand logo (Bros-D)
Main navigation links (Home, Product, Company, Help)
App download button

Hero Section

Information about artisan onboarding
List of available service types
Mobile app screenshots
App download links

Service Categories

Grid layout of service categories with icons
Categories include Construction, Domestic Services, Electronics, etc.
Each category has an add button for quick access

Top Professionals

Horizontally scrollable list of top-rated professionals
Profile images, names, and ratings
Service type indicator

Contact Section

"Speak to our Team" form
Map with company location
Fast links for quick navigation
Social media links

2. Responsive Design
   The application adapts to different screen sizes:

Desktop Layout

Side-by-side sections
Full feature display
Expanded navigation

Tablet Layout

Adjusted spacing and sizing
Reorganized sections for medium screens

Mobile Layout

Stacked layout for small screens
Collapsible navigation
Touch-friendly elements

Implementation Details
Key Widgets

Service Category Grid

Displays service categories in a responsive grid
Each card shows an image, title, and add button
Green accent colors for branding

Professional Cards

Shows professional information with profile image
Displays star ratings
Indicates service specialization

Contact Form

Input fields for name, email, subject, and message
Submit button with accent color
Integrated with company information

Responsive Footer

Adapts to different screen sizes
Contains contact form, map, and quick links
Social media integration
Privacy policy and terms links

Important Utility Functions

\_navItem: Creates navigation menu items
\_bulletPoint: Creates formatted bullet points
\_categoryItem: Builds service category cards
\_professionalCard: Creates professional profile cards
\_contactField: Builds form input fields
\_footerLink: Creates footer navigation links
\_socialIcon: Builds social media icons

Assets
The application requires the following assets:

Images

Service category icons (construction.png, domestic.png, etc.)
Professional profile pictures
App screenshots (phone1.png, phone2.png)
Company logo (bros-d.png)
Map image (map.png)
Social media icons

Typography

Various font weights for hierarchy
Consistent sizing across the application

Getting Started

Ensure Flutter is installed and set up
Clone the repository
Add required assets to the assets folder
Configure the pubspec.yaml file to include assets:
yaml

```
flutter:
  assets:
    - assets/images/
```

Then go to your Terminal and type to run the web app

```
flutter run --web
```
