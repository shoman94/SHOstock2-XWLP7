.class public Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastX:F

.field private lastY:F

.field private final mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

.field private mAllowedHorizontalScrollLength:I

.field private mCurrentPage:I

.field private mDetailFragmentView:Landroid/view/View;

.field private mEnableSwipe:Z

.field private mLastScrollPosition:I

.field private mLowerThreshold:I

.field private mMinFragmentWidth:I

.field private final mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private mUpperThreshold:I

.field private xDistance:F

.field private yDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 50
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 56
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 62
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 198
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 103
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040023

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    return-void
.end method

.method private getDesiredPage()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v2, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid current page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_0
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    if-le v2, v3, :cond_0

    .line 296
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 292
    goto :goto_0

    .line 296
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    if-ge v2, v3, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToEdge()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 281
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->smoothScrollTo(II)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->smoothScrollTo(II)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 234
    return-void
.end method

.method private updateTouchInterceptors()V
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    invoke-interface {v0}, Lcom/android/contacts/detail/ViewOverlay;->disableTouchInterceptor()V

    .line 220
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    invoke-interface {v0}, Lcom/android/contacts/detail/ViewOverlay;->disableTouchInterceptor()V

    .line 224
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enableSwipe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    .line 182
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 189
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 192
    :cond_0
    return-void

    .line 183
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 254
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 260
    .local v0, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 261
    .local v1, curY:F
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    .line 262
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    .line 263
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastX:F

    .line 264
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->lastY:F

    .line 265
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->yDistance:F

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->xDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 266
    const/4 v2, 0x0

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 113
    .local v2, screenWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 117
    .local v1, screenHeight:I
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 118
    const v3, 0x3f59999a

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 119
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 121
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 122
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 126
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, child:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eqz v3, :cond_2

    .line 130
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 141
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_0
    invoke-static {v2, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setMeasuredDimension(II)V

    .line 144
    return-void

    .line 136
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    .line 243
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateAlphaLayers()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 307
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 308
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getDesiredPage()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 309
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 5
    .parameter "pageIndex"

    .prologue
    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    .line 151
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 153
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 157
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    :cond_2
    move v1, v2

    .line 155
    goto :goto_1
.end method

.method public setFragmentViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "detailFragmentView"
    .parameter "updatesFragmentView"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mDetailFragmentView:Landroid/view/View;

    .line 164
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    .line 165
    return-void
.end method

.method public setFragments(Lcom/android/contacts/detail/ViewOverlay;Lcom/android/contacts/detail/ViewOverlay;)V
    .locals 0
    .parameter "aboutFragment"
    .parameter "updatesFragment"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    .line 172
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    .line 173
    return-void
.end method
