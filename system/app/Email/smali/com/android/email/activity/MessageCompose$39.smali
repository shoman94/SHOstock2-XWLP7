.class Lcom/android/email/activity/MessageCompose$39;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 10129
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 10131
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 10133
    .local v0, ps:Lcom/android/emailcommon/service/PolicySet;
    packed-switch p2, :pswitch_data_0

    .line 10147
    :cond_0
    :goto_0
    return-void

    .line 10135
    :pswitch_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-nez v1, :cond_0

    .line 10136
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z
    invoke-static {v1, p3}, Lcom/android/email/activity/MessageCompose;->access$10702(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_0

    .line 10140
    :pswitch_1
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-nez v1, :cond_0

    .line 10141
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$39;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z
    invoke-static {v1, p3}, Lcom/android/email/activity/MessageCompose;->access$10802(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_0

    .line 10133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
