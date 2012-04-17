.class public Lcom/sec/android/app/camera/widget/TwIndicatorResolution;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorResolution.java"


# static fields
.field public static final CAMCORDER_RESOLUTION_1280X720:I = 0x10

.field public static final CAMCORDER_RESOLUTION_176X144:I = 0x14

.field public static final CAMCORDER_RESOLUTION_1920X1080:I = 0xf

.field public static final CAMCORDER_RESOLUTION_320X240:I = 0x13

.field public static final CAMCORDER_RESOLUTION_640X480:I = 0x12

.field public static final CAMCORDER_RESOLUTION_720X480:I = 0x11

.field public static final RESOLUTION_0_1M:I = 0xd

.field public static final RESOLUTION_0_3M:I = 0xb

.field public static final RESOLUTION_1_3M:I = 0xa

.field public static final RESOLUTION_2M:I = 0x8

.field public static final RESOLUTION_3_2M:I = 0x6

.field public static final RESOLUTION_5M:I = 0x4

.field public static final RESOLUTION_7M:I = 0x1

.field public static final RESOLUTION_8M:I = 0x0

.field public static final RESOLUTION_W0_1M:I = 0xe

.field public static final RESOLUTION_W0_4M:I = 0xc

.field public static final RESOLUTION_W1_5M:I = 0x9

.field public static final RESOLUTION_W2_4M:I = 0x7

.field public static final RESOLUTION_W4M:I = 0x5

.field public static final RESOLUTION_W5_7M:I = 0x3

.field public static final RESOLUTION_W6_5M:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->init(Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->init(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorResolution:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020051

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 71
    const v1, 0x7f020050

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 74
    const v1, 0x7f020058

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 77
    const v1, 0x7f020057

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 80
    const v1, 0x7f02004d

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 83
    const/4 v1, 0x5

    const/4 v2, 0x5

    const v3, 0x7f020056

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 86
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f02004c

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 89
    const/4 v1, 0x7

    const/4 v2, 0x7

    const v3, 0x7f020055

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 92
    const/16 v1, 0x8

    const/16 v2, 0x8

    const v3, 0x7f02004a

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 95
    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f020054

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 98
    const/16 v1, 0xa

    const/16 v2, 0xa

    const v3, 0x7f020049

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 101
    const/16 v1, 0xb

    const/16 v2, 0xb

    const v3, 0x7f020045

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 104
    const/16 v1, 0xc

    const/16 v2, 0xc

    const v3, 0x7f020053

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 107
    const/16 v1, 0xd

    const/16 v2, 0xd

    const v3, 0x7f020044

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 110
    const/16 v1, 0xe

    const/16 v2, 0xe

    const v3, 0x7f020052

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 113
    const/16 v1, 0xf

    const/16 v2, 0xf

    const v3, 0x7f020048

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 116
    const/16 v1, 0x10

    const/16 v2, 0x10

    const v3, 0x7f020046

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 119
    const/16 v1, 0x11

    const/16 v2, 0x11

    const v3, 0x7f02004f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 122
    const/16 v1, 0x12

    const/16 v2, 0x12

    const v3, 0x7f02004e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 125
    const/16 v1, 0x13

    const/16 v2, 0x13

    const v3, 0x7f02004b

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 128
    const/16 v1, 0x14

    const/16 v2, 0x14

    const v3, 0x7f020047

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->addImageId(II)V

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method public setResolution(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 136
    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->replaceBackground(I)V

    goto :goto_0
.end method
