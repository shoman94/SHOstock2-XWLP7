.class public Lcom/android/contacts/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "prefixHighlightColor"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v4, -0x1

    .line 55
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v0

    .line 56
    .local v0, index:I
    if-ne v0, v4, :cond_0

    .line 57
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 58
    .local v2, textBuffer:Landroid/database/CharArrayBuffer;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/contacts/format/FormatUtils;->copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    .line 59
    invoke-static {v2, p2}, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->indexOfWord(Landroid/database/CharArrayBuffer;[C)I

    move-result v0

    .line 61
    .end local v2           #textBuffer:Landroid/database/CharArrayBuffer;
    :cond_0
    if-eq v0, v4, :cond_2

    .line 62
    iget-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_1

    .line 63
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 66
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    .local v1, result:Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v4, p2

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    .end local v1           #result:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
