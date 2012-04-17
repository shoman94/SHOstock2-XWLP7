.class public Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SingleByteCharsetProber.java"


# instance fields
.field private freqChar:I

.field private lastOrder:S

.field private model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private reversed:Z

.field private seqCounters:[I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private totalChar:I

.field private totalSeqs:I


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    .line 82
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 1
    .parameter "model"
    .parameter "reversed"
    .parameter "nameProber"

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 88
    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    .line 89
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    .line 91
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    .line 92
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfidence()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 109
    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    if-lez v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getTypicalPositiveRatio()F

    move-result v2

    div-float v0, v1, v2

    .line 112
    .local v0, r:F
    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 113
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    .line 114
    const v0, 0x3f7d70a4

    .line 119
    .end local v0           #r:F
    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a

    goto :goto_0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v8, 0x40

    .line 131
    add-int v2, p2, p3

    .line 132
    .local v2, maxPos:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 133
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getOrder(B)S

    move-result v3

    .line 135
    .local v3, order:S
    const/16 v4, 0xfa

    if-ge v3, v4, :cond_0

    .line 136
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    .line 138
    :cond_0
    if-ge v3, v8, :cond_1

    .line 139
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    .line 140
    iget-short v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    if-ge v4, v8, :cond_1

    .line 141
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    .line 142
    iget-boolean v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    if-nez v4, :cond_2

    .line 143
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    iget-short v6, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    mul-int/lit8 v6, v6, 0x40

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 151
    :cond_1
    :goto_1
    iput-short v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    mul-int/lit8 v6, v3, 0x40

    iget-short v7, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto :goto_1

    .line 154
    .end local v3           #order:S
    :cond_3
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v4, v5, :cond_4

    .line 155
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    const/16 v5, 0x400

    if-le v4, v5, :cond_4

    .line 156
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->getConfidence()F

    move-result v0

    .line 157
    .local v0, cf:F
    const v4, 0x3f733333

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 158
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 165
    .end local v0           #cf:F
    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4

    .line 159
    .restart local v0       #cf:F
    :cond_5
    const v4, 0x3d4ccccd

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 160
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 171
    const/16 v1, 0xff

    iput-short v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    aput v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    .line 176
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    .line 177
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    .line 178
    return-void
.end method
