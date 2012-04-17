.class public Lmyorg/bouncycastle/sasn1/Asn1InputStream;
.super Ljava/lang/Object;
.source "Asn1InputStream.java"


# instance fields
.field private _eofFound:Z

.field _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    .line 19
    const v0, 0x7fffffff

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    .line 20
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    .line 29
    array-length v0, p1

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    .line 30
    return-void
.end method

.method private readLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 38
    .local v1, length:I
    if-gez v1, :cond_0

    .line 39
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    .line 43
    const/4 v4, -0x1

    .line 74
    :goto_0
    return v4

    .line 46
    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    .line 47
    and-int/lit8 v3, v1, 0x7f

    .line 49
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 50
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DER length more than 4 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 55
    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 57
    .local v2, next:I
    if-gez v2, :cond_3

    .line 58
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v2           #next:I
    :cond_4
    if-gez v1, :cond_5

    .line 65
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_5
    iget v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    if-lt v1, v4, :cond_6

    .line 70
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_6
    move v4, v1

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 78
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 79
    .local v5, tag:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 80
    iget-boolean v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    if-eqz v7, :cond_0

    .line 81
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "attempt to read past end of file."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_0
    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    .line 86
    const/4 v7, 0x0

    .line 168
    :goto_0
    return-object v7

    .line 92
    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    instance-of v7, v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    if-eqz v7, :cond_2

    .line 93
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    check-cast v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 99
    :cond_2
    and-int/lit8 v1, v5, -0x21

    .line 100
    .local v1, baseTagNo:I
    move v6, v1

    .line 102
    .local v6, tagNo:I
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_5

    .line 103
    and-int/lit8 v6, v5, 0x1f

    .line 109
    const/16 v7, 0x1f

    if-ne v6, v7, :cond_5

    .line 110
    const/4 v6, 0x0

    .line 112
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 114
    .local v0, b:I
    :goto_1
    if-ltz v0, :cond_3

    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_3

    .line 115
    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    .line 116
    shl-int/lit8 v6, v6, 0x7

    .line 117
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    .line 120
    :cond_3
    if-gez v0, :cond_4

    .line 121
    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    .line 123
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "EOF encountered inside tag value."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_4
    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    .line 133
    .end local v0           #b:I
    :cond_5
    invoke-direct {p0}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readLength()I

    move-result v4

    .line 135
    .local v4, length:I
    if-gez v4, :cond_6

    .line 137
    new-instance v3, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v3, v7}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v3, indIn:Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
    sparse-switch v1, :sswitch_data_0

    .line 149
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v3}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto :goto_0

    .line 141
    :sswitch_0
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto :goto_0

    .line 143
    :sswitch_1
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerOctetString;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerOctetString;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    .line 145
    :sswitch_2
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSequence;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSequence;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    .line 147
    :sswitch_3
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSet;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSet;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    .line 152
    .end local v3           #indIn:Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
    :cond_6
    new-instance v2, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v2, v7, v4}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 154
    .local v2, defIn:Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;
    sparse-switch v1, :sswitch_data_1

    .line 168
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v2}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto/16 :goto_0

    .line 156
    :sswitch_4
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Integer;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1Integer;-><init>(I[B)V

    goto/16 :goto_0

    .line 158
    :sswitch_5
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto/16 :goto_0

    .line 160
    :sswitch_6
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;-><init>(I[B)V

    goto/16 :goto_0

    .line 162
    :sswitch_7
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerOctetString;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerOctetString;-><init>(I[B)V

    goto/16 :goto_0

    .line 164
    :sswitch_8
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSequence;-><init>(I[B)V

    goto/16 :goto_0

    .line 166
    :sswitch_9
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSet;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSet;-><init>(I[B)V

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch

    .line 154
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
    .end sparse-switch
.end method
