.class Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;
.super Ljava/lang/Object;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignerInf"
.end annotation


# instance fields
.field private final _digest:Ljava/security/MessageDigest;

.field private final _digestOID:Ljava/lang/String;

.field private final _encOID:Ljava/lang/String;

.field private final _key:Ljava/security/PrivateKey;

.field private final _sAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final _sigProvider:Ljava/security/Provider;

.field private final _signerIdentifier:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private final _unsAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/security/PrivateKey;Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/MessageDigest;Ljava/security/Provider;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "signerIdentifier"
    .parameter "digestOID"
    .parameter "encOID"
    .parameter "sAttr"
    .parameter "unsAttr"
    .parameter "digest"
    .parameter "sigProvider"

    .prologue
    .line 79
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_key:Ljava/security/PrivateKey;

    .line 81
    iput-object p3, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_signerIdentifier:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 82
    iput-object p4, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digestOID:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_encOID:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 85
    iput-object p7, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_unsAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 86
    iput-object p8, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digest:Ljava/security/MessageDigest;

    .line 87
    iput-object p9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sigProvider:Ljava/security/Provider;

    .line 88
    return-void
.end method


# virtual methods
.method getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digestOID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method

.method toSignerInfo(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 19
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digestOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, digestName:Ljava/lang/String;
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_encOID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, encName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, signatureName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 103
    .local v3, digAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    .line 104
    .local v12, hash:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v1, v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_digests:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_digestOID:Ljava/lang/String;

    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object v8, v12

    .line 117
    .local v8, bytesToSign:[B
    const/4 v4, 0x0

    .line 118
    .local v4, signedAttr:Lmyorg/bouncycastle/asn1/ASN1Set;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v1, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3, v12}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getBaseParameters(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v13

    .line 120
    .local v13, parameters:Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v17

    .line 125
    .local v17, signed:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getAttributeSet(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 128
    const-string v1, "DER"

    invoke-virtual {v4, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    .line 130
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sigProvider:Ljava/security/Provider;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v14

    .line 171
    .end local v13           #parameters:Ljava/util/Map;
    .end local v17           #signed:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .local v14, sig:Ljava/security/Signature;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_key:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v2, v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v14, v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 172
    invoke-virtual {v14, v8}, Ljava/security/Signature;->update([B)V

    .line 173
    invoke-virtual {v14}, Ljava/security/Signature;->sign()[B

    move-result-object v15

    .line 175
    .local v15, sigBytes:[B
    const/4 v7, 0x0

    .line 176
    .local v7, unsignedAttr:Lmyorg/bouncycastle/asn1/ASN1Set;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_unsAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v1, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3, v12}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getBaseParameters(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v13

    .line 178
    .restart local v13       #parameters:Ljava/util/Map;
    const-string v1, "encryptedDigest"

    invoke-virtual {v15}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_unsAttr:Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v18

    .line 183
    .local v18, unsigned:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getAttributeSet(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    .line 186
    .end local v13           #parameters:Ljava/util/Map;
    .end local v18           #unsigned:Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->this$0:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_encOID:Ljava/lang/String;

    invoke-virtual {v1, v2, v14}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getEncAlgorithmIdentifier(Ljava/lang/String;Ljava/security/Signature;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 188
    .local v5, encAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v1, Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_signerIdentifier:Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v6, v15}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1

    .line 134
    .end local v5           #encAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7           #unsignedAttr:Lmyorg/bouncycastle/asn1/ASN1Set;
    .end local v14           #sig:Ljava/security/Signature;
    .end local v15           #sigBytes:[B
    :cond_1
    const-string v1, "RSA"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    new-instance v9, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v9, v3, v12}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 136
    .local v9, dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v9, v1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    .line 137
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    const-string v2, "RSA"

    move-object/from16 v0, p0

    iget-object v6, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sigProvider:Ljava/security/Provider;

    invoke-virtual {v1, v2, v6}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v14

    .line 138
    .restart local v14       #sig:Ljava/security/Signature;
    goto :goto_0

    .end local v9           #dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v14           #sig:Ljava/security/Signature;
    :cond_2
    const-string v1, "DSA"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    const-string v2, "NONEwithDSA"

    move-object/from16 v0, p0

    iget-object v6, v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->_sigProvider:Ljava/security/Provider;

    invoke-virtual {v1, v2, v6}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v14

    .restart local v14       #sig:Ljava/security/Signature;
    goto/16 :goto_0

    .line 166
    .end local v14           #sig:Ljava/security/Signature;
    :cond_3
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "algorithm: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " not supported in base signatures."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
