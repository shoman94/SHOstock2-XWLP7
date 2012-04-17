.class public Lmyorg/bouncycastle/asn1/x509/NameConstraints;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "NameConstraints.java"


# instance fields
.field private excluded:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private permitted:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .parameter "seq"

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 20
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 22
    .local v1, o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 24
    :pswitch_0
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->permitted:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-static {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->excluded:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 31
    .end local v1           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getExcludedSubtrees()Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->excluded:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getPermittedSubtrees()Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->permitted:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->permitted:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->permitted:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->excluded:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->excluded:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
