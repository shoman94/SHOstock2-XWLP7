.class public Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
.super Ljava/lang/Object;
.source "DialtactsListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mLastDrawVisible:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    .line 49
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    .line 50
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    .line 51
    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawVisible:I

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9
    .parameter "canvas"
    .parameter "sweepText"
    .parameter "drawProgress"
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    .line 275
    const/high16 v5, 0x3fa0

    const v6, 0x3e4ccccd

    sub-float v6, p3, v6

    mul-float v0, v5, v6

    .line 277
    .local v0, opacity:F
    float-to-double v5, v0

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 281
    :cond_0
    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v3, v5

    .line 282
    .local v3, textColor:I
    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 284
    .local v2, shadowColor:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 285
    .local v1, saveCount:I
    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 286
    .local v4, textPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    add-int v3, v5, v6

    .line 289
    shl-int/lit8 v5, v2, 0x18

    add-int/lit8 v2, v5, 0x0

    .line 290
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 293
    invoke-virtual {p1, p2, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 295
    return-void
.end method

.method private setupDrawablesBounds(II)V
    .locals 5
    .parameter "height"
    .parameter "top"

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, p2, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v0, tempDrawableRect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 316
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 318
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 324
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 326
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 328
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    return-void
.end method


# virtual methods
.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 7
    .parameter "itemIndex"

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ItemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ListView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDefineSweepAction: ChildCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 104
    .local v2, sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, listItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 114
    const v4, 0x7f0d0075

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    const-string v4, "DialtactsListSweepActionHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boram test =======>>>listItem=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listItemWithoutHeaderAndBottomDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 132
    .end local v1           #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    .end local v2           #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :goto_0
    return-object v2

    .restart local v2       #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_0
    move-object v2, v3

    .line 119
    goto :goto_0

    .restart local v1       #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    :cond_1
    move-object v2, v3

    .line 129
    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "context"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rect"
    .parameter "canvas"

    .prologue
    .line 138
    const-string v1, "DialtactsListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rect.height====>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v9, 0x1

    .line 143
    .local v9, isTouching:Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 144
    .local v8, isDragging:Z
    :goto_1
    const/4 v7, 0x0

    .line 146
    .local v7, SweepTop:I
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 147
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1, v7}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->setupDrawablesBounds(II)V

    .line 148
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectHeight:I

    .line 149
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mLastDrawRectWidth:I

    .line 155
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    .line 156
    move/from16 v0, p4

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 265
    :cond_3
    :goto_2
    return-void

    .line 141
    .end local v7           #SweepTop:I
    .end local v8           #isDragging:Z
    .end local v9           #isTouching:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 143
    .restart local v9       #isTouching:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 160
    .restart local v7       #SweepTop:I
    .restart local v8       #isDragging:Z
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    if-eqz v9, :cond_3

    .line 165
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 166
    .local v11, saveCount:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 173
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 185
    .end local v11           #saveCount:I
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_b

    .line 186
    move v4, p3

    .line 189
    .local v4, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 190
    .restart local v11       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 199
    if-eqz v8, :cond_9

    .line 200
    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v10, v1, v2

    .line 201
    .local v10, opacity:F
    float-to-double v1, v10

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_8

    .line 202
    const/4 v10, 0x0

    .line 204
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 205
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 215
    .end local v10           #opacity:F
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3

    .line 225
    .end local v4           #drawProgress:F
    .end local v11           #saveCount:I
    :cond_b
    const/high16 v1, -0x4080

    mul-float v4, v1, p3

    .line 228
    .restart local v4       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 229
    .restart local v11       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 238
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 239
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 247
    if-eqz v8, :cond_d

    .line 248
    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v10, v1, v2

    .line 249
    .restart local v10       #opacity:F
    float-to-double v1, v10

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_c

    .line 250
    const/4 v10, 0x0

    .line 252
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 259
    .end local v10           #opacity:F
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    .line 269
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .parameter "hasPhoneNumber"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;->mHasPhoneNumber:Z

    .line 336
    return-void
.end method
