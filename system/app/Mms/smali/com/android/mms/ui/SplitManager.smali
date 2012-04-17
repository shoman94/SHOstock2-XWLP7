.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# static fields
.field private static SPLIT_BAR_DEFAULT_POSITION:I


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mDensity:F

.field private mEndX:I

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMaxX:I

.field private mMinX:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarMargin:I

.field private mSplitMode:I

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x140

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 3
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "conversationComposer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 47
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 50
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 61
    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    .line 63
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    .line 72
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_0
    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    .line 73
    const/high16 v1, 0x4420

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    .line 75
    const/high16 v1, 0x4180

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    .prologue
    .line 231
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 262
    :goto_0
    return v2

    .line 234
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    .line 260
    .local v1, runExpand:Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 261
    .local v0, handler:Landroid/os/Handler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadSplitPosition()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 131
    :cond_0
    sget v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 132
    return-void
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    add-int v0, v2, p1

    .line 114
    .local v0, x:I
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMinX:I

    if-ge v0, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mMaxX:I

    if-gt v0, v2, :cond_0

    .line 119
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 122
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v4, :pswitch_data_0

    .line 227
    :goto_0
    return v3

    .line 183
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 185
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 192
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 193
    .local v0, leftViewWidth:I
    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v3, v0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 195
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->ShowSipOnComposeMessage()V

    goto :goto_1

    .line 192
    .end local v0           #leftViewWidth:I
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    goto :goto_2

    .line 202
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 204
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 206
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 218
    .local v2, totalWidth:I
    iget-object v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v3, v2, v3

    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mSplitBarMargin:I

    add-int/2addr v3, v4

    neg-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 221
    iget-object v3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSplitPosition()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_splitbar_position"

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 87
    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 4
    .parameter "splitMode"
    .parameter "withAnimation"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 143
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 147
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v1, :cond_3

    .line 148
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v1, :cond_0

    .line 154
    iput-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 155
    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v1, v3, :cond_5

    .line 159
    const/16 v1, -0x28

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    .line 160
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    .line 161
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    .line 174
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    goto :goto_0

    .line 161
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v0, v0

    goto :goto_1

    .line 171
    :cond_5
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_2
.end method

.method public setUseSplitMode(Z)V
    .locals 4
    .parameter "useSplitMode"

    .prologue
    const/4 v2, -0x1

    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :goto_0
    const-string v1, "Mms/SplitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSplitMode usesplitMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 97
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 82
    const-string v0, "Mms/SplitManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
