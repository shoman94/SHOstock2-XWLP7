.class public abstract Lorg/mozilla/universalchardet/prober/CharsetProber;
.super Ljava/lang/Object;
.source "CharsetProber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private isAscii(B)Z
    .locals 1
    .parameter "b"

    .prologue
    .line 164
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAsciiSymbol(B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 169
    and-int/lit16 v0, p1, 0xff

    .line 170
    .local v0, c:I
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 123
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 125
    .local v4, out:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 128
    .local v2, isInTag:Z
    move v5, p2

    .line 129
    .local v5, prevPtr:I
    move v1, p2

    .line 130
    .local v1, curPtr:I
    add-int v3, p2, p3

    .line 132
    .local v3, maxPtr:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 133
    aget-byte v0, p1, v1

    .line 135
    .local v0, c:B
    const/16 v6, 0x3e

    if-ne v0, v6, :cond_2

    .line 136
    const/4 v2, 0x0

    .line 141
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    if-le v1, v5, :cond_3

    if-nez v2, :cond_3

    .line 145
    sub-int v6, v1, v5

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 146
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    add-int/lit8 v5, v1, 0x1

    .line 132
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_0

    .line 138
    const/4 v2, 0x1

    goto :goto_1

    .line 149
    :cond_3
    add-int/lit8 v5, v1, 0x1

    goto :goto_2

    .line 156
    .end local v0           #c:B
    :cond_4
    if-nez v2, :cond_5

    if-le v1, v5, :cond_5

    .line 157
    sub-int v6, v1, v5

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 160
    :cond_5
    return-object v4
.end method

.method public filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 83
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 85
    .local v4, out:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 88
    .local v3, meetMSB:Z
    move v5, p2

    .line 89
    .local v5, prevPtr:I
    move v1, p2

    .line 90
    .local v1, curPtr:I
    add-int v2, p2, p3

    .line 92
    .local v2, maxPtr:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 93
    aget-byte v0, p1, v1

    .line 94
    .local v0, c:B
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    const/4 v3, 0x1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    if-eqz v3, :cond_2

    if-le v1, v5, :cond_2

    .line 102
    sub-int v6, v1, v5

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 103
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    add-int/lit8 v5, v1, 0x1

    .line 105
    const/4 v3, 0x0

    goto :goto_1

    .line 110
    :cond_2
    add-int/lit8 v5, v1, 0x1

    goto :goto_1

    .line 115
    .end local v0           #c:B
    :cond_3
    if-eqz v3, :cond_4

    if-le v1, v5, :cond_4

    .line 116
    sub-int v6, v1, v5

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 119
    :cond_4
    return-object v4
.end method

.method public abstract getCharSetName()Ljava/lang/String;
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract reset()V
.end method
