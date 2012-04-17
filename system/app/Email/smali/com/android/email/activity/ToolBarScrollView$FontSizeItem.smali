.class public Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;
.super Ljava/lang/Object;
.source "ToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ToolBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeItem"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# virtual methods
.method public getFontSizeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$FontSizeItem;->mText:Ljava/lang/String;

    return-object v0
.end method
