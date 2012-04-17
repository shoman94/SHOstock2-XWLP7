.class public Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;
.super Ljava/lang/Object;
.source "SpellCheckInValidWordList.java"


# instance fields
.field private mWordlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addStartPos(Ljava/lang/String;I)V
    .locals 3
    .parameter "word"
    .parameter "pos"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    .line 72
    .local v1, item:Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;
    invoke-virtual {v1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->addPos(I)V

    .line 77
    .end local v1           #item:Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;
    :cond_1
    return-void
.end method

.method private wordExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    invoke-virtual {v1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 65
    :goto_1
    return v1

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addInValidWord(Ljava/lang/String;I)V
    .locals 2
    .parameter "word"
    .parameter "pos"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->wordExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    invoke-direct {v1, p1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->addStartPos(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public resetList()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method
