.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 909
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput p1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->mLevel:I

    .line 911
    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 906
    iget v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->mLevel:I

    return v0
.end method
