.class public Lcom/android/email/activity/utils/spellcheck/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/spellcheck/SpellChecker$1;,
        Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckTask;,
        Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;,
        Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckCBType;
    }
.end annotation


# static fields
.field private static MAX_SUGGESTIONS:I

.field private static mCBType:I

.field private static mContext:Landroid/content/Context;

.field private static mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

.field private static mInvalidWordCB:Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;

.field private static mLocale:Ljava/lang/String;

.field private static mSpellChecker:Lcom/android/email/activity/utils/spellcheck/SpellChecker;


# instance fields
.field private mMainDictionary:Lcom/android/email/activity/utils/spellcheck/Dictionary;

.field private mUserDictionary:Lcom/android/email/activity/utils/spellcheck/Dictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mContext:Landroid/content/Context;

    .line 24
    sput-object v1, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mLocale:Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mSpellChecker:Lcom/android/email/activity/utils/spellcheck/SpellChecker;

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->MAX_SUGGESTIONS:I

    .line 38
    sput-object v1, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/utils/spellcheck/SpellChecker;Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->initSuggest(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mCBType:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findInValidWords(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V
    .locals 10
    .parameter "editText"

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;->getText()Landroid/text/Spannable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, t:Ljava/lang/String;
    const-string v9, "[,.!\\-:;()<>\"\\s\\n]"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, wordArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 158
    .local v3, startpos:I
    array-length v8, v7

    .line 159
    .local v8, wordCount:I
    const/4 v2, 0x0

    .line 160
    .local v2, isWordValid:Z
    const/4 v0, 0x1

    .line 162
    .local v0, hasMore:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_4

    .line 163
    if-nez v3, :cond_3

    .line 177
    :goto_1
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, str1:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-direct {p0, v5}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 182
    iget-object v9, p0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/Dictionary;

    invoke-virtual {v9, v4}, Lcom/android/email/activity/utils/spellcheck/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 183
    if-nez v2, :cond_0

    .line 185
    iget-object v9, p0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/Dictionary;

    invoke-virtual {v9, v4}, Lcom/android/email/activity/utils/spellcheck/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 188
    :cond_0
    if-nez v2, :cond_2

    .line 191
    add-int/lit8 v9, v8, -0x1

    if-ne v1, v9, :cond_1

    .line 192
    const/4 v0, 0x0

    .line 195
    :cond_1
    aget-object v9, v7, v1

    invoke-direct {p0, v9, v3, v0}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->foundInValidWord(Ljava/lang/String;IZ)V

    .line 198
    :cond_2
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v3, v9, 0x1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #str1:Ljava/lang/String;
    :cond_3
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 201
    :cond_4
    return-void
.end method

.method private foundInValidWord(Ljava/lang/String;IZ)V
    .locals 0
    .parameter "word"
    .parameter "startPos"
    .parameter "hasMore"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->invokeCB(Ljava/lang/String;IZ)V

    .line 210
    return-void
.end method

.method private initSuggest(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->getInValidWords(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V

    .line 301
    return-void
.end method

.method private invokeCB(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "word"
    .parameter "wordOffset"
    .parameter "hasMore"

    .prologue
    .line 217
    sget v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mCBType:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 219
    :pswitch_0
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInvalidWordCB:Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/email/activity/utils/spellcheck/SpellChecker$SpellCheckerWordCallback;->inValidWord(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 223
    :pswitch_1
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    invoke-direct {v0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;-><init>()V

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    .line 226
    :cond_0
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->addInValidWord(Ljava/lang/String;I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "word"

    .prologue
    .line 204
    invoke-static {}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->getInstance()Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInValidWords(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 94
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->mInValidWordList:Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->resetList()V

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellChecker;->findInValidWords(Lcom/android/email/activity/utils/spellcheck/SpellCheckerIF;)V

    .line 99
    return-void
.end method
