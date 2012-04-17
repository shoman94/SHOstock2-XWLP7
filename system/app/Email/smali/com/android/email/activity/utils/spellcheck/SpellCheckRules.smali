.class public Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;
.super Ljava/lang/Object;
.source "SpellCheckRules.java"


# static fields
.field private static mSpellCheckCandidate:Ljava/lang/String;

.field private static mSpellCheckRuleHandler:Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckRuleHandler:Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private applyRules()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string v0, "sdfsdfsdf"

    const-string v1, "normalizeWord : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->isWordValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->handleError()V

    .line 111
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "sdfsdfsdf"

    const-string v1, "b4 isWordSpace : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->isWordSpace()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->handleError()V

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "sdfsdfsdf"

    const-string v1, "b4 wordInvalidLenError: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->wordInvalidLenError()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->handleError()V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "sdfsdfsdf"

    const-string v1, "b4 wordHasNonCharacterSymbol : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->wordHasNonCharacterSymbol()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->handleError()V

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "sdfsdfsdf"

    const-string v1, "b4 wordIsUrl : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->wordIsUrl()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->handleError()V

    goto :goto_0

    .line 108
    :cond_4
    const-string v0, "sdfsdfsdf"

    const-string v1, "b4 trimWord : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->trimWord()V

    .line 110
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->convertToLowerCase()V

    goto :goto_0
.end method

.method private convertToLowerCase()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "sdfsdfsdf"

    const-string v1, "convertToLowerCase : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static getInstance()Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;
    .locals 2

    .prologue
    .line 32
    const-string v0, "sdfsdfsdf"

    const-string v1, "getInstance : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckRuleHandler:Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "sdfsdfsdf"

    const-string v1, "getInstance : allocate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    invoke-direct {v0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;-><init>()V

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckRuleHandler:Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    .line 37
    :cond_0
    const-string v0, "sdfsdfsdf"

    const-string v1, "getInstance : return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckRuleHandler:Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;

    return-object v0
.end method

.method private handleError()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "sdfsdfsdf"

    const-string v1, "handleError : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private isWordSpace()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordSpace : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordSpace : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordSpace : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWordValid()Z
    .locals 2

    .prologue
    .line 114
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordValid : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordValid : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v0, "sdfsdfsdf"

    const-string v1, "isWordValid : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private trimWord()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "sdfsdfsdf"

    const-string v1, "trimWord : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    const-string v1, "\\s\\s+|\\n|\\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private wordHasNonCharacterSymbol()Z
    .locals 3

    .prologue
    .line 148
    const-string v1, "sdfsdfsdf"

    const-string v2, "wordHasNonCharacterSymbol : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    sget-object v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "sdfsdfsdf"

    const-string v2, "wordHasNonCharacterSymbol : true "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x1

    .line 157
    :goto_1
    return v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "sdfsdfsdf"

    const-string v2, "wordHasNonCharacterSymbol : false "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private wordInvalidLenError()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 134
    const-string v1, "sdfsdfsdf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wordInvalidLenError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_0
    sget-object v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    if-le v1, v2, :cond_1

    .line 140
    const-string v1, "sdfsdfsdf"

    const-string v2, "wordInvalidLenError : false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    const-string v0, "sdfsdfsdf"

    const-string v1, "wordInvalidLenError : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wordIsUrl()Z
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "word"

    .prologue
    .line 42
    const-string v0, "sdfsdfsdf"

    const-string v1, "normalizeWord : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sput-object p1, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->applyRules()V

    .line 48
    const-string v0, "sdfsdfsdf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/android/email/activity/utils/spellcheck/SpellCheckRules;->mSpellCheckCandidate:Ljava/lang/String;

    return-object v0
.end method
