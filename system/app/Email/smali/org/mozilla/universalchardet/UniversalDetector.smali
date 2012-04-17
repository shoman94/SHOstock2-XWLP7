.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "UniversalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# instance fields
.field private detectedAllCharset:Ljava/lang/String;

.field private detectedCharset:Ljava/lang/String;

.field private done:Z

.field private escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private gotData:Z

.field private inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private lastChar:B

.field private listener:Lorg/mozilla/universalchardet/CharsetListener;

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private start:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    .line 87
    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 88
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 94
    return-void
.end method


# virtual methods
.method public dataEnd()V
    .locals 8

    .prologue
    const v7, 0x3e4ccccd

    .line 230
    iget-boolean v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    if-nez v4, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 235
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 236
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v4, :cond_2

    .line 237
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_3
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_8

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, maxProberConfidence:F
    const/4 v1, 0x0

    .line 248
    .local v1, maxProber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 249
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    .line 250
    .local v3, proberConfidence:F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_4

    .line 251
    move v2, v3

    .line 252
    move v1, v0

    .line 254
    :cond_4
    cmpl-float v4, v3, v7

    if-lez v4, :cond_5

    .line 255
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 256
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    .line 248
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_6
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    goto :goto_2

    .line 263
    .end local v3           #proberConfidence:F
    :cond_7
    cmpl-float v4, v2, v7

    if-lez v4, :cond_0

    .line 264
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 265
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .end local v0           #i:I
    .end local v1           #maxProber:I
    .end local v2           #maxProberConfidence:F
    :cond_8
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_0

    goto/16 :goto_0
.end method

.method public getDetectedAllCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public handleData([BII)V
    .locals 11
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 123
    iget-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    if-eqz v8, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-lez p3, :cond_2

    .line 128
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 131
    :cond_2
    iget-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    if-eqz v8, :cond_7

    .line 132
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    .line 133
    const/4 v8, 0x3

    if-le p3, v8, :cond_7

    .line 134
    aget-byte v8, p1, p2

    and-int/lit16 v0, v8, 0xff

    .line 135
    .local v0, b1:I
    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 136
    .local v1, b2:I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 137
    .local v2, b3:I
    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v3, v8, 0xff

    .line 139
    .local v3, b4:I
    sparse-switch v0, :sswitch_data_0

    .line 168
    :cond_3
    :goto_1
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 169
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    goto :goto_0

    .line 141
    :sswitch_0
    const/16 v8, 0xbb

    if-ne v1, v8, :cond_3

    const/16 v8, 0xbf

    if-ne v2, v8, :cond_3

    .line 142
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 146
    :sswitch_1
    const/16 v8, 0xff

    if-ne v1, v8, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 147
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_4
    const/16 v8, 0xff

    if-ne v1, v8, :cond_3

    .line 149
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 153
    :sswitch_2
    if-nez v1, :cond_5

    const/16 v8, 0xfe

    if-ne v2, v8, :cond_5

    const/16 v8, 0xff

    if-ne v3, v8, :cond_5

    .line 154
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_5
    if-nez v1, :cond_3

    const/16 v8, 0xff

    if-ne v2, v8, :cond_3

    const/16 v8, 0xfe

    if-ne v3, v8, :cond_3

    .line 156
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 160
    :sswitch_3
    const/16 v8, 0xfe

    if-ne v1, v8, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 161
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_6
    const/16 v8, 0xfe

    if-ne v1, v8, :cond_3

    .line 163
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_1

    .line 175
    .end local v0           #b1:I
    .end local v1           #b2:I
    .end local v2           #b3:I
    .end local v3           #b4:I
    :cond_7
    add-int v6, p2, p3

    .line 176
    .local v6, maxPos:I
    move v5, p2

    .local v5, i:I
    :goto_2
    if-ge v5, v6, :cond_f

    .line 177
    aget-byte v8, p1, v5

    and-int/lit16 v4, v8, 0xff

    .line 178
    .local v4, c:I
    and-int/lit16 v8, v4, 0x80

    if-eqz v8, :cond_c

    const/16 v8, 0xa0

    if-eq v4, v8, :cond_c

    .line 179
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v8, v9, :cond_b

    .line 180
    sget-object v8, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 182
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v8, :cond_8

    .line 183
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 186
    :cond_8
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-nez v8, :cond_9

    .line 187
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x0

    new-instance v10, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v10, v8, v9

    .line 189
    :cond_9
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-nez v8, :cond_a

    .line 190
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x1

    new-instance v10, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;-><init>()V

    aput-object v10, v8, v9

    .line 192
    :cond_a
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    if-nez v8, :cond_b

    .line 193
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v9, 0x2

    new-instance v10, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/Latin1Prober;-><init>()V

    aput-object v10, v8, v9

    .line 176
    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 197
    :cond_c
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_e

    const/16 v8, 0x1b

    if-eq v4, v8, :cond_d

    const/16 v8, 0x7b

    if-ne v4, v8, :cond_e

    iget-byte v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_e

    .line 199
    :cond_d
    sget-object v8, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 201
    :cond_e
    aget-byte v8, p1, v5

    iput-byte v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    goto :goto_3

    .line 206
    .end local v4           #c:I
    :cond_f
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_11

    .line 207
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v8, :cond_10

    .line 208
    new-instance v8, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 210
    :cond_10
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v8, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v7

    .line 211
    .local v7, st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_0

    .line 212
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 213
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto/16 :goto_0

    .line 215
    .end local v7           #st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_11
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v9, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v8, v9, :cond_0

    .line 216
    const/4 v5, 0x0

    :goto_4
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v8, v8

    if-ge v5, v8, :cond_0

    .line 217
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v8, v8, v5

    invoke-virtual {v8, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v7

    .line 218
    .restart local v7       #st:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_12

    .line 219
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 220
    iget-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xef -> :sswitch_0
        0xfe -> :sswitch_1
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 277
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    .line 279
    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 280
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 281
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 282
    iput-byte v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    .line 284
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 288
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedAllCharset:Ljava/lang/String;

    .line 294
    return-void
.end method
