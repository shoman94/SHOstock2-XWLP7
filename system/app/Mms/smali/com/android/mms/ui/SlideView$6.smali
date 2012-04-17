.class Lcom/android/mms/ui/SlideView$6;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;

.field final synthetic val$editField:Landroid/widget/EditText;

.field final synthetic val$extension:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideView$6;->val$editField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 1406
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, newFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v2, v2, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v0, checkFile:Ljava/io/File;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1415
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3202(Z)Z

    goto :goto_0

    .line 1410
    .end local v0           #checkFile:Ljava/io/File;
    :cond_2
    const-string v2, "."

    iget-object v4, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1415
    .restart local v0       #checkFile:Ljava/io/File;
    :cond_3
    const-string v3, "."

    iget-object v4, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1420
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3100(Lcom/android/mms/ui/SlideView;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v6, v2, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v2, "."

    iget-object v7, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1429
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->replaceFileMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3100(Lcom/android/mms/ui/SlideView;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v6, v2, Lcom/android/mms/ui/SlideView;->STORE_DIR:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const-string v2, "."

    iget-object v7, p0, Lcom/android/mms/ui/SlideView$6;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method
