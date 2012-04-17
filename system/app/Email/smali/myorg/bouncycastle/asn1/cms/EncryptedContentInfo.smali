.class public Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedContentInfo.java"


# instance fields
.field private contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private encryptedContent:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 30
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 31
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 43
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 48
    .end local p0
    :goto_0
    return-object p0

    .line 47
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 51
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EncryptedContentInfo: "

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
.method public getContentEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedContent()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 88
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
