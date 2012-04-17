.class public Lcom/android/mms/ui/ToButton;
.super Landroid/widget/Button;
.source "ToButton.java"


# instance fields
.field private mIsDelete:Z

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 24
    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    .line 29
    const v1, 0x7f020153

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setBackgroundResource(I)V

    .line 30
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 32
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setLines(I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 36
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setTextColor(I)V

    .line 37
    const/high16 v1, 0x4180

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setTextSize(F)V

    .line 38
    const/4 v1, 0x2

    invoke-virtual {p0, v4, v3, v4, v1}, Lcom/android/mms/ui/ToButton;->setPadding(IIII)V

    .line 39
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ToButton;->setGravity(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p3, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ToButton;->setId(I)V

    .line 47
    return-void
.end method

.method private ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    .prologue
    const v1, 0x3f19999a

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 114
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 115
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 117
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 121
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 123
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 124
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 127
    return-object v11
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 12

    .prologue
    const/high16 v6, 0x3f00

    const v2, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 131
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 132
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 134
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 135
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 136
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 140
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 141
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 143
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-object v11
.end method


# virtual methods
.method public delete(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    if-ne v2, v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 152
    .local v0, deleteAni:Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v1

    .line 154
    .local v1, id:I
    new-instance v2, Lcom/android/mms/ui/ToButton$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/mms/ui/ToButton$3;-><init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->clearAnimation()V

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return v0
.end method

.method public setFocusListen()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/mms/ui/ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$2;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    return-void
.end method

.method public setKeyListen()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/mms/ui/ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$1;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    return-void
.end method
