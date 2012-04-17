.class public Lcom/android/email/winset/MessageScrollView;
.super Landroid/widget/ScrollView;
.source "MessageScrollView.java"


# instance fields
.field public final MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

.field private final TIME_BUTTON_AINIMATION:J

.field private final TIME_BUTTON_DISABLE:J

.field private mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mInMessageView:Z

.field private mIsBottom:Z

.field private mIsMessageTab:Z

.field private mIsScrollChange:Z

.field private mIsShowLinearlayoutToTheTop:Z

.field private mIsTouchDown:Z

.field private mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mPrevScrollY:I

.field private mResetView:Z

.field private mStartX:F

.field private mStartY:F

.field private mToMessageTab:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 25
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 29
    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 30
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 32
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 33
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 35
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 41
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 49
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 25
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 29
    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 30
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 32
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 33
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 35
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 41
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 54
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 25
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 29
    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 30
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 32
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_AINIMATION:J

    .line 33
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/email/winset/MessageScrollView;->TIME_BUTTON_DISABLE:J

    .line 35
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 41
    const-string v0, "MessageScrollView"

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->MESSAGE_SCROLLVIEW_TAG:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 59
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->initialize()V

    .line 60
    return-void
.end method

.method private inMessageWebView(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public ShowToTheTopButton(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 298
    return-void
.end method

.method public ShowToTheTopButton(ZZ)V
    .locals 7
    .parameter "isShow"
    .parameter "isAnimation"

    .prologue
    const-wide/16 v5, 0x15e

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    if-eq v0, p1, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 307
    :cond_0
    if-ne p1, v1, :cond_3

    .line 308
    if-ne p2, v1, :cond_1

    .line 309
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 310
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 311
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 315
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    .line 324
    :goto_0
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    .line 333
    :cond_2
    :goto_1
    return-void

    .line 317
    :cond_3
    if-ne p2, v1, :cond_4

    .line 318
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    .line 319
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 320
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/winset/MessageScrollView;->mAnimationShowButton:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseAlwaysShowToTopButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    if-ne p1, v1, :cond_2

    .line 328
    invoke-direct {p0, v2}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 329
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v2, v0, v1}, Lcom/android/email/winset/MessageScrollView;->sendMessageDelayed(IJ)V

    goto :goto_1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollExtent()I

    move-result v0

    .line 359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollOffset()I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getcomputeHorizontalScrollRange()I

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/email/winset/MessageScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/email/winset/MessageScrollView$1;-><init>(Lcom/android/email/winset/MessageScrollView;)V

    iput-object v0, p0, Lcom/android/email/winset/MessageScrollView;->mHandler:Landroid/os/Handler;

    .line 83
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/winset/MessageScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 158
    .local v0, bIntercept:Z
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-ne v4, v5, :cond_0

    .line 159
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 160
    .local v3, location:[I
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 163
    .local v1, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 165
    .local v2, curY:F
    float-to-int v4, v1

    aget v5, v3, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 170
    .end local v1           #curX:F
    .end local v2           #curY:F
    .end local v3           #location:[I
    :cond_0
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 294
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-ne v3, v6, :cond_1

    .line 257
    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    invoke-virtual {p0, v3, v4}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    .line 265
    :goto_0
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-ne v3, v6, :cond_5

    .line 266
    if-nez p2, :cond_3

    .line 267
    invoke-virtual {p0, v5}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    .line 272
    :goto_1
    iget-object v3, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v0

    .line 274
    .local v0, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v1

    .line 275
    .local v1, vOffset:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v2

    .line 277
    .local v2, vRange:I
    sub-int v3, v2, v0

    if-ne v3, v1, :cond_4

    .line 278
    if-lt p2, p4, :cond_0

    .line 279
    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    .line 288
    .end local v0           #vExtent:I
    .end local v1           #vOffset:I
    .end local v2           #vRange:I
    :cond_0
    :goto_2
    return-void

    .line 259
    :cond_1
    iget-boolean v3, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    if-ne v3, v6, :cond_2

    if-lez p2, :cond_2

    .line 260
    invoke-virtual {p0, v5, v5}, Lcom/android/email/winset/MessageScrollView;->scrollTo(II)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 269
    :cond_3
    iput-boolean v6, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    goto :goto_1

    .line 282
    .restart local v0       #vExtent:I
    .restart local v1       #vOffset:I
    .restart local v2       #vRange:I
    :cond_4
    iput-boolean v5, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    goto :goto_2

    .line 286
    .end local v0           #vExtent:I
    .end local v1           #vOffset:I
    .end local v2           #vRange:I
    :cond_5
    iput p2, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 184
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    .line 186
    .local v5, ev1:Landroid/view/MotionEvent;
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 187
    .local v7, location:[I
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12, v7}, Lcom/android/email/activity/MessageWebView;->getLocationInWindow([I)V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 190
    .local v1, curRawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 192
    .local v8, rawY:F
    const/4 v12, 0x1

    aget v12, v7, v12

    int-to-float v12, v12

    sub-float v2, v8, v12

    .line 193
    .local v2, curRawY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_0

    .line 194
    float-to-int v12, v1

    float-to-int v13, v2

    invoke-direct {p0, v12, v13}, Lcom/android/email/winset/MessageScrollView;->inMessageWebView(II)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    .line 197
    :cond_0
    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    if-eqz v12, :cond_1

    .line 198
    invoke-virtual {v5, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 199
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12, v5}, Lcom/android/email/activity/MessageWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 203
    .end local v1           #curRawX:F
    .end local v2           #curRawY:F
    .end local v5           #ev1:Landroid/view/MotionEvent;
    .end local v7           #location:[I
    .end local v8           #rawY:F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 204
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 205
    .local v3, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 207
    .local v4, curY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 208
    .local v6, ev2:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 210
    packed-switch v0, :pswitch_data_0

    .line 246
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v12}, Lcom/android/email/activity/MessageWebView;->getIsSelectedCursor()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 251
    :goto_1
    const/4 v12, 0x1

    return v12

    .line 212
    :pswitch_1
    iput v3, p0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    .line 213
    iput v4, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    .line 214
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 215
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 217
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    goto :goto_0

    .line 226
    :pswitch_2
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 227
    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 228
    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v12

    if-lez v12, :cond_2

    .line 230
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v12, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollExtent()I

    move-result v9

    .line 234
    .local v9, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollOffset()I

    move-result v10

    .line 235
    .local v10, vOffset:I
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->computeVerticalScrollRange()I

    move-result v11

    .line 236
    .local v11, vRange:I
    sub-int v12, v11, v9

    if-ne v12, v10, :cond_2

    .line 237
    iget v12, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    sub-float/2addr v12, v4

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 238
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto :goto_0

    .line 248
    .end local v9           #vExtent:I
    .end local v10           #vOffset:I
    .end local v11           #vRange:I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetMessageScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 112
    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 113
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartY:F

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mStartX:F

    .line 114
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsTouchDown:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsShowLinearlayoutToTheTop:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsBottom:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mIsScrollChange:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 120
    iput v1, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 121
    iput-boolean v2, p0, Lcom/android/email/winset/MessageScrollView;->mResetView:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z

    .line 123
    return-void
.end method

.method public setIsMessageTab(Z)V
    .locals 2
    .parameter "isMessage"

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    .line 132
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/email/winset/MessageScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/email/winset/MessageScrollView;->mPrevScrollY:I

    .line 134
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/email/winset/MessageScrollView;->removeMessages(I)V

    .line 135
    invoke-virtual {p0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(ZZ)V

    .line 137
    :cond_0
    return-void
.end method

.method public setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "linearlayoutToTheTop"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method public setMessageWebView(Lcom/android/email/activity/MessageWebView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 104
    return-void
.end method

.method public setToMessageTab(Z)V
    .locals 1
    .parameter "toMessage"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    if-eq v0, p1, :cond_0

    .line 145
    iput-boolean p1, p0, Lcom/android/email/winset/MessageScrollView;->mToMessageTab:Z

    .line 147
    :cond_0
    return-void
.end method
