.class final Lcom/seven/Z7/shared/ANSharedCommon$1;
.super Ljava/lang/Object;
.source "ANSharedCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ANSharedCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$view:Landroid/view/View;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/seven/Z7/shared/ANSharedCommon$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/seven/Z7/shared/ANSharedCommon$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1016
    return-void
.end method
