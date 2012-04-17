.class Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2
    .parameter "bigInt"
    .parameter "scale"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-gez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 55
    return-void
.end method

.method private constructor <init>(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)V
    .locals 1
    .parameter "limBigDec"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 59
    iget v0, p1, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iput v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 60
    return-void
.end method

.method private checkScale(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 63
    iget v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v1, p1, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .parameter "b"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 83
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public adjustScale(I)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .parameter "newScale"

    .prologue
    .line 70
    if-gez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_1

    .line 75
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 78
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2
    .parameter "val"

    .prologue
    .line 131
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    instance-of v3, p1, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    if-nez v3, :cond_2

    move v1, v2

    .line 202
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 205
    check-cast v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    .line 206
    .local v0, other:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v4, v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public floor()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public negate()Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 140
    .local v0, oneHalf:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    iget v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public subtract(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3
    .parameter "b"

    .prologue
    .line 99
    new-instance v0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 1
    .parameter "b"

    .prologue
    .line 95
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 161
    iget v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v11, :cond_0

    .line 162
    iget-object v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    .line 193
    :goto_0
    return-object v11

    .line 165
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 167
    .local v0, floorBigInt:Ljava/math/BigInteger;
    iget-object v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v12, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 168
    .local v1, fract:Ljava/math/BigInteger;
    iget-object v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_1

    .line 169
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v12, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_2

    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 173
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 175
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, leftOfPoint:Ljava/lang/String;
    iget v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v2, v11, [C

    .line 178
    .local v2, fractCharArr:[C
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, fractStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 180
    .local v3, fractLen:I
    iget v11, p0, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v10, v11, v3

    .line 181
    .local v10, zeroes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_3

    .line 182
    const/16 v11, 0x30

    aput-char v11, v2, v5

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 184
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v3, :cond_4

    .line 185
    add-int v11, v10, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v2, v11

    .line 184
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 187
    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    .line 189
    .local v8, rightOfPoint:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method
