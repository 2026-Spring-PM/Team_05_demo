<img width="2128" height="989" alt="image" src="https://github.com/user-attachments/assets/2be78c76-c2d3-4e6c-903c-2c0a5c2d263a" /># Farm Village Simulator (Team 05)

## Run

**[Important Note for Windows Users]**
If you are using Windows, running the game via the default Command Prompt (cmd) may cause Emoji and UI rendering issues. To ensure a seamless gameplay experience, we strongly recommend using **Windows Terminal**.

**NOTE:** The `--platform linux/amd64` flag must be used for both `docker pull` and `docker run`. The provided scripts (`run.sh`, `run_shell.sh`) already include this flag.

### (1) Pull Docker Image

Open your terminal and execute the following command to pull the required image:
```bash
docker pull --platform linux/amd64 chwoong/team_00_project:0.1.0
```
(2) Run the app
Option A — Run automatically:
```bash
bash scripts/run.sh
```
This script starts the container and immediately launches the game executable (build/main).

Option B — Enter the container first, then run manually:
```bash
bash scripts/run_shell.sh
```
This command starts the container and drops you into a bash shell. Once inside the container, you can run the application manually:
```bash
./build/main
```

Game System
(1) Controls
Movement: Use W / A / S / D keys to move. Press Q to quit the game.

Interactions: P (Plant crops), B (Summon livestock), C (Construct buildings), X (Remove/Demolish entities).

Map Environment: The map consists of various emoji tiles (e.g., 🌲 Forest, 🌊 River, 🤠 Player).

(2) Player & Level System
The player starts at Level 1 with 500 CR (Credits) and a limited amount of daily Action Points.

Leveling Up: Players gain EXP by harvesting crops, collecting animal products, slaughtering livestock, and crafting items.

As the player's level increases, new high-tier seeds, livestock, and advanced crafting buildings (e.g., Cheese Factory, Textile Mill) are unlocked in the shop.

Bonus: Fully consuming all daily Action Points rewards the player with a bonus EXP.

(3) Crops
Types (7 variants): Rice, Potato, Carrot, Corn, Tomato, Strawberry, and Watermelon.

Growth System: Crops grow over a set number of days. They must be fully grown to be harvested for items and EXP.

Watering: Crops are vulnerable to drought. If a Stage 1 Drought occurs, growth stops unless the player manually waters them using '💧 Water' purchased from the shop.

(4) Livestock
Types (7 variants): Chicken(🐔), Pig(🐷), Cow(🐮), Sheep(🐑), Duck(🦆), Goat(🐐), and Horse(🐴).

Life Cycle: Livestock spawn from eggs and visually transition from a baby phase (e.g., 🐥, ☁️) to an adult phase.

Interactions: Once fully grown, players can interact with them daily to collect specific by-products (Eggs, Milk, Wool, Horsehair, etc.). Alternatively, players can choose to slaughter them to yield meat and a massive amount of EXP.

(5) Buildings & Crafting
Players can construct buildings on empty tiles using CR to process basic resources into high-value goods.

Lv.1 House: Allows the player to sleep, advancing to the next day and restoring Action Points.

Lv.2 Shop: Buy seeds, livestock eggs, and tools. Sell inventory items (supports bulk buying/selling).

Lv.3 Cheese Factory: Process Milk and Goat Milk into Premium Cheese and Goat Cheese.

Lv.4 Bakery: Bake Soft Bread, Potato Bread, and Special Strawberry Cake using crops and animal products.

Lv.5 Barn: Mix Corn and Carrots to craft Special Animal Feed.

Lv.6 Textile Mill: Craft Premium Padded Jackets and Traditional Hats (Gat) using Wool, Duck Feathers, and Horsehair.

Lv.7 Winery: Ferment Strawberries and Watermelons in oak barrels to produce Premium Fruit Wine.

(6) Random Events (Disasters & Environment)
Each day, there is a chance for unpredictable weather events that significantly affect farm management.

Drought & Heatwave:

Stage 1 (Drought): Crop growth is halted. Players must manually use '💧 Water' from their inventory to keep them alive.

Stage 2 (Heatwave): All planted crops are instantly destroyed, and the scorched earth prevents new planting.

Severe Flood: A river overflows, submerging the eastern tiles with water (🌊). Entering or planting in this area becomes impossible. When the flood recedes, the terrain and roads are automatically restored.

Fertile Land: Often appearing after a flood, certain areas turn into highly fertile soil (🟩). Harvesting crops on these tiles yields double the items and EXP.
