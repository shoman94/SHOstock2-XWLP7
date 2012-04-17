.class public Lcom/sec/android/app/camera/widget/TwIndicatorFocus;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorFocus.java"


# static fields
.field private static final AF_MATRIX_FAIL:I = 0x2

.field private static final AF_MATRIX_NOT_READY:I = 0x0

.field private static final AF_MATRIX_READY:I = 0x1

.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->init(Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->init(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorFocus:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f0201bc

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->addImageId(II)V

    .line 55
    const v1, 0x7f0201be

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->addImageId(II)V

    .line 57
    const v1, 0x7f0201bb

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->addImageId(II)V

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "focusState"

    .prologue
    .line 64
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->replaceBackground(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->replaceBackground(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->replaceBackground(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
