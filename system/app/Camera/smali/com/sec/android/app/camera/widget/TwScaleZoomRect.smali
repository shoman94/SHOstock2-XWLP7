.class public Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
.super Landroid/view/View;
.source "TwScaleZoomRect.java"


# static fields
.field static final LINE_WIDTH:I = 0x2

.field public static final MAX_ZOOM_LEVEL:I = 0x1e

.field public static final MAX_ZOOM_RATIO:I = 0x190

.field public static final MIN_ZOOM_RATIO:I = 0x64

.field static final TEXT_SIZE:F = 20.0f

.field public static final ZOOM_STEP:F = 10.0f


# instance fields
.field private mLastOrientation:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRect:Landroid/graphics/RectF;

.field private zoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return p1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 157
    move v0, p1

    .line 158
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 163
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 164
    const/4 v1, 0x0

    .line 174
    .local v1, retVal:I
    :goto_0
    return v1

    .line 165
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 166
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 167
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 168
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 169
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 170
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 172
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;-><init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 154
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 60
    return-void
.end method

.method init()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V

    .line 71
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 77
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 80
    :cond_0
    const/4 v5, 0x0

    .line 81
    .local v5, tempWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 82
    .local v1, hcenter:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v8, v9

    .line 83
    .local v8, wcenter:F
    const/4 v3, 0x1

    .line 85
    .local v3, offset:I
    const-string v9, "800x480"

    const-string v10, "400x240"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    const/high16 v5, 0x41a0

    .line 90
    :goto_0
    const/high16 v6, 0x41a0

    .line 92
    .local v6, textUpperMargin:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    sub-float v2, v8, v9

    .line 93
    .local v2, left:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    sub-float v7, v1, v9

    .line 94
    .local v7, top:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 95
    .local v4, right:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float v0, v1, v9

    .line 97
    .local v0, bottom:F
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    .line 99
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 101
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    add-float v10, v2, v4

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v11, v7, v0

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 103
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v10, v10

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x4170

    sub-float v10, v8, v10

    add-float v11, v1, v6

    iget v12, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v12, v12

    const/high16 v13, 0x4120

    div-float/2addr v12, v13

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    return-void

    .line 88
    .end local v0           #bottom:F
    .end local v2           #left:F
    .end local v4           #right:F
    .end local v6           #textUpperMargin:F
    .end local v7           #top:F
    :cond_1
    const/high16 v5, 0x4220

    goto/16 :goto_0
.end method

.method public setZoomValue(I)V
    .locals 0
    .parameter "currentzoomValue"

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 111
    return-void
.end method
