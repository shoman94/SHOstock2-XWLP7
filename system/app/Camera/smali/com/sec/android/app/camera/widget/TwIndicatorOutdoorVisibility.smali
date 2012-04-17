.class public Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorOutdoorVisibility.java"


# static fields
.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->init(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorOutdoorVisivility:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, attr:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f020043

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->addImageId(II)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method public setOutdoorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->replaceBackground(I)V

    goto :goto_0
.end method
