.class Lcom/android/emailcommon/service/EmailServiceProxy$26;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accId:J

.field final synthetic val$conversationIdStr:Ljava/lang/String;

.field final synthetic val$foldId:J

.field final synthetic val$greaterThanDateString:Ljava/lang/String;

.field final synthetic val$lessThanDateString:Ljava/lang/String;

.field final synthetic val$mailboxId:J

.field final synthetic val$optionsDeepTraversalStr:Ljava/lang/String;

.field final synthetic val$searchTextString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$accId:J

    iput-wide p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$mailboxId:J

    iput-wide p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$foldId:J

    iput-object p8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$searchTextString:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$greaterThanDateString:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$lessThanDateString:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$optionsDeepTraversalStr:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$conversationIdStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$accId:J

    iget-wide v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$mailboxId:J

    iget-wide v5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$foldId:J

    iget-object v7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$searchTextString:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$greaterThanDateString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$lessThanDateString:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$optionsDeepTraversalStr:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/emailcommon/service/EmailServiceProxy$26;->val$conversationIdStr:Ljava/lang/String;

    invoke-interface/range {v0 .. v11}, Lcom/android/emailcommon/service/IEmailService;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method
