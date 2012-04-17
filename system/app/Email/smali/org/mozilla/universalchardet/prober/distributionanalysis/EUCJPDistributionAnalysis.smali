.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "EUCJPDistributionAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 3
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 58
    aget-byte v2, p1, p2

    and-int/lit16 v0, v2, 0xff

    .line 59
    .local v0, highbyte:I
    const/16 v2, 0xa1

    if-lt v0, v2, :cond_0

    .line 60
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 61
    .local v1, lowbyte:I
    add-int/lit16 v2, v0, -0xa1

    mul-int/lit8 v2, v2, 0x5e

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, -0xa1

    .line 63
    .end local v1           #lowbyte:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
