.class public Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 244
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 34
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    .line 37
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    .line 233
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 234
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    .line 235
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 237
    iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    .line 238
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 239
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 240
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 241
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    .line 133
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 134
    .local v0, c:C
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    .line 136
    return v0
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 56
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 57
    .local v1, newbuffer:[C
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 58
    .local v2, newbufline:[I
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 61
    .local v0, newbufcolumn:[I
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 66
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 70
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    .line 92
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    .line 93
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    .line 94
    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    .line 79
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    .line 82
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    .line 85
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 97
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    .line 98
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 99
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 100
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 101
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    .line 116
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    if-ne v1, v8, :cond_7

    .line 117
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 118
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 124
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    .line 125
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 126
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    .line 127
    :cond_1
    throw v0

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 103
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 106
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 107
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 108
    :cond_5
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 109
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 111
    :cond_6
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 120
    .restart local v1       #i:I
    :cond_7
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 335
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 338
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 343
    new-array v0, p1, [C

    .line 345
    .local v0, ret:[C
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 346
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    .line 143
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 144
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    .line 153
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 169
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 170
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 146
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 147
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 148
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 150
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 155
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 158
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 161
    :pswitch_3
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public backup(I)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 228
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 229
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 230
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 174
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->inBuf:I

    .line 176
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 188
    :goto_0
    return v0

    .line 182
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    .line 183
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->FillBuff()V

    .line 185
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 187
    .local v0, c:C
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method
