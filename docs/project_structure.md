## Project Structure
### Package Responsibilities:

1. **eco_ocean**:
   - The main package, responsible for implementing the game's menu, settings, and other non-gameplay related features.
   - Uses the `eco_ocean_game` package to launch and manage the actual gameplay.

2. **eco_ocean_domain_models**:
   - Contains the domain models used across the application.
   - These models represent the data and the business logic of the application.

3. **eco_ocean_entrypoint**:
   - Serves as the entry point of the application.
   - Uses the public interfaces of other packages to assemble necessary widgets at the top of the widget tree.
   - Includes configurations for different environments, such as development, testing, etc.
   - Utilizes `eco_ocean` as the starting point of the app.

4. **eco_ocean_game**:
   - Implements the core logic of the game process.
   - Distinct from the `eco_ocean` package, which handles non-game features.

5. **eco_ocean_l10n**:
   - Contains the localized texts of the application.

6. **eco_ocean_ui**:
   - Contains the assets for the game and design system (DS) components.
   - Manages all the visual elements, including images, animations, and custom UI components.

7. **eco_ocean_utils**:
   - Includes helper methods and extensions for various features to avoid code duplication across packages.
   - Provides common functionality that can be reused wherever needed.
