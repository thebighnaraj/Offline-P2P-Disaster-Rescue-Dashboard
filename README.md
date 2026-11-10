## 🌐 Visit Website

**Live Demo:**  
https://fairy-beyond-reproduction-concentrate.trycloudflare.com

Or click here:  
[🚀 Visit Website](https://fairy-beyond-reproduction-concentrate.trycloudflare.com)


**app demo:**
https://resilink.ai.studio/


# 🚨 RESILINK — Coastal Odisha P2P Disaster Rescue & Hazard Mapping Network

A resilient, real-time frontend web dashboard designed for disaster first responders and emergency dispatchers. Built specifically for **Coastal Odisha** emergency response (super-cyclones, coastal storm surges, flash floods, and landslides).

The map opens centered over **Coastal Odisha (`[19.9, 85.5]`, zoom 8)**, highlighting the 8 frontline coastal districts with live urgency boundaries, live responder tracking, P2P mesh node coverage, and offline capabilities.

---

## ⚡ Tech Stack

- **Framework**: [React 18](https://react.dev/) + [Vite](https://vitejs.dev/) + [TypeScript](https://www.typescriptlang.org/)
- **Mapping**: [Leaflet](https://leafletjs.com/) & [react-leaflet](https://react-leaflet.js.org/) with OpenStreetMap tiles
- **Offline GeoJSON**: `/public/odisha-coastal-districts.geojson` (district boundaries work 100% offline)
- **Styling**: [Tailwind CSS](https://tailwindcss.com/)
- **Icons**: [Lucide React](https://lucide.dev/)
- **No Login Required**: Instant field access for hackathons and rapid disaster response

---

## 🌊 Coastal Odisha Region Focus

### 1. Highlighted Coastal Districts (8 Districts)
The map highlights all 8 frontline coastal districts:
1. **Ganjam** (Gopalpur / Berhampur sea-wall)
2. **Gajapati** (Mohana / Paralakhemundi hill roads)
3. **Jagatsinghpur** (Paradeep port / Ersama cyclone belt)
4. **Puri** (Puri beach / Chilika lagoon margin)
5. **Khordha** (Bhubaneswar / Khurda central command)
6. **Kendrapara** (Rajnagar / Bhitarkanika tidal belt)
7. **Bhadrak** (Dhamra port / Chandbali)
8. **Balasore** (Chandipur / coastal embankment)

- **Permanent Labels**: District names are permanently rendered on the map.
- **Urgency Dynamic Coloring**:
  - 🟢 **Green**: 0 active SOS (Normal)
  - 🟠 **Orange**: 1 to 4 active SOS (Moderate)
  - 🔴 **Red**: 5 or more active SOS (Critical Urgency)
  - Boundary colors and fills update dynamically in real time as SOS alerts arrive or are resolved.
- **Interactive Filtering & Zoom**:
  - District dropdown in the panel and clickable district polygons on the map.
  - Selecting a district smoothly fits the map bounds to that district and filters the SOS, Hazard, Shelter, and Responder lists.
- **District Summary Card**:
  - When a district is active, a summary card displays its urgency tier, active SOS count, hazard count, and open shelter capacity.

---

## 📍 Live Location & Advanced Tracking

### 1. Responders Layer (Blue Markers)
- Visualizes mobile field units (NDRF, ODRAF, Fire Rescue, Coast Guard).
- Fetched on load via `GET /v1/responders`.
- Streamed in real-time over WebSocket as:
  ```json
  {
    "event": "responder_move",
    "data": {
      "id": "resp-1",
      "name": "Insp. Rajesh Swain",
      "team": "ODRAF Unit 4 - Ganjam Rescue",
      "lat": 19.2850,
      "lng": 84.8720,
      "updated_at": "2026-11-10T05:20:00Z"
    }
  }
  ```
- **Faint Position Trail**: Draws a dashed breadcrumb polyline of the last 10 reported positions.
- **Smooth Animation**: Markers transition smoothly as coordinates update.

### 2. Mesh Nodes Layer (Off by Default)
- Toggleable **"Mesh nodes"** layer displaying small blue dots for phones that relayed a P2P heartbeat.
- Allows judges to inspect wireless mesh coverage across coastal villages and cell dead-zones.

### 3. Last Updated & Stale Pin Fading
- Every popup displays: `"last updated X seconds ago"`.
- If a pin has not received an update for **10 minutes**, it automatically fades into a desaturated state and is labeled with a warning:
  `⚠️ Last known location (No update for >10 min)`.

### 4. "Locate Me" Button
- Header button using the browser Geolocation API (`navigator.geolocation.getCurrentPosition`).
- Centers the map on the responder's own physical device, rendering a pulsing blue beacon and accuracy perimeter.

### 5. Coastal Simulation in Mock Mode
- Automatically simulates responders moving along highway routes in **Ganjam, Gajapati, and Jagatsinghpur** every few seconds.
- In **Demo Mode**, periodically pushes simulated cyclone/surge SOS distress alerts with pulse radar animations.

---

## 🚀 How to Run

```bash
# 1. Install dependencies
npm install

# 2. Start the development server
npm run dev

# Or on Windows, double-click:
run.bat
```

Open **`http://localhost:3000`** in your browser.
