.class public final Lcom/android/contacts/format/DisplayNameFormatter;
.super Ljava/lang/Object;
.source "DisplayNameFormatter.java"


# instance fields
.field private final mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

.field private mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

.field private mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/contacts/format/PrefixHighlighter;)V
    .locals 2
    .parameter "prefixHighlighter"

    .prologue
    const/16 v1, 0x80

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 31
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    .line 39
    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    .line 40
    return-void
.end method


# virtual methods
.method public getAlternateNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public getDisplayName(IZ[C)Ljava/lang/CharSequence;
    .locals 5
    .parameter "displayOrder"
    .parameter "highlightingEnabled"
    .parameter "highlightedPrefix"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 62
    .local v0, size:I
    if-nez v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 67
    :cond_1
    if-eqz p2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    if-nez v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    invoke-interface {v2}, Lcom/android/contacts/widget/TextWithHighlightingFactory;->createTextWithHighlighting()Lcom/android/contacts/widget/TextWithHighlighting;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/widget/TextWithHighlighting;->setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V

    .line 73
    iget-object v1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    .line 77
    .local v1, text:Ljava/lang/CharSequence;
    :goto_1
    if-eqz p3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {v2, v1, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 75
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-static {v2}, Lcom/android/contacts/format/FormatUtils;->charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public getNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public setDisplayName(Landroid/widget/TextView;IZ[C)V
    .locals 1
    .parameter "view"
    .parameter "displayOrder"
    .parameter "highlightingEnabled"
    .parameter "highlightedPrefix"

    .prologue
    .line 56
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "unknownNameText"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method
