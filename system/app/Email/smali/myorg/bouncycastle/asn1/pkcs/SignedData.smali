.class public Lmyorg/bouncycastle/asn1/pkcs/SignedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SignedData.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

.field private crls:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 49
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 50
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 51
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObject;

    .line 61
    .local v1, o:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v3, v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 62
    check-cast v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    .line 64
    .local v2, tagged:Lmyorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :pswitch_0
    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-static {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 75
    .end local v2           #tagged:Lmyorg/bouncycastle/asn1/DERTaggedObject;
    :cond_0
    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Set;

    .end local v1           #o:Lmyorg/bouncycastle/asn1/DERObject;
    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    .line 78
    :cond_1
    return-void

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERInteger;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .parameter "_version"
    .parameter "_digestAlgorithms"
    .parameter "_contentInfo"
    .parameter "_certificates"
    .parameter "_crls"
    .parameter "_signerInfos"

    .prologue
    .line 37
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 39
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 40
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 41
    iput-object p4, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 42
    iput-object p5, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 43
    iput-object p6, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 44
    return-void
.end method


# virtual methods
.method public getCRLs()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 124
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->contentInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 127
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->certificates:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 132
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->crls:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;->signerInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 137
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
