.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "HebrewProber.java"


# instance fields
.field private beforePrev:B

.field private finalCharLogicalScore:I

.field private finalCharVisualScore:I

.field private logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private prev:B

.field private visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 78
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 79
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 80
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    .line 81
    return-void
.end method

.method protected static isFinal(B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 182
    and-int/lit16 v0, p0, 0xff

    .line 183
    .local v0, c:I
    const/16 v1, 0xea

    if-eq v0, v1, :cond_0

    const/16 v1, 0xed

    if-eq v0, v1, :cond_0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isNonFinal(B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 187
    and-int/lit16 v0, p0, 0xff

    .line 188
    .local v0, c:I
    const/16 v1, 0xeb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xee

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    iget v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    sub-int v0, v2, v3

    .line 92
    .local v0, finalsub:I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 93
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v2

    .line 95
    :cond_0
    const/4 v2, -0x5

    if-gt v0, v2, :cond_1

    .line 96
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    sub-float v1, v2, v3

    .line 101
    .local v1, modelsub:F
    const v2, 0x3c23d70a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 102
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    const v2, -0x43dc28f6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 105
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_3
    if-gez v0, :cond_4

    .line 111
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_4
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    .line 129
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 137
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v3

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_0

    .line 138
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 162
    :goto_0
    return-object v3

    .line 142
    :cond_0
    add-int v2, p2, p3

    .line 143
    .local v2, maxPos:I
    move v1, p2

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 144
    aget-byte v0, p1, v1

    .line 145
    .local v0, c:B
    if-ne v0, v5, :cond_3

    .line 146
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-eq v3, v5, :cond_1

    .line 147
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 158
    :cond_1
    :goto_2
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    iput-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 159
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_2
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    goto :goto_2

    .line 154
    :cond_3
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-ne v3, v5, :cond_1

    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v5, :cond_1

    .line 155
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    goto :goto_2

    .line 162
    .end local v0           #c:B
    :cond_4
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 168
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 173
    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 174
    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 175
    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0
    .parameter "logicalProber"
    .parameter "visualProber"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 85
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 86
    return-void
.end method
