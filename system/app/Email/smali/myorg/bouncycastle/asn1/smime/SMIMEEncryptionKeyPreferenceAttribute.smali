.class public Lmyorg/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;
.super Lmyorg/bouncycastle/asn1/cms/Attribute;
.source "SMIMEEncryptionKeyPreferenceAttribute.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 4
    .parameter "issAndSer"

    .prologue
    const/4 v3, 0x0

    .line 24
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v3, v3, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/cms/Attribute;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 25
    return-void
.end method
