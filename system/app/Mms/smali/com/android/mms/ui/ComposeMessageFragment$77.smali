.class Lcom/android/mms/ui/ComposeMessageFragment$77;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/io/File;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8738
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$mFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8741
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$mFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6300(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    .line 8742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    .line 8746
    return-void

    .line 8744
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$77;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    throw v0
.end method
