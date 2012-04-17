.class public Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .parameter "keyid"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 53
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .parameter "spki"

    .prologue
    .line 61
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 62
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 63
    return-void
.end method

.method private static getDigest(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .parameter "spki"

    .prologue
    const/4 v4, 0x0

    .line 114
    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 115
    .local v1, digest:Lmyorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 117
    .local v2, resBuf:[B
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 118
    .local v0, bytes:[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 119
    invoke-interface {v1, v2, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 120
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3
    .parameter "obj"

    .prologue
    .line 27
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    .line 40
    .end local p0
    :goto_0
    return-object p0

    .line 31
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    move-object p0, v0

    goto :goto_0

    .line 35
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 36
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    .line 39
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_3

    .line 40
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    .end local p0
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lmyorg/bouncycastle/asn1/x509/X509Extension;)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    goto :goto_0

    .line 43
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SubjectKeyIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 23
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
