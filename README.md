# Pick Faces Rearrangement
## Executive Summary
This project focuses on increasing storage capacity and improving warehouse efficiency through **inventory segmentation** and **demand variability analysis**. As the warehouse approaches its storage limit, a transition toward a double-deep racking system was proposed to support future growth while maintaining operational performance.
To support this transformation, multiple analytical techniques were integrated, including **ABC–XYZ Matrix Classification** and **Market Basket Analysis (MBA)**. The outcome provides a data-driven slotting strategy, where fast-moving and operationally critical products are prioritized for optimal placement, while frequently picked-together SKUs are positioned closer to improve picking productivity and warehouse flow.

## Key Achievements and Methodologies Used
* Combined **ABC Analysis** and **XYZ Analysis** into an **ABC–XYZ Matrix** to support more effective slotting and inventory allocation decisions.
* Applied **Market Basket Analysis (MBA)** using the Apriori algorithm to identify products frequently picked together.
* Developed a **pick-face rearrangement strategy** by considering SKU movement, demand stability, and product affinity.
* Identified potential **pick-face shortfalls and replenishment risks** through daily requirement analysis.

## Business Context
The client is facing insufficient storage capacity to support projected demand for the upcoming years.
* **Problem**: Warehouse congestion during peak periods and insufficient storage capacity to support the next-year demand.
* **Goal**: Increase warehouse storage capacity to support the next three years of growth while improving the current picking efficiency.

## Data-Driven Insight and Bottleneck Identification
### 1. Inventory Segmentation (ABC-XYZ Analysis)
* Observation: The largest segment by far is "CZ" with 149 items. This represents nearly 40% of the total SKU count that is both low-value and unpredictable. There are 69 "A-class" items are the high-revenue drivers of the business. 58 of them (AX items) are the the revenue generators of the business, as they are the most stable and predictable items in terms of demand.
* Bottleneck: The 28 "CX" items are low value but high volatility, if these items scattered, they would create "traffic jams" in the aisles and affecting picker to reach the high-value AX items.
* Insight: The high number of CZ items (149) suggest that the current storage capacity bottleneck isn't caused by "too much business", but by "too much slow-moving variety".
<img width="683" height="573" alt="image" src="https://github.com/user-attachments/assets/cb427986-57ab-4141-95ae-09211ab5ead1" />

### 2. Pick Face Shortfall Risk
* Observation: A total of 720 pick faces are available after implementing double-deep racking, while the current requirement is 661 pick faces, indicating sufficient storage capacity under planned conditions.
* Bottleneck: There is a 2.45% probability that pick faces will be insufficient to meet daily demand, resulting in mid-picking replenishment and potential disruption to picking operations.
* Insight: The pick face design is based on a tiered service level creates a controlled trade-off between space efficiency and operational risk, where lower-priority items are more likely to trigger replenishment.

## Recommendations
1. Relocate the 101 AX and BX items to the most accessible pick-face locations near loading docks to minimize picker travel time.
2. Implement a zone-based slotting strategy:
* Zone 1: AX, BX
* Zone 2: AZ, BY, CX
* Zone 3: BZ, CY, CZ
3. Conduct quarterly reviews of pick-face allocation to ensure warehouse layout remains aligned with changing demand patterns.
4. Monitor products with high demand variability to reduce the likelihood of pick-face shortages and replenishment disruptions.

***Note: The data in this repository has been anonymized to protect client confidentiality.***
