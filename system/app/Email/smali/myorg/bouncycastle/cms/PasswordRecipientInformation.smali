.class public Lmyorg/bouncycastle/cms/PasswordRecipientInformation;
.super Lmyorg/bouncycastle/cms/RecipientInformation;
.source "PasswordRecipientInformation.java"


# instance fields
.field private info:Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 6
    .parameter "info"
    .parameter "encAlg"
    .parameter "macAlg"
    .parameter "authEncAlg"
    .parameter "data"

    .prologue
    .line 49
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/RecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    .line 51
    iput-object p1, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    .line 52
    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    .line 53
    return-void
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
    .line 132
    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 13
    .parameter "key"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v10, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 142
    .local v5, kekAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 143
    .local v7, kekAlgParams:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    iget-object v10, p0, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    .line 144
    .local v3, encryptedKey:[B
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, kekAlgName:Ljava/lang/String;
    sget-object v10, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v10, v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getRFC3211WrapperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 149
    .local v8, keyCipher:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    invoke-direct {v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 151
    .local v4, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v10, 0x4

    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Lmyorg/bouncycastle/cms/CMSPBEKey;

    .end local p1
    invoke-virtual {p1, v6}, Lmyorg/bouncycastle/cms/CMSPBEKey;->getEncoded(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v10, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 157
    .local v0, aid:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, alg:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {v8, v3, v1, v10}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v9

    .line 160
    .local v9, sKey:Ljava/security/Key;
    invoke-virtual {p0, v9, p2}, Lmyorg/bouncycastle/cms/PasswordRecipientInformation;->getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    return-object v10

    .line 161
    .end local v0           #aid:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v1           #alg:Ljava/lang/String;
    .end local v3           #encryptedKey:[B
    .end local v4           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #kekAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6           #kekAlgName:Ljava/lang/String;
    .end local v7           #kekAlgParams:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8           #keyCipher:Ljavax/crypto/Cipher;
    .end local v9           #sKey:Ljava/security/Key;
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lmyorg/bouncycastle/cms/CMSException;

    const-string v11, "can\'t find algorithm."

    invoke-direct {v10, v11, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 163
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 164
    .local v2, e:Ljava/security/InvalidKeyException;
    new-instance v10, Lmyorg/bouncycastle/cms/CMSException;

    const-string v11, "key invalid in message."

    invoke-direct {v10, v11, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 165
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    .line 166
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v10, Lmyorg/bouncycastle/cms/CMSException;

    const-string v11, "required padding not supported."

    invoke-direct {v10, v11, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 167
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v2

    .line 168
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v10, Lmyorg/bouncycastle/cms/CMSException;

    const-string v11, "invalid iv."

    invoke-direct {v10, v11, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method
