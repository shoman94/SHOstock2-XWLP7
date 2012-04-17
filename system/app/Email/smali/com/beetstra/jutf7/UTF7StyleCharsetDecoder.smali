.class Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF7StyleCharsetDecoder.java"


# instance fields
.field private final base64:Lcom/beetstra/jutf7/Base64Util;

.field private base64mode:Z

.field private bitsRead:I

.field private justShifted:Z

.field private justUnshifted:Z

.field private final shift:B

.field private final strict:Z

.field private tempChar:I

.field private final unshift:B


# direct methods
.method constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .locals 2
    .parameter "cs"
    .parameter "base64"
    .parameter "strict"

    .prologue
    .line 52
    const v0, 0x3f19999a

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 53
    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 54
    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    .line 55
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    .line 56
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->unshift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    .line 57
    return-void
.end method

.method private base64bitsWaiting()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBase64(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;B)Ljava/nio/charset/CoderResult;
    .locals 4
    .parameter "in"
    .parameter "out"
    .parameter "lastRead"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, result:Ljava/nio/charset/CoderResult;
    iget-object v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    invoke-virtual {v2, p3}, Lcom/beetstra/jutf7/Base64Util;->getSextet(B)I

    move-result v1

    .line 123
    .local v1, sextet:I
    if-ltz v1, :cond_1

    .line 124
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 125
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 126
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    iget v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    rsub-int/lit8 v3, v3, 0x10

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    :goto_0
    move-object v2, v0

    .line 141
    :goto_1
    return-object v2

    .line 128
    :cond_0
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 129
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    iget v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    shr-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 130
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 131
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    rsub-int/lit8 v2, v2, 0x10

    shl-int v2, v1, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    goto :goto_0

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-eqz v2, :cond_2

    .line 135
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_1

    .line 136
    :cond_2
    int-to-char v2, p3

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 137
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    goto :goto_0
.end method

.method private malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .parameter "in"

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .parameter "in"

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private setUnshifted()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 192
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 193
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 194
    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 67
    .local v0, b:B
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    if-eqz v2, :cond_6

    .line 68
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    if-ne v0, v2, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 100
    .end local v0           #b:B
    :goto_1
    return-object v1

    .line 71
    .restart local v0       #b:B
    :cond_0
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_1
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 77
    :goto_2
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    .line 85
    :cond_2
    iput-boolean v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    goto :goto_0

    .line 76
    :cond_3
    iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->handleBase64(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;B)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 82
    .local v1, result:Ljava/nio/charset/CoderResult;
    if-eqz v1, :cond_2

    goto :goto_1

    .line 87
    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :cond_6
    iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    if-ne v0, v2, :cond_8

    .line 88
    iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 89
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-eqz v2, :cond_7

    .line 90
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 91
    :cond_7
    iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    goto :goto_0

    .line 94
    :cond_8
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_9

    .line 95
    invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 96
    :cond_9
    int-to-char v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 97
    iput-boolean v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    goto :goto_0

    .line 100
    .end local v0           #b:B
    :cond_a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .parameter "out"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected implReset()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 161
    return-void
.end method
