.class Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;
.super Ljava/lang/Object;
.source "ClearCallLogDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->this$0:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->this$0:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->this$0:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;

    const v4, 0x7f0a007a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 52
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;-><init>(Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V

    .line 65
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 66
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
