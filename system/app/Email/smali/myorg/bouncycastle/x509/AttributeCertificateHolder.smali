.class public Lmyorg/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field final holder:Lmyorg/bouncycastle/asn1/x509/Holder;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    .line 53
    return-void
.end method

.method private getNames([Lmyorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5
    .parameter "names"

    .prologue
    .line 198
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_1

    .line 201
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 203
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4
    .parameter "names"

    .prologue
    .line 214
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lmyorg/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 218
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    .line 219
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
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

.method private matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 178
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 180
    .local v2, names:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 181
    aget-object v0, v2, v1

    .line 183
    .local v0, gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 185
    :try_start_0
    new-instance v4, Lmyorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lmyorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Lmyorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const/4 v3, 0x1

    .line 194
    .end local v0           #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 189
    .restart local v0       #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v3

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0           #gn:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 270
    new-instance v1, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 323
    if-ne p1, p0, :cond_0

    .line 324
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    .line 327
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v1, :cond_1

    .line 328
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 331
    check-cast v0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 333
    .local v0, other:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;
    iget-object v1, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    .line 145
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDigestedObjectType()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lmyorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lmyorg/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectDigest()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    .line 157
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 341
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 345
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .parameter "cert"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 278
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 281
    .local v2, x509Cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 282
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

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

    invoke-static {v2}, Lmyorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lmyorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 288
    :cond_3
    iget-object v5, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 289
    invoke-static {v2}, Lmyorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lmyorg/bouncycastle/jce/X509Principal;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    .line 291
    goto :goto_0

    .line 294
    :cond_4
    iget-object v3, p0, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lmyorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lmyorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, md:Ljava/security/MessageDigest;
    :try_start_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v5, "myBC"

    invoke-static {v3, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 302
    :try_start_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 311
    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v5

    invoke-static {v3, v5}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 315
    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 316
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    goto/16 :goto_0

    .line 308
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v1       #md:Ljava/security/MessageDigest;
    :pswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
