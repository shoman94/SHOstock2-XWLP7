.class Lcom/android/mms/ui/SlideView$9;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideView$9;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1478
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1480
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1481
    invoke-static {}, Lcom/android/mms/ui/SlideView;->access$3200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1482
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1483
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1484
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1490
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1491
    invoke-static {v3}, Lcom/android/mms/ui/SlideView;->access$3202(Z)Z

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->attachmentFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$2900(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1495
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$9;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/ui/SlideView;->startCheckFileName(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideView;->access$3400(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    .line 1501
    :cond_2
    :goto_1
    return-void

    .line 1482
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1497
    .end local v0           #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->rawAttachments:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    iget-wide v3, v3, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    #calls: Lcom/android/mms/ui/SlideView;->startExportRawAttachments(Ljava/util/ArrayList;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/SlideView;->access$3500(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;J)V

    goto :goto_1
.end method
