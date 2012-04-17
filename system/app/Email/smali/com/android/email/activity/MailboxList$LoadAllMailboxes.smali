.class Lcom/android/email/activity/MailboxList$LoadAllMailboxes;
.super Landroid/os/AsyncTask;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllMailboxes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;J)V
    .locals 0
    .parameter
    .parameter "accountId"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1030
    iput-wide p2, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->mAccountKey:J

    .line 1031
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 8
    .parameter "params"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MailboxList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1026
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1300(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1047
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1048
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, parentServerId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1300(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    .end local v1           #parentServerId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1053
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1026
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
