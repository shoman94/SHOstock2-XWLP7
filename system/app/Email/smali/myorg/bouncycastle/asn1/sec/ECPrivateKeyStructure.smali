.class public Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ECPrivateKeyStructure.java"


# instance fields
.field private seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .parameter "key"
    .parameter "parameters"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/DERBitString;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/DERBitString;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5
    .parameter "key"
    .parameter "publicKey"
    .parameter "parameters"

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    invoke-static {p1}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 50
    .local v0, bytes:[B
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 52
    .local v1, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 53
    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 55
    if-eqz p3, :cond_0

    .line 56
    new-instance v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 59
    :cond_0
    if-eqz p2, :cond_1

    .line 60
    new-instance v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v4, v4, p2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 63
    :cond_1
    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 64
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 28
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 30
    return-void
.end method

.method private getObjectInTag(I)Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 4
    .parameter "tagNo"

    .prologue
    .line 81
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 83
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 86
    .local v1, obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v3, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 87
    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 88
    .local v2, tag:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 89
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Object;

    .line 93
    .end local v1           #obj:Lmyorg/bouncycastle/asn1/DEREncodable;
    .end local v2           #tag:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 69
    .local v0, octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getPublicKey()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
