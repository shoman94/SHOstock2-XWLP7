.class Lcom/android/emailcommon/service/EmailServiceProxy$21;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$data:Lcom/android/emailcommon/service/OoODataList;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/OoODataList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->val$data:Lcom/android/emailcommon/service/OoODataList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$21;->val$data:Lcom/android/emailcommon/service/OoODataList;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    goto :goto_0
.end method
