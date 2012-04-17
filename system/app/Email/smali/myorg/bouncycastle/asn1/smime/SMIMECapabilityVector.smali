.class public Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
.super Ljava/lang/Object;
.source "SMIMECapabilityVector.java"


# instance fields
.field private capabilities:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 2
    .parameter "capability"

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 19
    return-void
.end method

.method public addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V
    .locals 3
    .parameter "capability"
    .parameter "value"

    .prologue
    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 24
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 25
    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 27
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 28
    return-void
.end method

.method public toDEREncodableVector()Lmyorg/bouncycastle/asn1/DEREncodableVector;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->capabilities:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    return-object v0
.end method
