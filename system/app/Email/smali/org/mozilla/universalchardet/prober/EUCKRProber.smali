.class public Lorg/mozilla/universalchardet/prober/EUCKRProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "EUCKRProber.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 64
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/EUCKRProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 65
    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    .line 67
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCKRProber;->reset()V

    .line 68
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_KR:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->getConfidence()F

    move-result v0

    .line 79
    .local v0, distribCf:F
    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 8
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    add-int v3, p2, p3

    .line 92
    .local v3, maxPos:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 93
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v5, p1, v2

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v1

    .line 94
    .local v1, codingState:I
    if-ne v1, v7, :cond_2

    .line 95
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 113
    .end local v1           #codingState:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v6

    .line 115
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v4, v5, :cond_1

    .line 116
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->gotEnoughData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCKRProber;->getConfidence()F

    move-result v4

    const v5, 0x3f733333

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 117
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 121
    :cond_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4

    .line 98
    .restart local v1       #codingState:I
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 99
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    .line 102
    :cond_3
    if-nez v1, :cond_4

    .line 103
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v0

    .line 104
    .local v0, charLen:I
    if-ne v2, p2, :cond_5

    .line 105
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    aget-byte v5, p1, p2

    aput-byte v5, v4, v7

    .line 106
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    invoke-virtual {v4, v5, v6, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->handleOneChar([BII)V

    .line 92
    .end local v0           #charLen:I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .restart local v0       #charLen:I
    :cond_5
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p1, v5, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->handleOneChar([BII)V

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 127
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 128
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->reset()V

    .line 129
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 130
    return-void
.end method
