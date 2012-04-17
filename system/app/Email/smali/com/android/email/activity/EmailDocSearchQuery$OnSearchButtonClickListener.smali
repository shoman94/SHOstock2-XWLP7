.class Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;
.super Ljava/lang/Object;
.source "EmailDocSearchQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/EmailDocSearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSearchButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailDocSearchQuery;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/EmailDocSearchQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/EmailDocSearchQuery;Lcom/android/email/activity/EmailDocSearchQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailDocSearchQuery;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, searchStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mQuery:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$000(Lcom/android/email/activity/EmailDocSearchQuery;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v0, "\\"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_0
    const-string v0, "Stella"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchString onSearch Click:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailSearchAdapter;->setFreeText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setoptionsDocumentStr(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "NoneDate"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "NoneDate"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v2}, Lcom/android/email/activity/EmailDocSearchQuery;->access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "False"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "True"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setoptionsMultipartStr(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$400(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/EmailDocSearchQuery;->access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v4, 0x62

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v8

    .line 75
    .local v8, searchFolderId:J
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Lcom/android/email/activity/EmailDocSearchQuery;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fzhang email Search Adapter search is called mMailbox = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v3}, Lcom/android/email/activity/EmailDocSearchQuery;->access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " foldid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "accoundid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v3}, Lcom/android/email/activity/EmailDocSearchQuery;->access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 82
    .local v6, protocolVersion:D
    const-wide/high16 v2, 0x4028

    cmpg-double v0, v6, v2

    if-gez v0, :cond_3

    .line 83
    const-string v0, "TAG"

    const-string v2, "Document search can not be supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    const-string v2, "Document Search not supported for this account"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_1
    return-void

    .line 69
    .end local v6           #protocolVersion:D
    .end local v8           #searchFolderId:J
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mEmailSearchAdapter:Lcom/android/email/EmailSearchAdapter;
    invoke-static {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->access$100(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/email/EmailSearchAdapter;

    move-result-object v0

    const-string v2, "NoneId"

    invoke-virtual {v0, v2}, Lcom/android/email/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .restart local v6       #protocolVersion:D
    .restart local v8       #searchFolderId:J
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    iget-object v0, v0, Lcom/android/email/activity/EmailDocSearchQuery;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener$1;-><init>(Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    iget-object v2, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/EmailDocSearchQuery;->access$300(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    #getter for: Lcom/android/email/activity/EmailDocSearchQuery;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v4}, Lcom/android/email/activity/EmailDocSearchQuery;->access$200(Lcom/android/email/activity/EmailDocSearchQuery;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/UNCSearchResultsList;->actionHandleDocs(Landroid/app/Activity;Ljava/lang/String;JJ)V

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/EmailDocSearchQuery;->setResult(I)V

    .line 117
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    goto :goto_1
.end method
