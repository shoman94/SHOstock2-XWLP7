.class public Lmyorg/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 22
    .parameter "keyInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 84
    .local v7, algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    new-instance v21, Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 89
    .local v21, pubKey:Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 155
    .end local v21           #pubKey:Lmyorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    :goto_0
    return-object v2

    .line 90
    :cond_1
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    :cond_2
    new-instance v20, Lmyorg/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 94
    .local v20, params:Lmyorg/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 96
    .local v12, derY:Lmyorg/bouncycastle/asn1/DERInteger;
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v17

    .line 97
    .local v17, lVal:Ljava/math/BigInteger;
    if-nez v17, :cond_3

    const/16 v16, 0x0

    .line 98
    .local v16, l:I
    :goto_1
    new-instance v13, Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-direct {v13, v2, v3, v4, v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 100
    .local v13, dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    goto :goto_0

    .line 97
    .end local v13           #dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;
    .end local v16           #l:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    goto :goto_1

    .line 101
    .end local v12           #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    .end local v17           #lVal:Ljava/math/BigInteger;
    .end local v20           #params:Lmyorg/bouncycastle/asn1/pkcs/DHParameter;
    :cond_4
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    new-instance v20, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 104
    .local v20, params:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 106
    .restart local v12       #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    goto/16 :goto_0

    .line 108
    .end local v12           #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    .end local v20           #params:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    :cond_5
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 110
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 111
    .restart local v12       #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    .line 113
    .local v10, de:Lmyorg/bouncycastle/asn1/DEREncodable;
    const/16 v19, 0x0

    .line 114
    .local v19, parameters:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    if-eqz v10, :cond_7

    .line 115
    invoke-interface {v10}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v20

    .line 116
    .local v20, params:Lmyorg/bouncycastle/asn1/x509/DSAParameter;
    new-instance v19, Lmyorg/bouncycastle/crypto/params/DSAParameters;

    .end local v19           #parameters:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 119
    .end local v20           #params:Lmyorg/bouncycastle/asn1/x509/DSAParameter;
    .restart local v19       #parameters:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    :cond_7
    new-instance v2, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 120
    .end local v10           #de:Lmyorg/bouncycastle/asn1/DEREncodable;
    .end local v12           #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    .end local v19           #parameters:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    :cond_8
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 121
    new-instance v20, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 123
    .local v20, params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    const/4 v1, 0x0

    .line 125
    .local v1, dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 126
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v18

    check-cast v18, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 127
    .local v18, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v14

    .line 129
    .local v14, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v14, :cond_9

    .line 130
    invoke-static/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v14

    .line 132
    if-nez v14, :cond_9

    .line 133
    invoke-static/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v14

    .line 135
    if-nez v14, :cond_9

    .line 136
    invoke-static/range {v18 .. v18}, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v14

    .line 141
    :cond_9
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 149
    .end local v18           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v1       #dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v8

    .line 150
    .local v8, bits:Lmyorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    .line 151
    .local v9, data:[B
    new-instance v15, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v15, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 153
    .local v15, key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v11, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-direct {v11, v2, v15}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 155
    .local v11, derQ:Lmyorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    .line 144
    .end local v8           #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .end local v9           #data:[B
    .end local v11           #derQ:Lmyorg/bouncycastle/asn1/x9/X9ECPoint;
    .end local v14           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v15           #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_a
    new-instance v14, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v14, v2}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 145
    .restart local v14       #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    .end local v1           #dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v1       #dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_2

    .line 157
    .end local v1           #dParams:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v14           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v20           #params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
