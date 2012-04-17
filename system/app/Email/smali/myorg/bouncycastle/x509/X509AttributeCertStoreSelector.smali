.class public Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertStoreSelector.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field private attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

.field private issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 162
    .local v0, sel:Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 163
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCertificateValid()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 164
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 165
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    .line 166
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    .line 167
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetGroups()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    .line 168
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getTargetNames()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    .line 169
    return-object v0
.end method

.method public getAttributeCert()Lmyorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 13
    .parameter "obj"

    .prologue
    const/4 v11, 0x0

    .line 62
    instance-of v10, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-nez v10, :cond_0

    move v10, v11

    .line 152
    :goto_0
    return v10

    :cond_0
    move-object v0, p1

    .line 66
    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 68
    .local v0, attrCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v10, :cond_1

    .line 69
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v10, :cond_2

    .line 74
    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v11

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    if-eqz v10, :cond_3

    .line 79
    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->holder:Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    invoke-virtual {v10, v12}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v11

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    if-eqz v10, :cond_4

    .line 84
    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v10

    iget-object v12, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->issuer:Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    invoke-virtual {v10, v12}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    .line 85
    goto :goto_0

    .line 89
    :cond_4
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v10, :cond_5

    .line 91
    :try_start_0
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->attributeCertificateValid:Ljava/util/Date;

    invoke-interface {v0, v10}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :cond_5
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 100
    :cond_6
    sget-object v10, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v6

    .line 102
    .local v6, targetInfoExt:[B
    if-eqz v6, :cond_e

    .line 105
    :try_start_1
    new-instance v12, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/DEROctetString;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v10

    invoke-direct {v12, v10}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 113
    .local v7, targetinfo:Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lmyorg/bouncycastle/asn1/x509/Targets;

    move-result-object v9

    .line 114
    .local v9, targetss:[Lmyorg/bouncycastle/asn1/x509/Targets;
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, found:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v10, v9

    if-ge v3, v10, :cond_9

    .line 118
    aget-object v5, v9, v3

    .line 119
    .local v5, t:Lmyorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lmyorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 120
    .local v8, targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_7

    .line 121
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetNames:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/Target;->getTargetName()Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 123
    const/4 v2, 0x1

    .line 117
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #t:Lmyorg/bouncycastle/asn1/x509/Targets;
    .end local v6           #targetInfoExt:[B
    .end local v7           #targetinfo:Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    .end local v8           #targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    .end local v9           #targetss:[Lmyorg/bouncycastle/asn1/x509/Targets;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/cert/CertificateExpiredException;
    move v10, v11

    .line 93
    goto/16 :goto_0

    .line 94
    .end local v1           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/security/cert/CertificateNotYetValidException;
    move v10, v11

    .line 95
    goto/16 :goto_0

    .line 108
    .end local v1           #e:Ljava/security/cert/CertificateNotYetValidException;
    .restart local v6       #targetInfoExt:[B
    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v10, v11

    .line 109
    goto/16 :goto_0

    .line 110
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/IllegalArgumentException;
    move v10, v11

    .line 111
    goto/16 :goto_0

    .line 120
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #found:Z
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #t:Lmyorg/bouncycastle/asn1/x509/Targets;
    .restart local v7       #targetinfo:Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    .restart local v8       #targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    .restart local v9       #targetss:[Lmyorg/bouncycastle/asn1/x509/Targets;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    .end local v4           #j:I
    .end local v5           #t:Lmyorg/bouncycastle/asn1/x509/Targets;
    .end local v8           #targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    :cond_9
    if-nez v2, :cond_a

    move v10, v11

    .line 129
    goto/16 :goto_0

    .line 132
    .end local v2           #found:Z
    .end local v3           #i:I
    :cond_a
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 133
    const/4 v2, 0x0

    .line 135
    .restart local v2       #found:Z
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v10, v9

    if-ge v3, v10, :cond_d

    .line 136
    aget-object v5, v9, v3

    .line 137
    .restart local v5       #t:Lmyorg/bouncycastle/asn1/x509/Targets;
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/Targets;->getTargets()[Lmyorg/bouncycastle/asn1/x509/Target;

    move-result-object v8

    .line 138
    .restart local v8       #targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_b

    .line 139
    iget-object v10, p0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->targetGroups:Ljava/util/Collection;

    aget-object v12, v8, v4

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x509/Target;->getTargetGroup()Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-static {v12}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 141
    const/4 v2, 0x1

    .line 135
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 138
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 146
    .end local v4           #j:I
    .end local v5           #t:Lmyorg/bouncycastle/asn1/x509/Targets;
    .end local v8           #targets:[Lmyorg/bouncycastle/asn1/x509/Target;
    :cond_d
    if-nez v2, :cond_e

    move v10, v11

    .line 147
    goto/16 :goto_0

    .line 152
    .end local v2           #found:Z
    .end local v3           #i:I
    .end local v6           #targetInfoExt:[B
    .end local v7           #targetinfo:Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    .end local v9           #targetss:[Lmyorg/bouncycastle/asn1/x509/Targets;
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
