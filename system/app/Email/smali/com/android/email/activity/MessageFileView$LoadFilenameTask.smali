.class Lcom/android/email/activity/MessageFileView$LoadFilenameTask;
.super Landroid/os/AsyncTask;
.source "MessageFileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFilenameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/email/activity/MessageFileView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageFileView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "contentUri"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->mContentUri:Landroid/net/Uri;

    .line 142
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->mContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    #calls: Lcom/android/email/activity/MessageFileView;->setTitle(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageFileView;->access$000(Lcom/android/email/activity/MessageFileView;Ljava/lang/String;)V

    goto :goto_0
.end method
