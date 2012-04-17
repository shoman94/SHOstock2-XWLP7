.class public Lmyorg/bouncycastle/x509/X509Attribute;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Attribute.java"


# instance fields
.field attr:Lmyorg/bouncycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .parameter "at"

    .prologue
    .line 21
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509Attribute;->attr:Lmyorg/bouncycastle/asn1/x509/Attribute;

    .line 23
    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509Attribute;->attr:Lmyorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509Attribute;->attr:Lmyorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Attribute;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
