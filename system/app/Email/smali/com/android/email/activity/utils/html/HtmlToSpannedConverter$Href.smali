.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Href"
.end annotation


# instance fields
.field public mHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "href"

    .prologue
    .line 901
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput-object p1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    .line 903
    return-void
.end method
