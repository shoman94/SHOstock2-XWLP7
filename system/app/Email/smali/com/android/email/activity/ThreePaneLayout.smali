.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static mPaneState:I

.field private static sInit:Z

.field private static sIsListLeftShown:Z

.field private static sLandWidth:I

.field private static sLeftPaneLandWidth:I

.field private static sLeftPaneLandWidthConst:I

.field private static sLeftPanePortWidth:I

.field private static sLeftPanePortWidthConst:I

.field private static sPortWidth:I


# instance fields
.field private final INDEX_GONE:I

.field private final INDEX_INVISIBLE:I

.field private final INDEX_VISIBLE:I

.field private mAnimationStarted:Z

.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mFirstSizeChangedDone:Z

.field private mInitialPaneState:I

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragmentShadow:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInList:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInView:Landroid/widget/LinearLayout;

.field private mMiddlePane:Landroid/view/View;

.field private mOrientation:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;

.field private mShowMessageSendingProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 212
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 136
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    .line 147
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 151
    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    .line 202
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ThreePaneLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    return v0
.end method

.method private getCurrentMailboxLeft()I
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method private getCurrentMessageListWidth()I
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public static getCurrentPaneState()I
    .locals 1

    .prologue
    .line 425
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->setOrientation(I)V

    .line 218
    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMesssageListLeftside()Z
    .locals 1

    .prologue
    .line 953
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method private onFirstSizeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 655
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v1, :cond_0

    .line 656
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 657
    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 659
    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 959
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 961
    :cond_0
    return-void
.end method

.method private varargs startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .parameter "duration"
    .parameter "listener"
    .parameter "values"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    if-eqz v1, :cond_1

    .line 1160
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->cancel()V

    .line 1163
    :cond_1
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1165
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1166
    if-eqz p2, :cond_2

    .line 1167
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1169
    :cond_2
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    .line 1170
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 1171
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1172
    return-void
.end method

