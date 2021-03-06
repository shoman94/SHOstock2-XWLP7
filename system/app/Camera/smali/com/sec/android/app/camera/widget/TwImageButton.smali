.class public Lcom/sec/android/app/camera/widget/TwImageButton;
.super Landroid/widget/RelativeLayout;
.source "TwImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1


# instance fields
.field protected mButtonText:Landroid/widget/TextView;

.field public mDim:Z

.field protected mDimBackground:I

.field protected mDimImage:I

.field public mDisabled:Z

.field private mForward:Landroid/graphics/Matrix;

.field private final mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mImageButton:Landroid/widget/ImageButton;

.field private mIsRotateAnimationEnabled:Z

.field public mLastOrientation:I

.field protected mNormalBackground:I

.field protected mNormalImage:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPopupTextLayout:Landroid/widget/LinearLayout;

.field protected mPressedBackground:I

.field protected mPressedImage:I

.field private mReverse:Landroid/graphics/Matrix;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mRotation:I

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field protected mTextColor:I

.field protected mTextSize:F

.field private pts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v1, 0x4140

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v7, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v7, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 138
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v0, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 100
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 101
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 102
    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 7
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"
    .parameter "drawRotateAnim"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 117
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 118
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 119
    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 125
    invoke-virtual {p0, p5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setRotateAnimation(Z)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 70
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 424
    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 427
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    .line 428
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    .line 431
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 433
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 78
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwImageButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwImageButton;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->rotateButton(II)V

    return-void
.end method

.method private rotateButton(II)V
    .locals 7
    .parameter "orientation"
    .parameter "lastOrientation"

    .prologue
    const/16 v1, 0x10e

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 505
    if-ne p1, p2, :cond_0

    .line 523
    :goto_0
    return-void

    .line 507
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-ne v0, v1, :cond_2

    .line 508
    const/16 p1, 0x168

    .line 513
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 509
    :cond_2
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-nez v0, :cond_1

    .line 510
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    goto :goto_1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 551
    move v0, p1

    .line 552
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 557
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 558
    const/4 v1, 0x0

    .line 568
    .local v1, retVal:I
    :goto_0
    return v1

    .line 559
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 560
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 561
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 562
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 563
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 564
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 566
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton$1;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 547
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setRotateAnimation(Z)V

    .line 548
    return-void
.end method


# virtual methods
.method public SetClickSoundDisabled()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public SetClickSoundEnabled()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method protected actionInBounds(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 283
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getHeight()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTextLayout(IIIIII)V
    .locals 3
    .parameter "xAxis"
    .parameter "yAxis"
    .parameter "gravity"
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    int-to-float v2, p4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 186
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 187
    return-void
.end method

.method protected createButton()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    .line 191
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 495
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->pts:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 501
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getNormalImage()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    return v0
.end method

.method public getPressedImage()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    return v0
.end method

.method public getRotateAnimation()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwImageButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, attr:Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 157
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 158
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    .line 160
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 161
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 162
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 320
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 341
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v4, :cond_1

    move v1, v2

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v4, :cond_2

    move v1, v2

    .line 346
    goto :goto_0

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v4, :cond_3

    .line 350
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v4, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 352
    .local v1, res:Z
    if-eqz v1, :cond_0

    .line 357
    .end local v1           #res:Z
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v1, v3

    .line 385
    goto :goto_0

    .line 359
    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 360
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    goto :goto_1

    .line 364
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 365
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 366
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 370
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    .line 371
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 372
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 378
    .end local v0           #ev:Landroid/view/MotionEvent;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refreshButtonImage()V
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 300
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 307
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_2

    .line 308
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 312
    :goto_1
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 310
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public registerPopupTextLayout(Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 151
    return-void
.end method

.method public setBackgroundResources(III)V
    .locals 0
    .parameter "normalBackground"
    .parameter "pressedBackground"
    .parameter "dimmedBackground"

    .prologue
    .line 271
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 272
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 273
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    .line 274
    return-void
.end method

.method protected setButtonImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 398
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    .line 199
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDim:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 202
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    .line 207
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 208
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDimBackground(I)V
    .locals 0
    .parameter "dimmedBackground"

    .prologue
    .line 267
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimBackground:I

    .line 268
    return-void
.end method

.method public setDimImage(I)V
    .locals 0
    .parameter "dimmedImage"

    .prologue
    .line 255
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    .line 256
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 216
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    goto :goto_0
.end method

.method public setImageResources(III)V
    .locals 0
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    .line 277
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 278
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 279
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimImage:I

    .line 280
    return-void
.end method

.method public setNormalBackground(I)V
    .locals 0
    .parameter "normalBackground"

    .prologue
    .line 259
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 260
    return-void
.end method

.method public setNormalImage(I)V
    .locals 0
    .parameter "normalImage"

    .prologue
    .line 247
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 248
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 334
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 338
    return-void
.end method

.method public setPressed()V
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    if-eqz v0, :cond_0

    .line 295
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public setPressedBackground(I)V
    .locals 0
    .parameter "pressedBackground"

    .prologue
    .line 263
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 264
    return-void
.end method

.method public setPressedImage(I)V
    .locals 0
    .parameter "pressedImage"

    .prologue
    .line 251
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 252
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mIsRotateAnimationEnabled:Z

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    .line 447
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mForward:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLeft:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mBottom:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTop:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mReverse:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRotation:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mRight:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mLeft:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mBottom:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTop:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 465
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 1
    .parameter "soundEffectsEnabled"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 412
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method protected showToolTip(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    :cond_0
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
