.class public Lmyorg/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;
.source "X509Extension.java"


# instance fields
.field critical:Z

.field value:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERBoolean;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 19
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->value:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 20
    return-void
.end method

.method public constructor <init>(ZLmyorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 24
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->value:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 25
    return-void
.end method

.method public static convertValueToObject(Lmyorg/bouncycastle/asn1/x509/X509Extension;)Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 4
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t convert extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 44
    instance-of v2, p1, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    if-nez v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 48
    check-cast v0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    .line 50
    .local v0, other:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->value:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    return v0
.end method