.method private updateMessageSendingProgress()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 534
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 535
    .local v0, ani_appear:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 537
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 538
    .local v1, ani_disappear:Landroid/view/animation/Animation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 540
    iget-boolean v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    if-nez v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    return-void

    .line 546
    :cond_0
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-nez v2, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 551
    :cond_1
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 552
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 554
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 557
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public changePaneState(IZZ)V
    .locals 13
    .parameter "newState"
    .parameter "animate"
    .parameter "onlyChangeState"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 707
    const/4 p1, 0x1

    .line 710
    :cond_0
    iget-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v1, :cond_2

    .line 715
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 915
    :cond_1
    :goto_0
    return-void

    .line 718
    :cond_2
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-ne p1, v1, :cond_4

    .line 719
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 720
    :cond_3
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 725
    :cond_4
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 726
    :cond_5
    const/4 p2, 0x0

    .line 729
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v6

    .line 730
    .local v6, previousVisiblePanes:I
    sput p1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 732
    if-nez p3, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 744
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_0

    .line 812
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 747
    :pswitch_1
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 749
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 750
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 752
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 753
    const-string v2, "Landscape - moving to [mailbox list + message list]"

    .line 754
    .local v2, animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 755
    .local v7, expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int v8, v1, v3

    .line 757
    .local v8, expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v9, v1, v3

    .line 902
    .local v9, showHideViews:[[Landroid/view/View;
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v1, 0x0

    aget-object v3, v9, v1

    const/4 v1, 0x1

    aget-object v4, v9, v1

    const/4 v1, 0x2

    aget-object v5, v9, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    .line 908
    .local v0, listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    if-eqz p2, :cond_9

    const/16 v1, 0x258

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    const-string v5, "mailboxListLeftAnim"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMailboxLeft()I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "messageListWidthAnim"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMessageListWidth()I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V

    .line 913
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    goto/16 :goto_0

    .line 761
    .end local v0           #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    .end local v9           #showHideViews:[[Landroid/view/View;
    :pswitch_2
    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 763
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 764
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 766
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 770
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    const-string v2, "Landscape - moving to [message list + message view]"

    .line 773
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    neg-int v7, v1

    .line 774
    .restart local v7       #expectedMailboxLeft:I
    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 775
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 778
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 779
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 780
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 781
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    const-string v2, "Landscape - moving to [message list]"

    .line 785
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 786
    .restart local v7       #expectedMailboxLeft:I
    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    .line 787
    .restart local v8       #expectedMessageListWidth:I
    goto/16 :goto_1

    .line 789
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 790
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 791
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 793
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 794
    const-string v2, "Landscape - moving to [message view]"

    .line 795
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    .line 796
    .restart local v7       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 797
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 800
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 801
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 802
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 803
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 804
    const-string v2, "Landscape - moving to [mailbox list]"

    .line 805
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 806
    .restart local v7       #expectedMailboxLeft:I
    const/4 v8, 0x0

    .line 809
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 815
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :cond_7
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_1

    .line 897
    :pswitch_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 819
    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 820
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 821
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 822
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 823
    const-string v2, "Potrait - moving to [mailbox list + message list]"

    .line 824
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 825
    .restart local v7       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v8, v1, v3

    .line 826
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 846
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 847
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 849
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 851
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    const-string v2, "Potrait - moving to [message list + message view]"

    .line 854
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    .line 855
    .restart local v7       #expectedMailboxLeft:I
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 856
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 861
    .restart local v8       #expectedMessageListWidth:I
    :goto_3
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 858
    .end local v8           #expectedMessageListWidth:I
    :cond_8
    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .restart local v8       #expectedMessageListWidth:I
    goto :goto_3

    .line 864
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 865
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 866
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 867
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 868
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    const/4 v7, 0x0

    .line 870
    .restart local v7       #expectedMailboxLeft:I
    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    .line 871
    .restart local v8       #expectedMessageListWidth:I
    const-string v2, "Potrait - moving to [message list]"

    .line 872
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 875
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_a
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 876
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 877
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 879
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 880
    const-string v2, "Potrait - moving to [message view]"

    .line 881
    .restart local v2       #animatorLabel:Ljava/lang/String;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    .line 882
    .restart local v7       #expectedMailboxLeft:I
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    .line 883
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 887
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_b
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 888
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 889
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 890
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    .line 891
    const-string v2, "Potrait - moving to [mailbox list]"

    .line 892
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 893
    .restart local v7       #expectedMailboxLeft:I
    const/4 v8, 0x0

    .line 894
    .restart local v8       #expectedMessageListWidth:I
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 908
    .restart local v0       #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .restart local v9       #showHideViews:[[Landroid/view/View;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 744
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 815
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public controlLeftSplitBar(I)V
    .locals 3
    .parameter "nValue"

    .prologue
    .line 490
    move v0, p1

    .line 491
    .local v0, splitPoint:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$2;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public controlRightSplitBar(I)V
    .locals 3
    .parameter "nValue"

    .prologue
    .line 466
    move v0, p1

    .line 467
    .local v0, splitPoint:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    if-nez v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$1;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 402
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    .line 403
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    .line 404
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 405
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    move-object v0, v1

    .line 406
    check-cast v0, [[[Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 407
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 408
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 409
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 411
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 412
    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    .line 413
    return-void
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return v0
.end method

.method public getLeftPaneId()I
    .locals 1

    .prologue
    .line 933
    const v0, 0x7f100273

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .locals 1

    .prologue
    .line 941
    const v0, 0x7f100274

    return v0
.end method

.method public getRightPaneId()I
    .locals 1

    .prologue
    .line 949
    const v0, 0x7f100276

    return v0
.end method

.method public getVisiblePanes()I
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 518
    or-int/lit8 v0, v0, 0x4

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 520
    or-int/lit8 v0, v0, 0x2

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 522
    or-int/lit8 v0, v0, 0x1

    .line 523
    :cond_2
    return v0
.end method

.method protected initCurrentPaneState()V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 229
    :goto_0
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 231
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_0
.end method

.method public isFullListMode()Z
    .locals 2

    .prologue
    .line 923
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullViewMode()Z
    .locals 2

    .prologue
    .line 919
    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed(Z)Z
    .locals 4
    .parameter "isSystemBackKey"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 576
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 577
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 644
    :goto_1
    return v0

    .line 580
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 582
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .line 583
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-interface {v2, v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setRightSplitType(II)V

    .line 585
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 591
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 597
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 599
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 600
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_1

    .line 604
    :cond_2
    :pswitch_3
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 607
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 608
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 610
    :cond_3
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 615
    :cond_4
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    .line 630
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 631
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 632
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 633
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_1

    .line 618
    :pswitch_7
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 619
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 622
    :cond_5
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 627
    :pswitch_8
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 637
    :cond_6
    :pswitch_9
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 640
    :pswitch_a
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 615
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 237
    const v0, 0x7f100273

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 238
    const v0, 0x7f100274

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 239
    const v0, 0x7f100276

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 241
    const v0, 0x7f100277

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 243
    const v0, 0x7f100275

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    .line 244
    const v0, 0x7f100278

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    .line 248
    const v0, 0x7f1001b8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    .line 252
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 376
    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    :cond_0
    iput v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 386
    :goto_1
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    if-nez v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    .line 389
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    .line 391
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    .line 392
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    .line 393
    sput-boolean v6, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    .line 395
    :cond_1
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    .line 396
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    .line 397
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->setLeftPane(Landroid/view/View;)V

    .line 398
    return-void

    .line 312
    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    goto/16 :goto_0

    .line 380
    :cond_3
    iput v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_1

    .line 383
    :cond_4
    iput v5, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 450
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    .line 451
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 452
    iget v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 453
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 443
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 444
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 458
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    .line 460
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    .line 462
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 429
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 430
    return-void
.end method

.method public setFragmentWidth(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v2, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 964
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 969
    :cond_0
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    .line 970
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_0

    .line 1112
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    .line 1114
    return-void

    .line 973
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 975
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 976
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 982
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_0

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 979
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_1

    .line 988
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 990
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 991
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 997
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 994
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 995
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_2

    .line 1007
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1008
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1009
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1011
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1018
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1019
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1021
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1029
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1030
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1031
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1033
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1040
    :cond_3
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 1042
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1043
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1044
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1045
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1051
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1047
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1048
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1049
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_3

    .line 1068
    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1069
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1071
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1079
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1080
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1081
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1083
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1089
    :pswitch_a
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1090
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1091
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1093
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1100
    :pswitch_b
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1101
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1102
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1104
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1040
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setMailboxListLeftAnim(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1124
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageListWidthAnim(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 1133
    return-void
.end method

.method public setVisibleMessageSendingProgress(Z)V
    .locals 0
    .parameter "bVisible"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    .line 529
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    .line 530
    return-void
.end method

.method public showLeftPane()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 673
    return-void
.end method

.method public showMiddlePane()V
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 692
    return-void
.end method

.method public showMiddlePane(Z)V
    .locals 2
    .parameter "onlyChangeMode"

    .prologue
    .line 695
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 696
    return-void
.end method

.method public showRightOnlyPane()V
    .locals 3

    .prologue
    .line 702
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 703
    return-void
.end method

.method public showRightPane()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 680
    return-void
.end method

.method public showRightPane(Z)V
    .locals 2
    .parameter "onlyChangeMode"

    .prologue
    .line 683
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    .line 684
    return-void
.end method
