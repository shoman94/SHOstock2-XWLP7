.class public Lcom/android/mms/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SmileyParser$Smileys;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMILEY_RES_IDS:[I

.field private static sInstance:Lcom/android/mms/util/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private mSmileyEnd:[I

.field private mSmileyStart:[I

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    const/16 v0, 0x15

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->HAPPY:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SAD:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->WINKING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SURPRISED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->KISSING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->YELLING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->COOL:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->MONEY_MOUTH:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->EMBARRASSED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->ANGEL:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->UNDECIDED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->CRYING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->LAUGHING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->WTF:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->Heart:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->MAD:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SMIRK:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->POKERFACE:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    .line 68
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 69
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 8

    .prologue
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 200
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v2, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 180
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/android/mms/util/SmileyParser;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "Mms/SmileyParser"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/android/mms/util/SmileyParser;

    invoke-direct {v0, p0}, Lcom/android/mms/util/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    .line 49
    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "text"

    .prologue
    const/16 v10, 0x29

    .line 218
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 221
    .local v6, textLength:I
    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 223
    .local v3, matcher:Ljava/util/regex/Matcher;
    new-array v7, v6, [I

    iput-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    .line 224
    new-array v7, v6, [I

    iput-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, i:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, smileyText:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 230
    .local v1, end:I
    const-string v7, ":-)"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    add-int/lit8 v7, v6, -0x1

    if-gt v1, v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_0

    .line 234
    :cond_1
    const-string v7, ":-("

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    add-int/lit8 v7, v6, -0x1

    if-gt v1, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_0

    .line 239
    :cond_2
    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 240
    .local v4, resId:I
    new-instance v7, Landroid/text/style/ImageSpan;

    iget-object v8, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v7, v8, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 242
    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    aput v8, v7, v2

    .line 243
    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    aput v1, v7, v2

    .line 244
    add-int/lit8 v2, v2, 0x1

    .line 245
    goto :goto_0

    .line 247
    .end local v1           #end:I
    .end local v4           #resId:I
    .end local v5           #smileyText:Ljava/lang/CharSequence;
    :cond_3
    return-object v0
.end method

.method public getSmileyEnd()[I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    return-object v0
.end method

.method public getSmileyStart()[I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    return-object v0
.end method
