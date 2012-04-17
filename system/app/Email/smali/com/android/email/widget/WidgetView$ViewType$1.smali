.class final enum Lcom/android/email/widget/WidgetView$ViewType$1;
.super Lcom/android/email/widget/WidgetView$ViewType;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/WidgetView$ViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 8
    .parameter
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZLcom/android/email/widget/WidgetView$1;)V

    return-void
.end method


# virtual methods
.method public getSelectionArgs(J)[Ljava/lang/String;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 56
    return-object p2
.end method
