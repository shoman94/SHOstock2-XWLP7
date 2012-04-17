.class Lcom/android/mms/ui/MessageOptions$4;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$extension:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1387
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1392
    .local v1, newFileName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1393
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1394
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v3, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v4, 0x7f09023e

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageOptions;->access$1002(Lcom/android/mms/ui/MessageOptions;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1395
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEmptyNameToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1399
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v0, checkFile:Ljava/io/File;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1403
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1404
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1424
    :goto_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/MessageOptions;->saveMode:Z

    .line 1426
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$1200()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1399
    .end local v0           #checkFile:Ljava/io/File;
    :cond_5
    const-string v2, "."

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1404
    .restart local v0       #checkFile:Ljava/io/File;
    :cond_6
    const-string v3, "."

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1409
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const-string v2, "."

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1418
    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->replaceFileMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const-string v2, "."

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$4;->val$extension:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method
