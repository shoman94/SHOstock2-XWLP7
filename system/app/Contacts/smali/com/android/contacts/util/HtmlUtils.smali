.class public Lcom/android/contacts/util/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 49
    .local v0, spanned:Landroid/text/Spanned;
    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method static postprocess(Landroid/content/Context;Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 9
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 71
    const/4 p1, 0x0

    .line 123
    :cond_0
    :goto_0
    return-object p1

    .line 73
    :cond_1
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 81
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    .line 82
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .line 87
    :goto_1
    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-virtual {p1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    .line 88
    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    const v4, 0x7f070029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 91
    const v5, 0x7f08004d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v1, v2

    .line 92
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 93
    aget-object v6, v0, v1

    new-instance v7, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;

    invoke-direct {v7, v4, v5}, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;-><init>(II)V

    invoke-static {p1, v6, v7}, Lcom/android/contacts/util/HtmlUtils;->replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_1

    .line 97
    :cond_3
    const-class v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 98
    if-eqz v0, :cond_4

    move v1, v2

    .line 99
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 100
    aget-object v4, v0, v1

    .line 101
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {p1, v4, v5}, Lcom/android/contacts/util/HtmlUtils;->replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_4
    if-ltz v0, :cond_5

    .line 110
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    .line 117
    :cond_5
    if-eq v1, v3, :cond_0

    .line 123
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1, v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object p1, v0

    goto :goto_0

    .line 109
    :cond_6
    add-int/lit8 v1, v0, -0x1

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_4
.end method

.method private static replaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "builder"
    .parameter "originalSpan"
    .parameter "newSpan"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
