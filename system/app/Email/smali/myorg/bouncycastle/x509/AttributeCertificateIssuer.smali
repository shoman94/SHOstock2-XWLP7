.class public Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field final form:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .parameter "issuer"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    .line 35
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 48
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lmyorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_1

    .line 49
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v5, Lmyorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 54
    .local v3, name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    :goto_0
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 56
    .local v4, names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-eq v1, v5, :cond_2

    .line 59
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 61
    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v1           #i:I
    .end local v2           #l:Ljava/util/List;
    .end local v3           #name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v4           #names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    .restart local v3       #name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_0

    .line 62
    .restart local v1       #i:I
    .restart local v2       #l:Ljava/util/List;
    .restart local v4       #names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 91
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 93
    .local v2, names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 94
    aget-object v0, v2, v1

    .line 96
    .local v0, gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 98
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const/4 v3, 0x1

    .line 107
    .end local v0           #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 102
    .restart local v0       #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v3

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0           #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lmyorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 145
    if-ne p1, p0, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    .line 149
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v1, :cond_1

    .line 150
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    .line 155
    .local v0, other:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 82
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    .line 83
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 163
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .parameter "cert"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    move v3, v4

    .line 141
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 119
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 121
    .local v2, x509Cert:Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lmyorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_5

    .line 122
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/x509/V2Form;

    .line 123
    .local v0, issuer:Lmyorg/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 124
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    .line 131
    .local v1, name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0           #issuer:Lmyorg/bouncycastle/asn1/x509/V2Form;
    :cond_4
    move v3, v4

    .line 141
    goto :goto_0

    .line 135
    .end local v1           #name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_5
    iget-object v1, p0, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    .line 136
    .restart local v1       #name:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0
.end method
