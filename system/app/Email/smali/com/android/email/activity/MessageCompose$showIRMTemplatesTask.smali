.class Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showIRMTemplatesTask"
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
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 10545
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10545
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 10549
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v7

    .line 10551
    .local v7, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v7, :cond_0

    .line 10567
    :goto_0
    return-object v4

    .line 10554
    :cond_0
    iget v3, v7, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v8, v0

    .line 10555
    .local v8, mSsl:Z
    :goto_1
    if-nez v8, :cond_2

    .line 10556
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f08059e

    invoke-static {v0, v3, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .end local v8           #mSsl:Z
    :cond_1
    move v8, v1

    .line 10554
    goto :goto_1

    .line 10560
    .restart local v8       #mSsl:Z
    :cond_2
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v1, "IRMTemplateName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "IRMTemplateId"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "IRMTemplateDescription"

    aput-object v1, v2, v0

    .line 10564
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cur:Landroid/database/Cursor;
    move-object v4, v6

    .line 10567
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10545
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cur"

    .prologue
    .line 10572
    if-eqz p1, :cond_3

    .line 10573
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 10574
    .local v0, count:I
    add-int/lit8 v8, v0, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 10575
    .local v6, templates:[Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    new-array v5, v8, [Ljava/lang/String;

    .line 10576
    .local v5, templateIds:[Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 10578
    .local v7, templatesDescription:[Ljava/lang/String;
    move v4, v0

    .line 10579
    .local v4, selectedTemplateIndex:I
    if-lez v0, :cond_4

    .line 10580
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10581
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10582
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 10583
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 10584
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 10586
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10587
    move v4, v2

    .line 10589
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 10581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10592
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f080595

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    .line 10593
    const/4 v8, 0x0

    aput-object v8, v5, v0

    .line 10594
    const-string v8, ""

    aput-object v8, v7, v0

    .line 10595
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageCompose;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_2

    .line 10596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10597
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 10598
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f080594

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10603
    new-instance v3, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;-><init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 10632
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v6, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10633
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10639
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #i:I
    .end local v3           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10641
    .end local v0           #count:I
    .end local v4           #selectedTemplateIndex:I
    .end local v5           #templateIds:[Ljava/lang/String;
    .end local v6           #templates:[Ljava/lang/String;
    .end local v7           #templatesDescription:[Ljava/lang/String;
    :cond_3
    return-void

    .line 10636
    .restart local v0       #count:I
    .restart local v4       #selectedTemplateIndex:I
    .restart local v5       #templateIds:[Ljava/lang/String;
    .restart local v6       #templates:[Ljava/lang/String;
    .restart local v7       #templatesDescription:[Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f0805a4

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10545
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
