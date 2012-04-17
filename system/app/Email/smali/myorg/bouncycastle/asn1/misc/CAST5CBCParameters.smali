.class public Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CAST5CBCParameters.java"


# instance fields
.field iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field keyLength:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 25
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 28
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "iv"
    .parameter "keyLength"

    .prologue
    .line 20
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 23
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;
    .locals 2
    .parameter "o"

    .prologue
    .line 11
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    .line 14
    .end local p0
    :goto_0
    return-object p0

    .line 13
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 17
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in CAST5CBCParameter factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 53
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 54
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 56
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
