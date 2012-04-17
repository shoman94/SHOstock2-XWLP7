.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Font"
.end annotation


# instance fields
.field public mColor:Ljava/lang/String;

.field public mFace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "color"
    .parameter "face"

    .prologue
    .line 892
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    .line 894
    iput-object p2, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    .line 895
    return-void
.end method
