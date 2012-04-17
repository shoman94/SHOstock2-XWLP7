.class public Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;
.super Landroid/text/style/QuoteSpan;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/HtmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamItemQuoteSpan"
.end annotation


# instance fields
.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "color"
    .parameter "width"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/text/style/QuoteSpan;-><init>(I)V

    .line 143
    iput p2, p0, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;->mWidth:I

    .line 144
    return-void
.end method


# virtual methods
.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/contacts/util/HtmlUtils$StreamItemQuoteSpan;->mWidth:I

    return v0
.end method
