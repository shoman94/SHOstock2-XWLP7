.class public Lcom/seven/util/SamsungUrlEncryptionUtils;
.super Ljava/lang/Object;
.source "SamsungUrlEncryptionUtils.java"


# static fields
.field private static ALGORITHM:Ljava/lang/String;

.field private static BUF_LEN:I

.field private static SAMSUNG_KEY:Ljava/lang/String;

.field private static TRANSFORM:Ljava/lang/String;

.field private static mBase64DecMap:[B

.field private static mBase64EncMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const-string v2, "AES"

    sput-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->ALGORITHM:Ljava/lang/String;

    .line 32
    const-string v2, "AES/ECB/PKCS5Padding"

    sput-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->TRANSFORM:Ljava/lang/String;

    .line 34
    const/16 v2, 0xf

    sput v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->BUF_LEN:I

    .line 36
    const-string v2, "fe134abce420daeccf3253abe99dd321"

    sput-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->SAMSUNG_KEY:Ljava/lang/String;

    .line 45
    const/16 v2, 0x40

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 57
    .local v0, base64Map:[B
    sput-object v0, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    .line 58
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64DecMap:[B

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 60
    sget-object v2, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64DecMap:[B

    sget-object v3, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    aget-byte v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 45
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .locals 9
    .parameter "aData"

    .prologue
    .line 276
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 277
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can not decode NULL or empty string."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 282
    .local v0, data:[B
    array-length v5, v0

    .line 283
    .local v5, tail:I
    :goto_0
    add-int/lit8 v6, v5, -0x1

    aget-byte v6, v0, v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2

    .line 284
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 286
    :cond_2
    array-length v6, v0

    div-int/lit8 v6, v6, 0x4

    sub-int v6, v5, v6

    new-array v1, v6, [B

    .line 289
    .local v1, decodedBuf:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 290
    sget-object v6, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64DecMap:[B

    aget-byte v7, v0, v3

    aget-byte v6, v6, v7

    aput-byte v6, v0, v3

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 294
    :cond_3
    const/4 v4, 0x0

    .local v4, srcIndex:I
    const/4 v2, 0x0

    .local v2, destIndex:I
    :goto_2
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ge v2, v6, :cond_4

    .line 295
    aget-byte v6, v0, v4

    shl-int/lit8 v6, v6, 0x2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 296
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, v0, v8

    ushr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 297
    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 294
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 301
    :cond_4
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 302
    aget-byte v6, v0, v4

    shl-int/lit8 v6, v6, 0x2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 303
    :cond_5
    add-int/lit8 v2, v2, 0x1

    array-length v6, v1

    if-ge v2, v6, :cond_6

    .line 304
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v0, v7

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 306
    :cond_6
    return-object v1
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 8
    .parameter "aData"

    .prologue
    .line 228
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 229
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can not encode NULL or empty byte array."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_1
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 235
    .local v2, encodedBuf:[B
    const/4 v4, 0x0

    .local v4, srcIndex:I
    const/4 v0, 0x0

    .local v0, destIndex:I
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_2

    .line 236
    add-int/lit8 v1, v0, 0x1

    .end local v0           #destIndex:I
    .local v1, destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    aget-byte v6, p0, v4

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    .line 237
    add-int/lit8 v0, v1, 0x1

    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v7, p0, v4

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v2, v1

    .line 239
    add-int/lit8 v1, v0, 0x1

    .end local v0           #destIndex:I
    .restart local v1       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    .line 241
    add-int/lit8 v0, v1, 0x1

    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v1

    .line 235
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 245
    :cond_2
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 246
    add-int/lit8 v1, v0, 0x1

    .end local v0           #destIndex:I
    .restart local v1       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    aget-byte v6, p0, v4

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    .line 247
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    .line 248
    add-int/lit8 v0, v1, 0x1

    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v7, p0, v4

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v2, v1

    .line 250
    add-int/lit8 v1, v0, 0x1

    .end local v0           #destIndex:I
    .restart local v1       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    move v0, v1

    .line 257
    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    :cond_3
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 258
    const/16 v5, 0x3d

    aput-byte v5, v2, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0           #destIndex:I
    .restart local v1       #destIndex:I
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .end local v1           #destIndex:I
    .restart local v0       #destIndex:I
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->mBase64EncMap:[B

    aget-byte v6, p0, v4

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v1

    goto :goto_1

    .line 262
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 263
    .local v3, result:Ljava/lang/String;
    return-object v3
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "textToEncrypt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 161
    new-instance v5, Ljava/math/BigInteger;

    sget-object v6, Lcom/seven/util/SamsungUrlEncryptionUtils;->SAMSUNG_KEY:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 162
    .local v1, bytes:[B
    new-array v0, v7, [B

    .line 164
    .local v0, aesKey:[B
    array-length v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_0

    .line 165
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 166
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    aput-byte v5, v0, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3           #i:I
    :cond_0
    move-object v0, v1

    .line 172
    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->ALGORITHM:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 174
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v4, p0}, Lcom/seven/util/SamsungUrlEncryptionUtils;->encrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 178
    .local v2, encryptedText:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v2
.end method

.method private static encrypt(Ljavax/crypto/spec/SecretKeySpec;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "skeySpec"
    .parameter "plainText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->TRANSFORM:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 186
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, encodedMsg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, from:I
    const/4 v3, 0x0

    .local v3, to:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 191
    move v2, v3

    .line 192
    sget v5, Lcom/seven/util/SamsungUrlEncryptionUtils;->BUF_LEN:I

    add-int v3, v2, v5

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 197
    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/seven/util/SamsungUrlEncryptionUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v4           #token:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getCscInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    const-string v1, "ro.csc.sales_code"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, cscInfo:Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :cond_0
    return-object v0
.end method

.method private static getDeviceIdInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, deviceId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hardware_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    if-nez v0, :cond_0

    .line 328
    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 333
    :cond_0
    return-object v0
.end method

.method public static getIMSIOfSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 72
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 74
    .local v6, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, imsi:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 77
    invoke-static {}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getCscInfo()Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v7, "ProvActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIMSIOfSubscriptionRenewalParams: NO SIM, imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v1, encryptedParams:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, paramsToEncrypt:Ljava/lang/String;
    invoke-static {v5}, Lcom/seven/util/SamsungUrlEncryptionUtils;->encrypt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 85
    .local v4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 86
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2           #i:I
    .end local v4           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #paramsToEncrypt:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ProvActivity"

    const-string v8, "Unable to create valid Samsung encrypted subscription renewal params."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 129
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 131
    .local v7, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, imei:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, imsi:Ljava/lang/String;
    sget-boolean v8, Lcom/android/email/activity/ActivityResourceInterface;->FEATURE_DISABLE_3G:Z

    if-eqz v8, :cond_0

    .line 135
    invoke-static {p0}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getDeviceIdInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string v8, "ProvActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSubscriptionRenewalParams: NO SIM, imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 140
    invoke-static {}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getCscInfo()Ljava/lang/String;

    move-result-object v4

    .line 141
    const-string v8, "ProvActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSubscriptionRenewalParams: NO SIM, imsi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v1, encryptedParams:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imei="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, paramsToEncrypt:Ljava/lang/String;
    invoke-static {v6}, Lcom/seven/util/SamsungUrlEncryptionUtils;->encrypt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 148
    .local v5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 149
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2           #i:I
    .end local v5           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #paramsToEncrypt:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "ProvActivity"

    const-string v9, "Unable to create valid Samsung encrypted subscription renewal params."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
