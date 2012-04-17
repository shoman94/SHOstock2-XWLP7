.class public Lmyorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 22
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "input"
    .parameter "limit"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0
    .parameter "input"
    .parameter "limit"
    .parameter "lazyEvaluate"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    iput p2, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 71
    iput-boolean p3, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 72
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "input"

    .prologue
    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 34
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .parameter "input"
    .parameter "lazyEvaluate"

    .prologue
    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 47
    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5
    .parameter "tagNo"
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 280
    packed-switch p0, :pswitch_data_0

    .line 323
    :pswitch_0
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v2, v4, p0, p1}, Lmyorg/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_0
    return-object v2

    .line 282
    :pswitch_1
    aget-byte v1, p1, v4

    .line 283
    .local v1, padBits:I
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 284
    .local v0, data:[B
    const/4 v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    new-instance v2, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_0

    .line 288
    .end local v0           #data:[B
    .end local v1           #padBits:I
    :pswitch_2
    new-instance v2, Lmyorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_0

    .line 290
    :pswitch_3
    new-instance v2, Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    goto :goto_0

    .line 292
    :pswitch_4
    new-instance v2, Lmyorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_0

    .line 294
    :pswitch_5
    new-instance v2, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto :goto_0

    .line 296
    :pswitch_6
    new-instance v2, Lmyorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    .line 298
    :pswitch_7
    new-instance v2, Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    .line 300
    :pswitch_8
    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_0

    .line 302
    :pswitch_9
    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    goto :goto_0

    .line 305
    :pswitch_a
    new-instance v2, Lmyorg/bouncycastle/asn1/DERNumericString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    .line 307
    :pswitch_b
    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_0

    .line 309
    :pswitch_c
    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    .line 311
    :pswitch_d
    new-instance v2, Lmyorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    .line 313
    :pswitch_e
    new-instance v2, Lmyorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    .line 315
    :pswitch_f
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_0

    .line 317
    :pswitch_10
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto :goto_0

    .line 319
    :pswitch_11
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_0

    .line 321
    :pswitch_12
    new-instance v2, Lmyorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .parameter "s"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 240
    .local v1, length:I
    if-gez v1, :cond_0

    .line 241
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    .line 245
    const/4 v4, -0x1

    .line 276
    :goto_0
    return v4

    .line 248
    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    .line 249
    and-int/lit8 v3, v1, 0x7f

    .line 251
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 252
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    :cond_2
    const/4 v1, 0x0

    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 257
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 259
    .local v2, next:I
    if-gez v2, :cond_3

    .line 260
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 263
    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v2           #next:I
    :cond_4
    if-gez v1, :cond_5

    .line 267
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_5
    if-lt v1, p1, :cond_6

    .line 272
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_6
    move v4, v1

    .line 276
    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .parameter "s"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    and-int/lit8 v1, p1, 0x1f

    .line 210
    .local v1, tagNo:I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 211
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 217
    .local v0, b:I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 223
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 224
    shl-int/lit8 v1, v1, 0x7

    .line 225
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    if-gez v0, :cond_2

    .line 229
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 235
    .end local v0           #b:I
    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 132
    .local v1, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .local v0, o:Lmyorg/bouncycastle/asn1/DERObject;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5
    .parameter "tag"
    .parameter "tagNo"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    move v1, v2

    .line 91
    .local v1, isConstructed:Z
    :goto_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 93
    .local v0, defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1

    .line 94
    new-instance v2, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 125
    :goto_1
    return-object v2

    .end local v0           #defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v1           #isConstructed:Z
    :cond_0
    move v1, v3

    .line 89
    goto :goto_0

    .line 97
    .restart local v0       #defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local v1       #isConstructed:Z
    :cond_1
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2

    .line 98
    new-instance v2, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v2, p1, p2, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    .line 101
    :cond_2
    if-eqz v1, :cond_4

    .line 104
    sparse-switch p2, :sswitch_data_0

    .line 121
    new-instance v3, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lmyorg/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v2, v3

    goto :goto_1

    .line 109
    :sswitch_0
    new-instance v2, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_1

    .line 111
    :sswitch_1
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_3

    .line 112
    new-instance v2, Lmyorg/bouncycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_1

    .line 117
    :sswitch_2
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/DERFactory;->createSet(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Z)Lmyorg/bouncycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_1

    .line 119
    :sswitch_3
    new-instance v2, Lmyorg/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERExternal;-><init>(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget v0, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v4

    .line 145
    .local v4, tag:I
    if-gtz v4, :cond_1

    .line 146
    if-nez v4, :cond_0

    .line 147
    new-instance v6, Ljava/io/IOException;

    const-string v7, "unexpected end-of-contents marker"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    :cond_0
    const/4 v6, 0x0

    .line 199
    :goto_0
    return-object v6

    .line 156
    :cond_1
    invoke-static {p0, v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v5

    .line 158
    .local v5, tagNo:I
    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 163
    .local v1, isConstructed:Z
    :goto_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 165
    .local v2, length:I
    if-gez v2, :cond_6

    .line 167
    if-nez v1, :cond_3

    .line 168
    new-instance v6, Ljava/io/IOException;

    const-string v7, "indefinite length primitive encoding encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    .end local v1           #isConstructed:Z
    .end local v2           #length:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 171
    .restart local v1       #isConstructed:Z
    .restart local v2       #length:I
    :cond_3
    new-instance v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 173
    .local v0, indIn:Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_4

    .line 174
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 176
    .local v3, sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    new-instance v6, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v6, v5, v3}, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 178
    .end local v3           #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    :cond_4
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_5

    .line 179
    new-instance v6, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v6, v4, v5, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 182
    :cond_5
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 186
    .restart local v3       #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    sparse-switch v5, :sswitch_data_0

    .line 196
    new-instance v6, Ljava/io/IOException;

    const-string v7, "unknown BER object encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :sswitch_0
    new-instance v6, Lmyorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 190
    :sswitch_1
    new-instance v6, Lmyorg/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 192
    :sswitch_2
    new-instance v6, Lmyorg/bouncycastle/asn1/BERSetParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSetParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 194
    :sswitch_3
    new-instance v6, Lmyorg/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/DERExternalParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERExternalParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    .line 199
    .end local v0           #indIn:Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v3           #sp:Lmyorg/bouncycastle/asn1/ASN1StreamParser;
    :cond_6
    invoke-virtual {p0, v4, v5, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto/16 :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
