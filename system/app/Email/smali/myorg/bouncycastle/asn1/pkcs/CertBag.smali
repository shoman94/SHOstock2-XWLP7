.class public Lmyorg/bouncycastle/asn1/pkcs/CertBag;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertBag.java"


# instance fields
.field certId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field certValue:Lmyorg/bouncycastle/asn1/DERObject;

.field seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 17
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lmyorg/bouncycastle/asn1/DERObject;

    .line 21
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V
    .locals 0
    .parameter "certId"
    .parameter "certValue"

    .prologue
    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lmyorg/bouncycastle/asn1/DERObject;

    .line 26
    return-void
.end method


# virtual methods
.method public getCertId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getCertValue()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 39
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 40
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 42
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
