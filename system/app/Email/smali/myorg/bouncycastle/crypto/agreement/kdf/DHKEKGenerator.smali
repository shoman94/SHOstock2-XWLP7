.class public Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "DHKEKGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private final digest:Lmyorg/bouncycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method private integerToBytes(I)[B
    .locals 3
    .parameter "keySize"

    .prologue
    .line 109
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 111
    .local v0, val:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 112
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 114
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-object v0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 18
    .parameter "out"
    .parameter "outOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v0, p1

    array-length v13, v0

    sub-int v13, v13, p3

    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    .line 45
    new-instance v13, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v14, "output buffer too small"

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 48
    :cond_0
    move/from16 v0, p3

    int-to-long v7, v0

    .line 49
    .local v7, oBytes:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    .line 57
    .local v10, outLen:I
    const-wide v13, 0x1ffffffffL

    cmp-long v13, v7, v13

    if-lez v13, :cond_1

    .line 58
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Output length too large"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 61
    :cond_1
    int-to-long v13, v10

    add-long/2addr v13, v7

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    int-to-long v15, v10

    div-long/2addr v13, v15

    long-to-int v3, v13

    .line 63
    .local v3, cThreshold:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v5, v13, [B

    .line 65
    .local v5, dig:[B
    const/4 v4, 0x1

    .line 67
    .local v4, counter:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 71
    new-instance v11, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    .local v11, v1:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v12, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    .local v12, v2:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v13}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    new-instance v13, Lmyorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v14

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v13}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 78
    new-instance v13, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v12}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v11, v13}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    if-eqz v13, :cond_2

    .line 81
    new-instance v13, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x1

    const/4 v15, 0x0

    new-instance v16, Lmyorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v13 .. v16}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11, v13}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    :cond_2
    new-instance v13, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-instance v16, Lmyorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v13 .. v16}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11, v13}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 86
    new-instance v13, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v11}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v13}, Lmyorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v9

    .line 88
    .local v9, other:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    array-length v15, v9

    invoke-interface {v13, v9, v14, v15}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    const/4 v14, 0x0

    invoke-interface {v13, v5, v14}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 92
    move/from16 v0, p3

    if-le v0, v10, :cond_3

    .line 93
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v5, v13, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int p2, p2, v10

    .line 95
    sub-int p3, p3, v10

    .line 100
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v5, v13, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 103
    .end local v9           #other:[B
    .end local v11           #v1:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12           #v2:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 105
    return p3
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    .line 32
    .local v0, params:Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 33
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 34
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 35
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 36
    return-void
.end method
