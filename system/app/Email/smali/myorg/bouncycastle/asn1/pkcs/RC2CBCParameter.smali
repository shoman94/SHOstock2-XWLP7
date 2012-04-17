.class public Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RC2CBCParameter.java"


# instance fields
.field iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .parameter "parameterVersion"
    .parameter "iv"

    .prologue
    .line 32
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 34
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 40
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 43
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "iv"

    .prologue
    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 29
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
    .locals 2
    .parameter "o"

    .prologue
    .line 20
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 24
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in RC2CBCParameter factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getRC2ParameterVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 62
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
