.class public abstract Lcom/android/contacts/widget/TextHighlightingAnimation;
.super Ljava/lang/Object;
.source "TextHighlightingAnimation.java"

# interfaces
.implements Lcom/android/contacts/widget/TextWithHighlightingFactory;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/TextHighlightingAnimation$1;,
        Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;,
        Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;
    }
.end annotation


# static fields
.field private static final sEmptySpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;


# instance fields
.field private ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

.field private DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private mAnimating:Z

.field private mDimming:Z

.field private mDimmingSpan:Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

.field private final mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mTargetTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    sput-object v0, Lcom/android/contacts/widget/TextHighlightingAnimation;->sEmptySpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/widget/TextHighlightingAnimation;)Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/contacts/widget/TextHighlightingAnimation;->sEmptySpans:[Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    return-object v0
.end method


# virtual methods
.method public createTextWithHighlighting()Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;-><init>(Lcom/android/contacts/widget/TextHighlightingAnimation;)V

    return-object v0
.end method

.method public bridge synthetic createTextWithHighlighting()Lcom/android/contacts/widget/TextWithHighlighting;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/contacts/widget/TextHighlightingAnimation;->createTextWithHighlighting()Lcom/android/contacts/widget/TextHighlightingAnimation$TextWithHighlightingImpl;

    move-result-object v0

    return-object v0
.end method

.method protected abstract invalidate()V
.end method

.method protected onAnimationEnded()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x434d

    const/high16 v8, 0x4248

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 242
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mTargetTime:J

    sub-long v3, v6, v1

    .line 243
    .local v3, timeLeft:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    .line 244
    iget-object v7, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    iget-boolean v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimming:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x32

    :goto_0
    invoke-virtual {v7, v6}, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    .line 245
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mAnimating:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/widget/TextHighlightingAnimation;->onAnimationEnded()V

    .line 264
    :goto_1
    return-void

    .line 244
    :cond_0
    const/16 v6, 0xff

    goto :goto_0

    .line 251
    :cond_1
    long-to-float v6, v3

    iget v7, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDuration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 252
    .local v5, virtualTime:F
    iget-boolean v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimming:Z

    if-eqz v6, :cond_2

    .line 253
    iget-object v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 254
    .local v0, interpolatedTime:F
    iget-object v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    mul-float v7, v9, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    .line 260
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/TextHighlightingAnimation;->invalidate()V

    .line 263
    iget-object v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x32

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 256
    .end local v0           #interpolatedTime:F
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v6, v5}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 257
    .restart local v0       #interpolatedTime:F
    iget-object v6, p0, Lcom/android/contacts/widget/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v0

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/widget/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    goto :goto_2
.end method
