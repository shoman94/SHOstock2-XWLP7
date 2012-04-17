.class public Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;
.super Ljava/lang/Object;
.source "KoreanConsonantPattern.java"


# static fields
.field private static KOREAN_RANGE_PATTERN:[Ljava/lang/String;

.field private static mSb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[\\uAC00-\\uAE4A]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[\\uAE4C-\\uB091]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\\uB098-\\uB2E2]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[\\uB2E4-\\uB52A]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "[\\uB530-\\uB775]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[\\uB77C-\\uB9C1]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[\\uB9C8-\\uBC11]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[\\uBC14-\\uBE5B]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[\\uBE60-\\uC0A5]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[\\uC0AC-\\uC2F6]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "[\\uC2F8-\\uC53D]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[\\uC544-\\uC78E]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[\\uC790-\\uC9DA]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[\\uC9DC-\\uCC27]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[\\uCC28-\\uCE6D]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[\\uCE74-\\uD0B9]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[\\uD0C0-\\uD305]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "[\\uD30C-\\uD551]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "[\\uD558-\\uD79D]"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x314e

    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, position:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    .local v3, stringLength:I
    sget-object v4, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #position:I
    .local v2, position:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 70
    .local v0, character:I
    const/16 v4, 0x1100

    if-lt v0, v4, :cond_2

    const/16 v4, 0x1112

    if-le v0, v4, :cond_0

    const/16 v4, 0x3131

    if-lt v0, v4, :cond_2

    :cond_0
    if-le v0, v7, :cond_1

    const v4, 0xac00

    if-lt v0, v4, :cond_2

    :cond_1
    const v4, 0xd7a3

    if-le v0, v4, :cond_3

    .line 73
    :cond_2
    sget-object v4, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 83
    :goto_1
    if-lt v2, v3, :cond_5

    .line 85
    sget-object v4, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 77
    :cond_3
    const/16 v4, 0x3130

    if-le v0, v4, :cond_4

    if-gt v0, v7, :cond_4

    .line 79
    sget-object v4, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    add-int/lit16 v6, v0, -0x3131

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_4
    sget-object v4, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v1, v2

    .end local v2           #position:I
    .restart local v1       #position:I
    goto :goto_0
.end method

.method public static indexOfWord(Landroid/database/CharArrayBuffer;[C)I
    .locals 9
    .parameter "text"
    .parameter "word"

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    .line 89
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v4

    .line 93
    :cond_1
    sget-object v5, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 95
    aget-char v5, p1, v0

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    sget-object v5, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    aget-char v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    sget-object v5, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 102
    :cond_3
    sget-object v5, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, pattern:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 104
    .local v2, p:Ljava/util/regex/Pattern;
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget v7, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v5, v6, v8, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 105
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    goto :goto_0
.end method
