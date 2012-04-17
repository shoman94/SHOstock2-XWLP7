.class public Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;
.super Ljava/lang/Object;
.source "GOST28147Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static DSbox_A:[B

.field private static DSbox_Test:[B

.field private static ESbox_A:[B

.field private static ESbox_B:[B

.field private static ESbox_C:[B

.field private static ESbox_D:[B

.field private static ESbox_Test:[B

.field private static sBoxes:Ljava/util/Hashtable;


# instance fields
.field private S:[B

.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x80

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    .line 50
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    .line 61
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    .line 83
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    .line 95
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    .line 106
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    .line 120
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    .line 123
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "E-TEST"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "E-A"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "E-B"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "E-C"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "E-D"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "D-TEST"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    const-string v1, "D-A"

    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void

    .line 39
    :array_0
    .array-data 0x1
        0x4t
        0x2t
        0xft
        0x5t
        0x9t
        0x1t
        0x0t
        0x8t
        0xet
        0x3t
        0xbt
        0xct
        0xdt
        0x7t
        0xat
        0x6t
        0xct
        0x9t
        0xft
        0xet
        0x8t
        0x1t
        0x3t
        0xat
        0x2t
        0x7t
        0x4t
        0xdt
        0x6t
        0x0t
        0xbt
        0x5t
        0xdt
        0x8t
        0xet
        0xct
        0x7t
        0x3t
        0x9t
        0xat
        0x1t
        0x5t
        0x2t
        0x4t
        0x6t
        0xft
        0x0t
        0xbt
        0xet
        0x9t
        0xbt
        0x2t
        0x5t
        0xft
        0x7t
        0x1t
        0x0t
        0xdt
        0xct
        0x6t
        0xat
        0x4t
        0x3t
        0x8t
        0x3t
        0xet
        0x5t
        0x9t
        0x6t
        0x8t
        0x0t
        0xdt
        0xat
        0xbt
        0x7t
        0xct
        0x2t
        0x1t
        0xft
        0x4t
        0x8t
        0xft
        0x6t
        0xbt
        0x1t
        0x9t
        0xct
        0x5t
        0xdt
        0x3t
        0x7t
        0xat
        0x0t
        0xet
        0x2t
        0x4t
        0x9t
        0xbt
        0xct
        0x0t
        0x3t
        0x6t
        0x7t
        0x5t
        0x4t
        0x8t
        0xet
        0xft
        0x1t
        0xat
        0x2t
        0xdt
        0xct
        0x6t
        0x5t
        0x2t
        0xbt
        0x0t
        0x9t
        0xdt
        0x3t
        0xet
        0x7t
        0xat
        0xft
        0x4t
        0x1t
        0x8t
    .end array-data

    .line 50
    :array_1
    .array-data 0x1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data

    .line 61
    :array_2
    .array-data 0x1
        0x8t
        0x4t
        0xbt
        0x1t
        0x3t
        0x5t
        0x0t
        0x9t
        0x2t
        0xet
        0xat
        0xct
        0xdt
        0x6t
        0x7t
        0xft
        0x0t
        0x1t
        0x2t
        0xat
        0x4t
        0xdt
        0x5t
        0xct
        0x9t
        0x7t
        0x3t
        0xft
        0xbt
        0x8t
        0x6t
        0xet
        0xet
        0xct
        0x0t
        0xat
        0x9t
        0x2t
        0xdt
        0xbt
        0x7t
        0x5t
        0x8t
        0xft
        0x3t
        0x6t
        0x1t
        0x4t
        0x7t
        0x5t
        0x0t
        0xdt
        0xbt
        0x6t
        0x1t
        0x2t
        0x3t
        0xat
        0xct
        0xft
        0x4t
        0xet
        0x9t
        0x8t
        0x2t
        0x7t
        0xct
        0xft
        0x9t
        0x5t
        0xat
        0xbt
        0x1t
        0x4t
        0x0t
        0xdt
        0x6t
        0x8t
        0xet
        0x3t
        0x8t
        0x3t
        0x2t
        0x6t
        0x4t
        0xdt
        0xet
        0xbt
        0xct
        0x1t
        0x7t
        0xft
        0xat
        0x0t
        0x9t
        0x5t
        0x5t
        0x2t
        0xat
        0xbt
        0x9t
        0x1t
        0xct
        0x3t
        0x7t
        0x4t
        0xdt
        0x0t
        0x6t
        0xft
        0x8t
        0xet
        0x0t
        0x4t
        0xbt
        0xet
        0x8t
        0x3t
        0x7t
        0x1t
        0xat
        0x2t
        0x9t
        0x6t
        0xft
        0xdt
        0x5t
        0xct
    .end array-data

    .line 72
    :array_3
    .array-data 0x1
        0x1t
        0xbt
        0xct
        0x2t
        0x9t
        0xdt
        0x0t
        0xft
        0x4t
        0x5t
        0x8t
        0xet
        0xat
        0x7t
        0x6t
        0x3t
        0x0t
        0x1t
        0x7t
        0xdt
        0xbt
        0x4t
        0x5t
        0x2t
        0x8t
        0xet
        0xft
        0xct
        0x9t
        0xat
        0x6t
        0x3t
        0x8t
        0x2t
        0x5t
        0x0t
        0x4t
        0x9t
        0xft
        0xat
        0x3t
        0x7t
        0xct
        0xdt
        0x6t
        0xet
        0x1t
        0xbt
        0x3t
        0x6t
        0x0t
        0x1t
        0x5t
        0xdt
        0xat
        0x8t
        0xbt
        0x2t
        0x9t
        0x7t
        0xet
        0xft
        0xct
        0x4t
        0x8t
        0xdt
        0xbt
        0x0t
        0x4t
        0x5t
        0x1t
        0x2t
        0x9t
        0x3t
        0xct
        0xet
        0x6t
        0xft
        0xat
        0x7t
        0xct
        0x9t
        0xbt
        0x1t
        0x8t
        0xet
        0x2t
        0x4t
        0x7t
        0x3t
        0x6t
        0x5t
        0xat
        0x0t
        0xft
        0xdt
        0xat
        0x9t
        0x6t
        0x8t
        0xdt
        0xet
        0x2t
        0x0t
        0xft
        0x3t
        0x5t
        0xbt
        0x4t
        0x1t
        0xct
        0x7t
        0x7t
        0x4t
        0x0t
        0x5t
        0xat
        0x2t
        0xft
        0xet
        0xct
        0x6t
        0x1t
        0xbt
        0xdt
        0x9t
        0x3t
        0x8t
    .end array-data

    .line 83
    :array_4
    .array-data 0x1
        0xft
        0xct
        0x2t
        0xat
        0x6t
        0x4t
        0x5t
        0x0t
        0x7t
        0x9t
        0xet
        0xdt
        0x1t
        0xbt
        0x8t
        0x3t
        0xbt
        0x6t
        0x3t
        0x4t
        0xct
        0xft
        0xet
        0x2t
        0x7t
        0xdt
        0x8t
        0x0t
        0x5t
        0xat
        0x9t
        0x1t
        0x1t
        0xct
        0xbt
        0x0t
        0xft
        0xet
        0x6t
        0x5t
        0xat
        0xdt
        0x4t
        0x8t
        0x9t
        0x3t
        0x7t
        0x2t
        0x1t
        0x5t
        0xet
        0xct
        0xat
        0x7t
        0x0t
        0xdt
        0x6t
        0x2t
        0xbt
        0x4t
        0x9t
        0x3t
        0xft
        0x8t
        0x0t
        0xct
        0x8t
        0x9t
        0xdt
        0x2t
        0xat
        0xbt
        0x7t
        0x3t
        0x6t
        0x5t
        0x4t
        0xet
        0xft
        0x1t
        0x8t
        0x0t
        0xft
        0x3t
        0x2t
        0x5t
        0xet
        0xbt
        0x1t
        0xat
        0x4t
        0x7t
        0xct
        0x9t
        0xdt
        0x6t
        0x3t
        0x0t
        0x6t
        0xft
        0x1t
        0xet
        0x9t
        0x2t
        0xdt
        0x8t
        0xct
        0x4t
        0xbt
        0xat
        0x5t
        0x7t
        0x1t
        0xat
        0x6t
        0x8t
        0xft
        0xbt
        0x0t
        0x4t
        0xct
        0x3t
        0x5t
        0x9t
        0x7t
        0xdt
        0x2t
        0xet
    .end array-data

    .line 95
    :array_5
    .array-data 0x1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data

    .line 106
    :array_6
    .array-data 0x1
        0xat
        0x4t
        0x5t
        0x6t
        0x8t
        0x1t
        0x3t
        0x7t
        0xdt
        0xct
        0xet
        0x0t
        0x9t
        0x2t
        0xbt
        0xft
        0x5t
        0xft
        0x4t
        0x0t
        0x2t
        0xdt
        0xbt
        0x9t
        0x1t
        0x7t
        0x6t
        0x3t
        0xct
        0xet
        0xat
        0x8t
        0x7t
        0xft
        0xct
        0xet
        0x9t
        0x4t
        0x1t
        0x0t
        0x3t
        0xbt
        0x5t
        0x2t
        0x6t
        0xat
        0x8t
        0xdt
        0x4t
        0xat
        0x7t
        0xct
        0x0t
        0xft
        0x2t
        0x8t
        0xet
        0x1t
        0x6t
        0x5t
        0xdt
        0xbt
        0x9t
        0x3t
        0x7t
        0x6t
        0x4t
        0xbt
        0x9t
        0xct
        0x2t
        0xat
        0x1t
        0x8t
        0x0t
        0xet
        0xft
        0xdt
        0x3t
        0x5t
        0x7t
        0x6t
        0x2t
        0x4t
        0xdt
        0x9t
        0xft
        0x0t
        0xat
        0x1t
        0x5t
        0xbt
        0x8t
        0xet
        0xct
        0x3t
        0xdt
        0xet
        0x4t
        0x1t
        0x7t
        0x0t
        0x5t
        0xat
        0x3t
        0xct
        0x8t
        0xft
        0x6t
        0x2t
        0x9t
        0xbt
        0x1t
        0x3t
        0xat
        0x9t
        0x5t
        0xbt
        0x4t
        0xft
        0x8t
        0x6t
        0x7t
        0xet
        0xdt
        0x0t
        0x2t
        0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    .line 136
    return-void

    .line 23
    :array_0
    .array-data 0x1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data
.end method

.method private GOST28147Func([I[BI[BI)V
    .locals 8
    .parameter "workingKey"
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    .line 234
    invoke-direct {p0, p2, p3}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v0

    .line 235
    .local v0, N1:I
    add-int/lit8 v5, p3, 0x4

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v1

    .line 237
    .local v1, N2:I
    iget-boolean v5, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    if-eqz v5, :cond_2

    .line 238
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 240
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 241
    move v4, v0

    .line 242
    .local v4, tmp:I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 243
    move v1, v4

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v4           #tmp:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v2           #j:I
    :cond_1
    const/4 v2, 0x7

    .restart local v2       #j:I
    :goto_2
    if-lez v2, :cond_6

    .line 248
    move v4, v0

    .line 249
    .restart local v4       #tmp:I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 250
    move v1, v4

    .line 246
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 254
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #tmp:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    if-ge v2, v7, :cond_3

    .line 256
    move v4, v0

    .line 257
    .restart local v4       #tmp:I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 258
    move v1, v4

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 260
    .end local v4           #tmp:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_4
    if-ge v3, v6, :cond_6

    .line 262
    const/4 v2, 0x7

    :goto_5
    if-ltz v2, :cond_4

    .line 263
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    if-nez v2, :cond_5

    .line 260
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 266
    :cond_5
    move v4, v0

    .line 267
    .restart local v4       #tmp:I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 268
    move v1, v4

    .line 262
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 273
    .end local v4           #tmp:I
    :cond_6
    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int/2addr v1, v5

    .line 275
    invoke-direct {p0, v0, p4, p5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    .line 276
    add-int/lit8 v5, p5, 0x4

    invoke-direct {p0, v1, p4, v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    .line 277
    return-void
.end method

.method private GOST28147_mainStep(II)I
    .locals 4
    .parameter "n1"
    .parameter "key"

    .prologue
    .line 216
    add-int v0, p2, p1

    .line 220
    .local v0, cm:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v1, v2, 0x0

    .line 221
    .local v1, om:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x10

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 222
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x20

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 223
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x30

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    .line 224
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x40

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 225
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x14

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x50

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 226
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x18

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x60

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    .line 227
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x1c

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x70

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    .line 229
    shl-int/lit8 v2, v1, 0xb

    ushr-int/lit8 v3, v1, 0x15

    or-int/2addr v2, v3

    return v2
.end method

.method private bytesToint([BI)I
    .locals 3
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 281
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 5
    .parameter "forEncryption"
    .parameter "userKey"

    .prologue
    const/16 v4, 0x8

    .line 200
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    .line 202
    array-length v2, p2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    new-array v1, v4, [I

    .line 208
    .local v1, key:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 209
    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, p2, v2}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v2

    aput v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    return-object v1
.end method

.method public static getSBox(Ljava/lang/String;)[B
    .locals 5
    .parameter "sBoxName"

    .prologue
    const/4 v4, 0x0

    .line 300
    sget-object v2, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 302
    .local v0, namedSBox:[B
    if-eqz v0, :cond_0

    .line 303
    array-length v2, v0

    new-array v1, v2, [B

    .line 305
    .local v1, sBox:[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-object v1

    .line 309
    .end local v1           #sBox:[B
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown S-Box - possible types: \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\"."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .parameter "num"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 287
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 288
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 289
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 290
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 291
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "GOST28147"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 147
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 148
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;

    .line 153
    .local v0, param:Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->S:[B

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    .line 168
    .end local v0           #param:Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local p2
    :cond_1
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_2

    .line 163
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    goto :goto_0

    .line 165
    .restart local p2
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 179
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GOST28147 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 184
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 188
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/GOST28147Engine;->GOST28147Func([I[BI[BI)V

    .line 193
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
