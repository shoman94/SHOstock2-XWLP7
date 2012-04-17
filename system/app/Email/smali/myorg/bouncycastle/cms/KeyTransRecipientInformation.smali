.class public Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;
.super Lmyorg/bouncycastle/cms/RecipientInformation;
.source "KeyTransRecipientInformation.java"


# instance fields
.field private info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 10
    .parameter "info"
    .parameter "encAlg"
    .parameter "macAlg"
    .parameter "authEncAlg"
    .parameter "data"

    .prologue
    .line 54
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/RecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    .line 56
    iput-object p1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    .line 57
    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    .line 59
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getRecipientIdentifier()Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v9

    .line 62
    .local v9, r:Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :try_start_0
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    .line 65
    .local v8, octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setSubjectKeyIdentifier([B)V

    .line 75
    .end local v8           #octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v7

    .line 69
    .local v7, iAnds:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    .line 70
    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v7           #iAnds:Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :catch_0
    move-exception v6

    .line 73
    .local v6, e:Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rid in KeyTransRecipientInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getExchangeEncryptionAlgorithmName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 78
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 1
    .parameter "key"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 2
    .parameter "key"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;

    move-result-object v0

    .line 154
    .local v0, sKey:Ljava/security/Key;
    invoke-virtual {p0, v0, p2}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v1

    return-object v1
.end method

.method protected getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;
    .locals 9
    .parameter "receiverPrivateKey"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    .line 87
    .local v3, encryptedKey:[B
    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getExchangeEncryptionAlgorithmName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, keyExchangeAlgorithm:Ljava/lang/String;
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 91
    .local v0, aid:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, alg:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v7, v5, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v4

    .line 100
    .local v4, keyCipher:Ljavax/crypto/Cipher;
    const/4 v7, 0x4

    :try_start_1
    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    const/4 v7, 0x3

    invoke-virtual {v4, v3, v1, v7}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v6

    .line 129
    .local v6, sKey:Ljava/security/Key;
    :goto_0
    return-object v6

    .line 103
    .end local v6           #sKey:Ljava/security/Key;
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/security/GeneralSecurityException;
    const/4 v7, 0x2

    :try_start_2
    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .restart local v6       #sKey:Ljava/security/Key;
    goto :goto_0

    .line 109
    .end local v2           #e:Ljava/security/GeneralSecurityException;
    .end local v6           #sKey:Ljava/security/Key;
    :catch_1
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/IllegalStateException;
    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 114
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .restart local v6       #sKey:Ljava/security/Key;
    goto :goto_0

    .line 115
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v6           #sKey:Ljava/security/Key;
    :catch_2
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 120
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .restart local v6       #sKey:Ljava/security/Key;
    goto :goto_0

    .line 121
    .end local v2           #e:Ljava/lang/UnsupportedOperationException;
    .end local v6           #sKey:Ljava/security/Key;
    :catch_3
    move-exception v2

    .line 124
    .local v2, e:Ljava/security/ProviderException;
    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 126
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_8

    .restart local v6       #sKey:Ljava/security/Key;
    goto :goto_0

    .line 130
    .end local v2           #e:Ljava/security/ProviderException;
    .end local v4           #keyCipher:Ljavax/crypto/Cipher;
    .end local v6           #sKey:Ljava/security/Key;
    :catch_4
    move-exception v2

    .line 131
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "can\'t find algorithm."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 132
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v2

    .line 133
    .local v2, e:Ljava/security/InvalidKeyException;
    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "key invalid in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 134
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v2

    .line 135
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "required padding not supported."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 136
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_7
    move-exception v2

    .line 137
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "illegal blocksize in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 138
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_8
    move-exception v2

    .line 139
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "bad padding in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method
