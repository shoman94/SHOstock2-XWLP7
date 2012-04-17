.class public Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.super Lmyorg/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$1;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;
    }
.end annotation


# instance fields
.field private _bufferSize:I

.field private _messageDigests:Ljava/util/List;

.field private _signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "rand"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    .line 206
    return-void
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    return-object v0
.end method

.method private static attachDigestsToOutputStream(Ljava/util/List;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .parameter "digests"
    .parameter "s"

    .prologue
    .line 723
    move-object v2, p1

    .line 724
    .local v2, result:Ljava/io/OutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 725
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 727
    .local v0, digest:Ljava/security/MessageDigest;
    new-instance v3, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;

    invoke-direct {v3, v0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {v2, v3}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 728
    goto :goto_0

    .line 729
    .end local v0           #digest:Ljava/security/MessageDigest;
    :cond_0
    return-object v2
.end method

.method private calculateVersion(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 12
    .parameter "contentOid"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 650
    const/4 v4, 0x0

    .line 651
    .local v4, otherCert:Z
    const/4 v5, 0x0

    .line 652
    .local v5, otherCrl:Z
    const/4 v0, 0x0

    .line 653
    .local v0, attrCertV1Found:Z
    const/4 v1, 0x0

    .line 655
    .local v1, attrCertV2Found:Z
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 656
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 657
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 658
    .local v3, obj:Ljava/lang/Object;
    instance-of v7, v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 659
    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 661
    .local v6, tagged:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 662
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 664
    const/4 v1, 0x1

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 666
    const/4 v4, 0x1

    goto :goto_0

    .line 672
    .end local v2           #it:Ljava/util/Iterator;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v6           #tagged:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    if-eqz v4, :cond_4

    .line 673
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    .line 706
    :goto_1
    return-object v7

    .line 676
    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    if-eqz v7, :cond_6

    if-nez v4, :cond_6

    .line 679
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #it:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 681
    .restart local v3       #obj:Ljava/lang/Object;
    instance-of v7, v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_5

    .line 682
    const/4 v5, 0x1

    goto :goto_2

    .line 687
    .end local v2           #it:Ljava/util/Iterator;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_6
    if-eqz v5, :cond_7

    .line 688
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    .line 691
    :cond_7
    if-eqz v1, :cond_8

    .line 692
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    .line 695
    :cond_8
    if-eqz v0, :cond_9

    .line 696
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    .line 699
    :cond_9
    sget-object v7, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 700
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->checkForVersion3(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 701
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    .line 703
    :cond_a
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v10}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    .line 706
    :cond_b
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1
.end method

.method private checkForVersion3(Ljava/util/List;)Z
    .locals 4
    .parameter "signerInfos"

    .prologue
    .line 711
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/SignerInformation;->toSignerInfo()Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    .line 714
    .local v1, s:Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 715
    const/4 v2, 0x1

    .line 719
    .end local v1           #s:Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .parameter "s"

    .prologue
    .line 733
    if-nez p0, :cond_0

    new-instance p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;

    .end local p0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$1;)V

    :cond_0
    return-object p0
.end method

.method private static getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 737
    if-nez p0, :cond_0

    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;

    invoke-direct {v0, p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V
    .locals 8
    .parameter "key"
    .parameter "cert"
    .parameter "encryptionOID"
    .parameter "digestOID"
    .parameter "signedAttr"
    .parameter "unsignedAttr"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v5, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5, p5}, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v6, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v6, p6}, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    .line 329
    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V
    .locals 13
    .parameter "key"
    .parameter "cert"
    .parameter "encryptionOID"
    .parameter "digestOID"
    .parameter "signedAttrGenerator"
    .parameter "unsignedAttrGenerator"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 343
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, digestName:Ljava/lang/String;
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p7

    invoke-virtual {v1, v11, v0}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 346
    .local v9, dig:Ljava/security/MessageDigest;
    iget-object v12, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    new-instance v1, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;

    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSignerIdentifier(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/security/PrivateKey;Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/MessageDigest;Ljava/security/Provider;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V
    .locals 7
    .parameter "key"
    .parameter "cert"
    .parameter "digestOID"
    .parameter "signedAttr"
    .parameter "unsignedAttr"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v4, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v4, p4}, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v5, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v5, p5}, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    .line 315
    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V
    .locals 8
    .parameter "key"
    .parameter "cert"
    .parameter "digestOID"
    .parameter "signedAttrGenerator"
    .parameter "unsignedAttrGenerator"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p3}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    .line 337
    return-void
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .parameter "out"
    .parameter "eContentType"
    .parameter "encapsulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 14
    .parameter "out"
    .parameter "eContentType"
    .parameter "encapsulate"
    .parameter "dataOutputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v5, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v5, p1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 586
    .local v5, sGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v1, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 591
    new-instance v6, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v6, v1, v2, v4}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 593
    .local v6, sigGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->calculateVersion(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v6, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 595
    new-instance v9, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 600
    .local v9, digestAlgs:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/cms/SignerInformation;

    .line 602
    .local v12, signer:Lmyorg/bouncycastle/cms/SignerInformation;
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v12}, Lmyorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 608
    .end local v12           #signer:Lmyorg/bouncycastle/cms/SignerInformation;
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;

    .line 610
    .local v12, signer:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;
    invoke-virtual {v12}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    .line 613
    .end local v12           #signer:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;
    :cond_1
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v9}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 615
    new-instance v7, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 616
    .local v7, eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;
    new-instance v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 619
    if-eqz p3, :cond_2

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v13, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    invoke-static {v1, v2, v4, v13}, Lmyorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v10

    .line 623
    .local v10, encapStream:Ljava/io/OutputStream;
    :goto_2
    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8

    .line 626
    .local v8, contentStream:Ljava/io/OutputStream;
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    invoke-static {v1, v8}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->attachDigestsToOutputStream(Ljava/util/List;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 628
    .local v3, digStream:Ljava/io/OutputStream;
    new-instance v1, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Ljava/lang/String;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v1

    .line 619
    .end local v3           #digStream:Ljava/io/OutputStream;
    .end local v8           #contentStream:Ljava/io/OutputStream;
    .end local v10           #encapStream:Ljava/io/OutputStream;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .parameter "out"
    .parameter "encapsulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
