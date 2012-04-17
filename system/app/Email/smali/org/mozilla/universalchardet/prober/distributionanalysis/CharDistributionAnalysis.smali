.class public abstract Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;
.super Ljava/lang/Object;
.source "CharDistributionAnalysis.java"


# instance fields
.field protected charToFreqOrder:[I

.field protected done:Z

.field private freqChars:I

.field private totalChars:I

.field protected typicalDistributionRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->reset()V

    .line 63
    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 5

    .prologue
    const v1, 0x3f7d70a4

    .line 86
    iget v2, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    if-lez v2, :cond_0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 87
    :cond_0
    const v0, 0x3c23d70a

    .line 99
    :cond_1
    :goto_0
    return v0

    .line 90
    :cond_2
    iget v2, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    if-eq v2, v3, :cond_3

    .line 91
    iget v2, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    iget v4, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->typicalDistributionRatio:F

    mul-float v0, v2, v3

    .line 94
    .local v0, r:F
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    .end local v0           #r:F
    :cond_3
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method protected abstract getOrder([BI)I
.end method

.method public gotEnoughData()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleOneChar([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "charLength"

    .prologue
    .line 69
    const/4 v0, -0x1

    .line 71
    .local v0, order:I
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->getOrder([BI)I

    move-result v0

    .line 75
    :cond_0
    if-ltz v0, :cond_1

    .line 76
    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    .line 77
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->charToFreqOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 78
    const/16 v1, 0x200

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->charToFreqOrder:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_1

    .line 79
    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    .line 83
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->done:Z

    .line 104
    iput v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    .line 105
    iput v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    .line 106
    return-void
.end method
