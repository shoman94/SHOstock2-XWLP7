.class public Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .parameter "seed"
    .parameter "counter"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 12
    iput p2, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 28
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;

    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;

    .line 34
    .local v0, other:Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;
    iget v2, v0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-ne v2, v3, :cond_0

    .line 38
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
