##Preliminary Analysis of (2012) Violation Data

**Questions:**
- What are the overall trends of violations over time?
  - Are there "cold"/"hot" months e.g., cyclical peaks of violations?
- When will the next violation occur (by category)?


**Preliminary Look**
 
Let us look at the total violations per month by category (in 2012 only)

  - Air Pollutants & Odors
  - Animals & Pests
  - Biohazards
  - Building Conditions
  - Chemical Hazards
  - Garbage & Refuse
  - Retail Food
  - Unsanitary Conditions
  - Vegetation

**Overall Summary: {Min, Median, Mean, Max}**

```rconsole

$`Air Pollutants and Odors`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      2       2       2       2       2       2 

$`Animals and Pests`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    4.0    12.0    14.5    15.0    20.0    22.0 

$Biohazards
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.000   1.000   2.333   3.000   5.000 

$`Building Conditions`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   2.000   3.500   5.167   8.250  14.000 

$`Chemical Hazards`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.000   1.000   2.429   4.000   5.000 

$`Garbage and Refuse`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   4.00    6.75   11.00   10.50   11.50   24.00 

$`Retail Food`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1       1       1       1       1       1 

$`Unsanitary Conditions`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  2.000   3.000   5.000   6.917   7.000  26.000 

$Vegetation
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  2.000   2.500   6.000   6.091   7.500  16.000 
```

**Observed Patterns over Time:**

- Air Pollutants & Retail Food
  - first observed in December 2012
- Animals & Pests
  - inverted U-shape from May to November, peaking in August/September
- Biohazards & Chemical Hazards
  - not observed monthly
- Building Conditions
  - increasing from August into November
- Garbage & Refuse
  - peaks into July
- Unsanitary Conditions
  - peaks in June & September
- Vegetation
  - increases into the June/July
  - drops off in August
  
**Summary:**
- Summer violations: Garbage & Refuse, Unsanitary Conditions, Vegetation
- Fall violations: Building Conditions, Unsanitary Conditions
- Year-round violations: Animals & Pests, Garbage & Refuse

**Next Steps:**

- Collect data across years (observed patterns may be specific to 2012)
  - What patterns persist across years?
- Run predictions on event occurrence
