.class public Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;
.super Landroid/widget/RelativeLayout;
.source "TwTouchFocusRectView.java"


# static fields
.field private static final DELAY_IN_MILLI:I = 0x14

.field private static final DELTA:I = 0x8

.field public static final INCR_VAL:I = 0x80

.field private static final LEFT_BOTTOM_ID:I = 0x385

.field private static final LEFT_TOP_ID:I = 0x384

.field private static final RIGHT_BOTTOM_ID:I = 0x387

.field private static final RIGHT_TOP_ID:I = 0x386


# instance fields
.field private mFocusFailImageView:Landroid/widget/ImageView;

.field private mFocusSuccessImageView:Landroid/widget/ImageView;

.field private mLeftBottomImage:I

.field private mLeftBottomImageView:Landroid/widget/ImageView;

.field private mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLeftTopImage:I

.field private mLeftTopImageView:Landroid/widget/ImageView;

.field private mLeftTopMargin:I

.field private mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mPhysicalRectHeight:I

.field private mPhysicalRectWidth:I

.field private mRectDistance:I

.field private mRightBottomImage:I

.field private mRightBottomImageView:Landroid/widget/ImageView;

.field private mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRightTopImage:I

.field private mRightTopImageView:Landroid/widget/ImageView;

.field private mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private mShrinkHandler:Landroid/os/Handler;

.field private mShrinkRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 66
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 66
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 66
    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x80

    const/4 v2, -0x2

    .line 109
    const v0, 0x7f020020

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    .line 110
    const v0, 0x7f020021

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    .line 111
    const v0, 0x7f020022

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    .line 112
    const v0, 0x7f020023

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    .line 114
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    .line 115
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    .line 117
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 134
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    .line 168
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mContext:Landroid/content/Context;

    .line 98
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    .line 100
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    .line 102
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    .line 105
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    .line 106
    return-void
.end method

.method public doShrink()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 224
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 226
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    if-le v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    if-le v0, v1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public enlargeRect()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public getXDelta()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getYDelta()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    .line 187
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomParam:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    return-void
.end method

.method public setPhysicalRectSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x4

    .line 268
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    .line 269
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectWidth:I

    if-le v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopMargin:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRectDistance:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mPhysicalRectHeight:I

    if-le v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_1
    return-void
.end method

.method public showFocusFailRect()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x4

    .line 299
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 301
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    return-void
.end method

.method public showFocusSuccessRect()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x4

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopParam:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusSuccessImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mFocusFailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mLeftBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mRightBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public shrinkRect()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->mShrinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method
