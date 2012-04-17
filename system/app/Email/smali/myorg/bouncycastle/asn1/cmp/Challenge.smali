.class public Lmyorg/bouncycastle/asn1/cmp/Challenge;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Challenge.java"


# instance fields
.field private challenge:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private owf:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private witness:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .parameter "v"
    .parameter "obj"

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/Challenge;->owf:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/cmp/Challenge;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/Challenge;->witness:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/Challenge;->challenge:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 79
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
