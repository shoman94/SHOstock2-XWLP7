.class public Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;
.super Lcom/android/email/activity/utils/spellcheck/Dictionary;
.source "BinaryDictionary.java"


# instance fields
.field private mFrequencies:[I

.field private mInputCodes:[I

.field private mInputTestCodes:[C

.field private mNativeDict:I

.field private mOutputChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    const-string v1, "jni_emailspellcheck"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 47
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 48
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BinaryDictionary"

    const-string v2, "Could not load native library jni_emailspellcheck"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    const/16 v1, 0x1518

    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/Dictionary;-><init>()V

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputCodes:[I

    .line 41
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    .line 42
    const/16 v0, 0x12c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mFrequencies:[I

    .line 43
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputTestCodes:[C

    .line 59
    if-eqz p2, :cond_0

    .line 60
    const-string v0, "jni_emailspellcheck"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->loadDictionary(Landroid/content/Context;I)V

    .line 63
    :cond_0
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private getSuggestionWordLenMin(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter
    .parameter "test"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    new-array v15, v3, [I

    .line 98
    .local v15, g1:[I
    const/16 v17, 0x0

    .local v17, jw:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 99
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v15, v17

    .line 98
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-le v3, v4, :cond_2

    .line 104
    const/16 p1, 0x0

    .line 159
    .end local p1           #suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object p1

    .line 106
    .restart local p1       #suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputCodes:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 108
    move-object v13, v15

    .line 109
    .local v13, alternatives:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputCodes:[I

    const/4 v5, 0x0

    array-length v6, v13

    const/16 v7, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v13, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mFrequencies:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 115
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputCodes:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mFrequencies:[I

    const/16 v9, 0x12

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    const/4 v12, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII)I

    move-result v14

    .line 126
    .local v14, count:I
    const/4 v3, 0x5

    if-ge v14, v3, :cond_3

    .line 127
    const/4 v12, 0x0

    .local v12, skip:I
    :goto_1
    const/4 v3, 0x1

    if-ge v12, v3, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mInputCodes:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mFrequencies:[I

    const/16 v9, 0x12

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII)I

    move-result v21

    .line 130
    .local v21, tempCount:I
    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 131
    if-lez v21, :cond_4

    .line 138
    .end local v12           #skip:I
    .end local v21           #tempCount:I
    :cond_3
    const/16 v16, 0x0

    .local v16, j:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v14, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mFrequencies:[I

    aget v3, v3, v16

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 141
    mul-int/lit8 v20, v16, 0x12

    .line 142
    .local v20, start:I
    const/16 v18, 0x0

    .line 143
    .local v18, len:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    add-int v4, v20, v18

    aget-char v3, v3, v4

    if-eqz v3, :cond_5

    .line 144
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 127
    .end local v16           #j:I
    .end local v18           #len:I
    .end local v20           #start:I
    .restart local v12       #skip:I
    .restart local v21       #tempCount:I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 146
    .end local v12           #skip:I
    .end local v21           #tempCount:I
    .restart local v16       #j:I
    .restart local v18       #len:I
    .restart local v20       #start:I
    :cond_5
    if-lez v18, :cond_6

    .line 147
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v19, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->isDuplicate(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 150
    const/4 v3, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->isSuggestionMinMatch(II)Z

    move-result v4

    if-ne v3, v4, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->isSuggestionMaxMatch(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_6

    .line 153
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v19           #sb:Ljava/lang/StringBuffer;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2
.end method

.method private native getSuggestionsNative(I[II[C[IIIII)I
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "original"
    .parameter "suggestion"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 164
    .local v5, originalLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 165
    .local v6, suggestionLength:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 166
    .local v3, minLength:I
    if-gt v3, v10, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v7

    .line 168
    :cond_1
    const/4 v2, 0x0

    .line 169
    .local v2, matching:I
    const/4 v1, 0x0

    .line 171
    .local v1, lessMatching:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/email/activity/utils/spellcheck/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 173
    .local v4, origChar:C
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/email/activity/utils/spellcheck/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_3

    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_3
    add-int/lit8 v9, v0, 0x1

    if-ge v9, v6, :cond_2

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/email/activity/utils/spellcheck/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v4           #origChar:C
    :cond_4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 183
    const/4 v9, 0x4

    if-gt v3, v9, :cond_5

    .line 184
    if-ge v2, v10, :cond_0

    move v7, v8

    goto :goto_0

    .line 186
    :cond_5
    div-int/lit8 v9, v3, 0x2

    if-gt v2, v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method private isDuplicate(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, wrd:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const/4 v2, 0x1

    .line 211
    .end local v1           #wrd:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSuggestionMaxMatch(II)Z
    .locals 1
    .parameter "suggestionLen"
    .parameter "wordLen"

    .prologue
    .line 198
    if-gt p1, p2, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestionMinMatch(II)Z
    .locals 1
    .parameter "suggestionLen"
    .parameter "wordLen"

    .prologue
    .line 191
    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v3, 0x2

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 82
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, assetName:Ljava/lang/String;
    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->openNative(Landroid/content/res/AssetManager;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    .line 84
    return-void
.end method

.method private native openNative(Landroid/content/res/AssetManager;Ljava/lang/String;II)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->closeNative(I)V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->close()V

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    return-void
.end method

.method public getSuggestion(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "test"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestionWordLenMin(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 219
    .local v0, chars:[C
    iget v1, p0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
