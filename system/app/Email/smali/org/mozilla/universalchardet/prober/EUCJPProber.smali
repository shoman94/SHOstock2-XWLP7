.class public Lorg/mozilla/universalchardet/prober/EUCJPProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "EUCJPProber.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 66
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/EUCJPProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 67
    new-instance v0, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 68
    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    .line 70
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->reset()V

    .line 71
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_JP:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;->getConfidence()F

    move-result v0

    .line 81
    .local v0, contextCf:F
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;->getConfidence()F

    move-result v1

    .line 83
    .local v1, distribCf:F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

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

    .line 95
    add-int v3, p2, p3

    .line 96
    .local v3, maxPos:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 97
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v5, p1, v2

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v1

    .line 98
    .local v1, codingState:I
    if-ne v1, v7, :cond_2

    .line 99
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 120
    .end local v1           #codingState:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v6

    .line 122
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v4, v5, :cond_1

    .line 123
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;->gotEnoughData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->getConfidence()F

    move-result v4

    const v5, 0x3f733333

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 124
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 128
    :cond_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4

    .line 102
    .restart local v1       #codingState:I
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 103
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    .line 106
    :cond_3
    if-nez v1, :cond_4

    .line 107
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v0

    .line 109
    .local v0, charLen:I
    if-ne v2, p2, :cond_5

    .line 110
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    aget-byte v5, p1, p2

    aput-byte v5, v4, v7

    .line 111
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    invoke-virtual {v4, v5, v6, v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;->handleOneChar([BII)V

    .line 112
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    invoke-virtual {v4, v5, v6, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;->handleOneChar([BII)V

    .line 96
    .end local v0           #charLen:I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .restart local v0       #charLen:I
    :cond_5
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p1, v5, v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;->handleOneChar([BII)V

    .line 115
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p1, v5, v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;->handleOneChar([BII)V

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 134
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 135
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->contextAnalyzer:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;->reset()V

    .line 136
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;->reset()V

    .line 137
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->lastChar:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 138
    return-void
.end method
