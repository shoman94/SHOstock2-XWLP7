.class Lcom/android/emailcommon/service/EmailServiceProxy$20;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->moveConversationAlways(JJ[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$conversationId:[B

.field final synthetic val$ignore:I

.field final synthetic val$mailboxId:J

.field final synthetic val$toMailboxId:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJ[BI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$mailboxId:J

    iput-wide p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$toMailboxId:J

    iput-object p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$conversationId:[B

    iput p7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$ignore:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$mailboxId:J

    iget-wide v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$toMailboxId:J

    iget-object v5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$conversationId:[B

    iget v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$20;->val$ignore:I

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->moveConversationAlways(JJ[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method
