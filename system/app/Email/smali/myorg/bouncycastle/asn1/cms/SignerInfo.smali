.class public Lmyorg/bouncycastle/asn1/cms/SignerInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 56
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 58
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 59
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 60
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 65
    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 75
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 81
    :goto_1
    return-void

    .line 69
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 70
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 79
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_1
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 2
    .parameter "sid"
    .parameter "digAlgorithm"
    .parameter "authenticatedAttributes"
    .parameter "digEncryptionAlgorithm"
    .parameter "encryptedDigest"
    .parameter "unauthenticatedAttributes"

    .prologue
    .line 40
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 41
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 47
    :goto_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 48
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 50
    iput-object p4, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    iput-object p5, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 52
    iput-object p6, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 53
    return-void

    .line 44
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    .line 32
    .end local p0
    :goto_0
    return-object p0

    .line 31
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 35
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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


# virtual methods
.method public getAuthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 135
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 136
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 137
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 144
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 146
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 150
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
