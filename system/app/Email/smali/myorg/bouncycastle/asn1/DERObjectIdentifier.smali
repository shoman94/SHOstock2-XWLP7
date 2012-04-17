.class public Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERObjectIdentifier.java"


# instance fields
.field identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "identifier"

    .prologue
    .line 98
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 99
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 104
    return-void
.end method

.method constructor <init>([B)V
    .locals 12
    .parameter "bytes"

    .prologue
    const/16 v11, 0x2e

    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v4, objId:Ljava/lang/StringBuffer;
    const-wide/16 v5, 0x0

    .line 50
    .local v5, value:J
    const/4 v1, 0x0

    .line 51
    .local v1, bigValue:Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 53
    .local v2, first:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p1

    if-eq v3, v7, :cond_4

    .line 54
    aget-byte v7, p1, v3

    and-int/lit16 v0, v7, 0xff

    .line 56
    .local v0, b:I
    const-wide/high16 v7, 0x80

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    .line 57
    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    .line 58
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_1

    .line 60
    if-eqz v2, :cond_0

    .line 61
    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_0

    .line 70
    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    .line 73
    :goto_1
    const/4 v2, 0x0

    .line 76
    :cond_0
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 78
    const-wide/16 v5, 0x0

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :pswitch_0
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 66
    :pswitch_1
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    .line 68
    goto :goto_1

    .line 81
    :cond_2
    if-nez v1, :cond_3

    .line 82
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    :cond_3
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 85
    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 86
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_1

    .line 87
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 89
    const/4 v1, 0x0

    .line 90
    const-wide/16 v5, 0x0

    goto :goto_2

    .line 95
    .end local v0           #b:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 96
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 3
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    .end local p0
    :goto_0
    return-object p0

    .line 22
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    .line 26
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 27
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object p0

    goto :goto_0

    .line 30
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 44
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 9
    .parameter "identifier"

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v4, 0x0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    :cond_0
    move v3, v4

    .line 225
    :cond_1
    :goto_0
    return v3

    .line 199
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 200
    .local v1, first:C
    if-lt v1, v8, :cond_3

    const/16 v5, 0x32

    if-le v1, v5, :cond_4

    :cond_3
    move v3, v4

    .line 201
    goto :goto_0

    .line 204
    :cond_4
    const/4 v3, 0x0

    .line 205
    .local v3, periodAllowed:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    .local v0, ch:C
    if-gt v8, v0, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    .line 209
    const/4 v3, 0x1

    .line 205
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 213
    :cond_5
    if-ne v0, v7, :cond_7

    .line 214
    if-nez v3, :cond_6

    move v3, v4

    .line 215
    goto :goto_0

    .line 218
    :cond_6
    const/4 v3, 0x0

    .line 219
    goto :goto_2

    :cond_7
    move v3, v4

    .line 222
    goto :goto_0
.end method

.method private writeField(Ljava/io/OutputStream;J)V
    .locals 2
    .parameter "out"
    .parameter "fieldValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-wide/16 v0, 0x80

    cmp-long v0, p2, v0

    if-ltz v0, :cond_7

    .line 112
    const-wide/16 v0, 0x4000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_6

    .line 113
    const-wide/32 v0, 0x200000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_5

    .line 114
    const-wide/32 v0, 0x10000000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4

    .line 115
    const-wide v0, 0x800000000L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 116
    const-wide v0, 0x40000000000L

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 117
    const-wide/high16 v0, 0x2

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 118
    const-wide/high16 v0, 0x100

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 119
    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 121
    :cond_0
    const/16 v0, 0x31

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 123
    :cond_1
    const/16 v0, 0x2a

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 125
    :cond_2
    const/16 v0, 0x23

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 127
    :cond_3
    const/16 v0, 0x1c

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 129
    :cond_4
    const/16 v0, 0x15

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 131
    :cond_5
    const/16 v0, 0xe

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 133
    :cond_6
    const/4 v0, 0x7

    shr-long v0, p2, v0

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 135
    :cond_7
    long-to-int v0, p2

    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 136
    return-void
.end method

.method private writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .locals 6
    .parameter "out"
    .parameter "fieldValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 140
    .local v0, byteCount:I
    if-nez v0, :cond_0

    .line 141
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    move-object v3, p2

    .line 144
    .local v3, tmpValue:Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 145
    .local v2, tmp:[B
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 146
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 147
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 145
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 149
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 150
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 183
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 187
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v3, Lmyorg/bouncycastle/asn1/OIDTokenizer;

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v3, v5}, Lmyorg/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, tok:Lmyorg/bouncycastle/asn1/OIDTokenizer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lmyorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    .local v2, dOut:Lmyorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {p0, v0, v5, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    .line 162
    :goto_0
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_0

    .line 165
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 171
    .end local v4           #token:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 175
    .local v1, bytes:[B
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 176
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
