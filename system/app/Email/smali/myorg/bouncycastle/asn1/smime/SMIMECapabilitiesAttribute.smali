.class public Lmyorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;
.super Lmyorg/bouncycastle/asn1/cms/Attribute;
.source "SMIMECapabilitiesAttribute.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;)V
    .locals 4
    .parameter "capabilities"

    .prologue
    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->toDEREncodableVector()Lmyorg/bouncycastle/asn1/DEREncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 12
    return-void
.end method
