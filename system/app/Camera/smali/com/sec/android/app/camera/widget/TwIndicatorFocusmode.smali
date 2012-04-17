.class public Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorFocusmode.java"


# static fields
.field public static final FOCUS_FACE_DETECTION:I = 0x2

.field public static final FOCUS_MACRO:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->init(Landroid/util/AttributeSet;)V

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
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorFocusmode:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, attr:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7f02003f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->addImageId(II)V

    .line 50
    const/4 v1, 0x2

    const v2, 0x7f020031

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->addImageId(II)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method public setFocusmode(I)V
    .locals 1
    .parameter "focusmode"

    .prologue
    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->replaceBackground(I)V

    goto :goto_0
.end method
