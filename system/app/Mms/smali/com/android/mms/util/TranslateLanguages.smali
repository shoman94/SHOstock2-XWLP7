.class public Lcom/android/mms/util/TranslateLanguages;
.super Ljava/lang/Object;
.source "TranslateLanguages.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mLangCodes:[Ljava/lang/String;

.field public mLangStringsIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v1, 0x34

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a-d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "be"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "et"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "tl"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "iw"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ga"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ms"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "mt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "yi"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/mms/util/TranslateLanguages;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/android/mms/util/TranslateLanguages;->mContext:Landroid/content/Context;

    .line 128
    :cond_0
    return-void

    .line 12
    nop

    :array_0
    .array-data 0x4
        0xdct 0x1t 0x9t 0x7ft
        0xddt 0x1t 0x9t 0x7ft
        0xdet 0x1t 0x9t 0x7ft
        0xe0t 0x1t 0x9t 0x7ft
        0xe1t 0x1t 0x9t 0x7ft
        0xe2t 0x1t 0x9t 0x7ft
        0xe3t 0x1t 0x9t 0x7ft
        0xe5t 0x1t 0x9t 0x7ft
        0xe6t 0x1t 0x9t 0x7ft
        0xe7t 0x1t 0x9t 0x7ft
        0xe8t 0x1t 0x9t 0x7ft
        0xe9t 0x1t 0x9t 0x7ft
        0xeat 0x1t 0x9t 0x7ft
        0xebt 0x1t 0x9t 0x7ft
        0xect 0x1t 0x9t 0x7ft
        0xedt 0x1t 0x9t 0x7ft
        0xeet 0x1t 0x9t 0x7ft
        0xeft 0x1t 0x9t 0x7ft
        0xf0t 0x1t 0x9t 0x7ft
        0xf1t 0x1t 0x9t 0x7ft
        0xf2t 0x1t 0x9t 0x7ft
        0xf4t 0x1t 0x9t 0x7ft
        0xf6t 0x1t 0x9t 0x7ft
        0xf7t 0x1t 0x9t 0x7ft
        0xf8t 0x1t 0x9t 0x7ft
        0xf9t 0x1t 0x9t 0x7ft
        0xfat 0x1t 0x9t 0x7ft
        0xfbt 0x1t 0x9t 0x7ft
        0xfct 0x1t 0x9t 0x7ft
        0xfdt 0x1t 0x9t 0x7ft
        0xfet 0x1t 0x9t 0x7ft
        0xfft 0x1t 0x9t 0x7ft
        0x0t 0x2t 0x9t 0x7ft
        0x1t 0x2t 0x9t 0x7ft
        0x2t 0x2t 0x9t 0x7ft
        0x3t 0x2t 0x9t 0x7ft
        0x4t 0x2t 0x9t 0x7ft
        0x5t 0x2t 0x9t 0x7ft
        0x6t 0x2t 0x9t 0x7ft
        0x7t 0x2t 0x9t 0x7ft
        0x8t 0x2t 0x9t 0x7ft
        0x9t 0x2t 0x9t 0x7ft
        0xat 0x2t 0x9t 0x7ft
        0xbt 0x2t 0x9t 0x7ft
        0xct 0x2t 0x9t 0x7ft
        0xdt 0x2t 0x9t 0x7ft
        0xet 0x2t 0x9t 0x7ft
        0xft 0x2t 0x9t 0x7ft
        0x10t 0x2t 0x9t 0x7ft
        0x11t 0x2t 0x9t 0x7ft
        0x12t 0x2t 0x9t 0x7ft
        0x13t 0x2t 0x9t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "languageString"

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Language string not matched with any language code"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "languageCode"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/mms/util/TranslateLanguages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Language code not matched with any language string in the list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
