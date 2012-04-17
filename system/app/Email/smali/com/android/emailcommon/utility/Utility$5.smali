.class final Lcom/android/emailcommon/utility/Utility$5;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/android/emailcommon/utility/Utility$CursorGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/emailcommon/utility/Utility$CursorGetter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 730
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/android/emailcommon/utility/Utility$5;->get(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 732
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
