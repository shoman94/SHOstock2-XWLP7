.class Landroid/hardware/SensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[F

.field private mV:[F

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x18

    .line 2044
    iput-object p1, p0, Landroid/hardware/SensorManager$LmsFilter;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/SensorManager$LmsFilter;->mV:[F

    .line 2041
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    .line 2045
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    .line 2046
    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 23
    .parameter "time"
    .parameter "in"

    .prologue
    .line 2049
    move/from16 v17, p3

    .line 2050
    .local v17, v:F
    const v15, 0x3089705f

    .line 2051
    .local v15, ns:F
    move-wide/from16 v0, p1

    long-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3089705f

    mul-float v16, v19, v20

    .line 2052
    .local v16, t:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mV:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v20, v0

    aget v18, v19, v20

    .line 2053
    .local v18, v1:F
    sub-float v19, v17, v18

    const/high16 v20, 0x4334

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 2054
    const/high16 v19, 0x43b4

    sub-float v17, v17, v19

    .line 2062
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    .line 2063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 2064
    const/16 v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    .line 2065
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mV:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v20, v0

    aput v17, v19, v20

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v20, v0

    aput v16, v19, v20

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mV:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0xc

    aput v17, v19, v20

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0xc

    aput v16, v19, v20

    .line 2074
    const/4 v6, 0x0

    .local v6, E:F
    move v5, v6

    .local v5, D:F
    move v4, v6

    .local v4, C:F
    move v3, v6

    .local v3, B:F
    move v2, v6

    .line 2075
    .local v2, A:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ge v13, v0, :cond_3

    .line 2076
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v14, v19, v13

    .line 2077
    .local v14, j:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mV:[F

    move-object/from16 v19, v0

    aget v8, v19, v14

    .line 2078
    .local v8, Z:F
    const/high16 v19, 0x3f00

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v20, v0

    aget v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v21, v0

    add-int/lit8 v22, v14, 0x1

    aget v21, v21, v22

    add-float v20, v20, v21

    mul-float v19, v19, v20

    sub-float v7, v19, v16

    .line 2079
    .local v7, T:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v19, v0

    aget v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$LmsFilter;->mT:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x1

    aget v20, v20, v21

    sub-float v11, v19, v20

    .line 2080
    .local v11, dT:F
    mul-float/2addr v11, v11

    .line 2081
    mul-float v19, v8, v11

    add-float v2, v2, v19

    .line 2082
    mul-float v19, v7, v11

    mul-float v19, v19, v7

    add-float v3, v3, v19

    .line 2083
    mul-float v19, v7, v11

    add-float v4, v4, v19

    .line 2084
    mul-float v19, v7, v11

    mul-float v19, v19, v8

    add-float v5, v5, v19

    .line 2085
    add-float/2addr v6, v11

    .line 2075
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2055
    .end local v2           #A:F
    .end local v3           #B:F
    .end local v4           #C:F
    .end local v5           #D:F
    .end local v6           #E:F
    .end local v7           #T:F
    .end local v8           #Z:F
    .end local v11           #dT:F
    .end local v13           #i:I
    .end local v14           #j:I
    :cond_2
    sub-float v19, v18, v17

    const/high16 v20, 0x4334

    cmpl-float v19, v19, v20

    if-lez v19, :cond_0

    .line 2056
    const/high16 v19, 0x43b4

    add-float v17, v17, v19

    goto/16 :goto_0

    .line 2087
    .restart local v2       #A:F
    .restart local v3       #B:F
    .restart local v4       #C:F
    .restart local v5       #D:F
    .restart local v6       #E:F
    .restart local v13       #i:I
    :cond_3
    mul-float v19, v2, v3

    mul-float v20, v4, v5

    add-float v19, v19, v20

    mul-float v20, v6, v3

    mul-float v21, v4, v4

    add-float v20, v20, v21

    div-float v10, v19, v20

    .line 2088
    .local v10, b:F
    mul-float v19, v6, v10

    sub-float v19, v19, v2

    div-float v9, v19, v4

    .line 2089
    .local v9, a:F
    const v19, 0x3da3d70a

    mul-float v19, v19, v9

    add-float v12, v10, v19

    .line 2092
    .local v12, f:F
    const v19, 0x3b360b61

    mul-float v12, v12, v19

    .line 2093
    const/16 v19, 0x0

    cmpl-float v19, v12, v19

    if-ltz v19, :cond_6

    move/from16 v19, v12

    :goto_2
    const/high16 v20, 0x3f00

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_4

    .line 2094
    const/high16 v19, 0x3f00

    add-float v19, v19, v12

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v12, v19

    const/high16 v20, 0x3f80

    add-float v12, v19, v20

    .line 2095
    :cond_4
    const/16 v19, 0x0

    cmpg-float v19, v12, v19

    if-gez v19, :cond_5

    .line 2096
    const/high16 v19, 0x3f80

    add-float v12, v12, v19

    .line 2097
    :cond_5
    const/high16 v19, 0x43b4

    mul-float v12, v12, v19

    .line 2098
    return v12

    .line 2093
    :cond_6
    neg-float v0, v12

    move/from16 v19, v0

    goto :goto_2
.end method
