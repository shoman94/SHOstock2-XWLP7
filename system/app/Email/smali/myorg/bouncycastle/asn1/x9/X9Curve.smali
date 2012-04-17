.class public Lmyorg/bouncycastle/asn1/x9/X9Curve;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X9Curve.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lmyorg/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x9/X9FieldID;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 18
    .parameter "fieldID"
    .parameter "seq"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    move-object/from16 v0, p0

    iget-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lmyorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    .line 41
    .local v14, p:Ljava/math/BigInteger;
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v14, v7}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 42
    .local v1, x9A:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v6, v14, v7}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 43
    .local v6, x9B:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v14, v8, v9}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 75
    .end local v1           #x9A:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6           #x9B:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    .end local v14           #p:Ljava/math/BigInteger;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 76
    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 78
    :cond_1
    return-void

    .line 45
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lmyorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 47
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/asn1/DERSequence;

    .line 48
    .local v15, parameters:Lmyorg/bouncycastle/asn1/DERSequence;
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 49
    .local v2, m:I
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 52
    .local v17, representation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x0

    .line 53
    .local v3, k1:I
    const/4 v4, 0x0

    .line 54
    .local v4, k2:I
    const/4 v5, 0x0

    .line 55
    .local v5, k3:I
    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 57
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 65
    :goto_1
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 67
    .restart local v1       #x9A:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v6, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 70
    .restart local v6       #x9B:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    new-instance v7, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_0

    .line 60
    .end local v1           #x9A:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    .end local v6           #x9B:Lmyorg/bouncycastle/asn1/x9/X9FieldElement;
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lmyorg/bouncycastle/asn1/DERSequence;

    .line 61
    .local v16, pentanomial:Lmyorg/bouncycastle/asn1/DERSequence;
    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 62
    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 63
    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    goto :goto_1
.end method

.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1
    .parameter "curve"
    .parameter "seed"

    .prologue
    .line 31
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 32
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 33
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    .line 34
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    .line 35
    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 112
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECCurve;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 114
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECCurve;->getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lmyorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 124
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1

    .line 115
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECCurve;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 117
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9Curve;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECCurve;->getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
