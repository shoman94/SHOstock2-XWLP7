.class public final Lmyorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 40
    goto :goto_0

    .line 43
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 44
    goto :goto_0

    .line 47
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 48
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 49
    goto :goto_0

    .line 47
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone([B)[B
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 146
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 148
    .local v0, copy:[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :cond_0
    array-length v1, p0

    new-array v0, v1, [I

    .line 159
    .local v0, copy:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    const/4 v1, 0x0

    .line 79
    .local v1, nonEqual:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_5

    .line 80
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_5
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 110
    aput-byte p1, p0, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 116
    aput-wide p1, p0, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 122
    aput-short p1, p0, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 3
    .parameter "data"

    .prologue
    .line 127
    if-nez p0, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 139
    :cond_0
    return v0

    .line 131
    :cond_1
    array-length v1, p0

    .line 132
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 134
    .local v0, hc:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 135
    mul-int/lit16 v0, v0, 0x101

    .line 136
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method
