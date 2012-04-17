.class public Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ObjectDigestInfo.java"


# instance fields
.field digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field digestedObjectType:Lmyorg/bouncycastle/asn1/DEREnumerated;

.field objectDigest:Lmyorg/bouncycastle/asn1/DERBitString;

.field otherObjectTypeID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .parameter "seq"

    .prologue
    const/4 v3, 0x4

    .line 99
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 100
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lmyorg/bouncycastle/asn1/DEREnumerated;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, offset:I
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 115
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 116
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 58
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    .line 63
    .end local p0
    :goto_0
    return-object p0

    .line 62
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 66
    .restart local p0
    :cond_2
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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 71
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestedObjectType()Lmyorg/bouncycastle/asn1/DEREnumerated;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lmyorg/bouncycastle/asn1/DEREnumerated;

    return-object v0
.end method

.method public getObjectDigest()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 156
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lmyorg/bouncycastle/asn1/DEREnumerated;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 158
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 163
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 165
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
