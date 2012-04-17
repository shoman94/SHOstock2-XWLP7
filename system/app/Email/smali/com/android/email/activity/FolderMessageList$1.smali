.class Lcom/android/email/activity/FolderMessageList$1;
.super Landroid/os/AsyncTask;
.source "FolderMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/FolderMessageList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/FolderMessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FolderMessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/email/activity/FolderMessageList$1;->this$0:Lcom/android/email/activity/FolderMessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/FolderMessageList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/FolderMessageList$1;->this$0:Lcom/android/email/activity/FolderMessageList;

    #calls: Lcom/android/email/activity/FolderMessageList;->openInbox()V
    invoke-static {v0}, Lcom/android/email/activity/FolderMessageList;->access$000(Lcom/android/email/activity/FolderMessageList;)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/FolderMessageList$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/FolderMessageList$1;->this$0:Lcom/android/email/activity/FolderMessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/FolderMessageList;->finish()V

    .line 42
    return-void
.end method
