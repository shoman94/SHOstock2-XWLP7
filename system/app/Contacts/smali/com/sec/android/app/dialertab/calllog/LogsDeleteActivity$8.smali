.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->val$iOpIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 550
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->val$iOpIndex:I

    packed-switch v0, :pswitch_data_0

    .line 568
    :goto_0
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$802(Z)Z

    .line 569
    return-void

    .line 552
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    new-array v1, v2, [Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->val$iOpIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showProgress()V

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    new-array v1, v2, [Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->val$iOpIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showProgress()V

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    const v1, 0x7f0a02bf

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
