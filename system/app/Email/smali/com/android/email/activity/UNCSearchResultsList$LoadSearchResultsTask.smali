.class Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSearchResultsTask"
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
.field private lId:Ljava/lang/String;

.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "accountId"
    .parameter "linkId"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 708
    iput-wide p2, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->mAccountKey:J

    .line 709
    const-string v0, "UNCSearchResultsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside constructor: linkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iput-object p4, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->lId:Ljava/lang/String;

    .line 712
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 9
    .parameter "params"

    .prologue
    .line 716
    const-string v0, "UNCSearchResultsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link Id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->lId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v0}, Lcom/android/email/activity/UNCSearchResultsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$1200(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND ishidden=0 AND parentFolderLinkId = ? AND linkId<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->lId:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->lId:Ljava/lang/String;

    aput-object v7, v4, v5

    const-string v5, "displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 737
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 738
    const-string v0, "UNCSearchResultsList"

    const-string v1, "Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v6, 0x0

    .line 747
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 742
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 696
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mListAdapter:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;
    invoke-static {v0}, Lcom/android/email/activity/UNCSearchResultsList;->access$1200(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v1, 0x7f10014a

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->lId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    .line 759
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v1, 0x7f08019f

    const/4 v2, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 696
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
