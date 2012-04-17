.class public Lcom/android/contacts/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "buffer"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget v3, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method static copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 4
    .parameter "text"
    .parameter "buffer"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    if-eqz p0, :cond_2

    .line 116
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 117
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 122
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 126
    .end local v0           #data:[C
    :goto_1
    return-void

    .line 120
    .restart local v0       #data:[C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 124
    .end local v0           #data:[C
    :cond_2
    iput v3, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .locals 7
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v4, -0x1

    .line 142
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 181
    :cond_1
    :goto_0
    return v0

    .line 146
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 147
    .local v3, textLength:I
    array-length v2, p1

    .line 149
    .local v2, prefixLength:I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 150
    goto :goto_0

    .line 153
    :cond_4
    const/4 v0, 0x0

    .line 154
    .local v0, i:I
    :cond_5
    if-ge v0, v3, :cond_a

    .line 156
    :goto_1
    if-ge v0, v3, :cond_6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_6
    add-int v5, v0, v2

    if-le v5, v3, :cond_7

    move v0, v4

    .line 161
    goto :goto_0

    .line 166
    :cond_7
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 167
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_9

    .line 171
    :cond_8
    if-eq v1, v2, :cond_1

    .line 176
    :goto_3
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #j:I
    :cond_a
    move v0, v4

    .line 181
    goto :goto_0
.end method

.method public static overlapPoint(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 4
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    const/4 v0, -0x1

    .line 41
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "string1"
    .parameter "string2"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    const/4 v0, -0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint([C[C)I
    .locals 8
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v5, -0x1

    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v5

    .line 90
    :cond_1
    :goto_0
    return v2

    .line 65
    :cond_2
    array-length v0, p0

    .line 66
    .local v0, count1:I
    array-length v1, p1

    .line 69
    .local v1, count2:I
    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v6, v0, -0x1

    aget-char v6, p0, v6

    add-int/lit8 v7, v1, -0x1

    aget-char v7, p1, v7

    if-ne v6, v7, :cond_3

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 74
    :cond_3
    move v4, v1

    .line 75
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 76
    add-int v6, v2, v4

    if-le v6, v0, :cond_4

    .line 77
    sub-int v4, v0, v2

    .line 80
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 81
    add-int v6, v2, v3

    aget-char v6, p0, v6

    aget-char v7, p1, v3

    if-eq v6, v7, :cond_6

    .line 85
    :cond_5
    if-eq v3, v4, :cond_1

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3           #j:I
    :cond_7
    move v2, v5

    .line 90
    goto :goto_0
.end method
