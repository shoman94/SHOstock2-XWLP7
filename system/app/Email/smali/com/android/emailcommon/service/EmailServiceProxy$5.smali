.class Lcom/android/emailcommon/service/EmailServiceProxy$5;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$ssl:Z

.field final synthetic val$trustCertificates:Z

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$password:Ljava/lang/String;

    iput p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$port:I

    iput-boolean p7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$ssl:Z

    iput-boolean p8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$trustCertificates:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 182
    :cond_0
    iget-object v8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$protocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$password:Ljava/lang/String;

    iget v5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$port:I

    iget-boolean v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$ssl:Z

    iget-boolean v7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$5;->val$trustCertificates:Z

    invoke-interface/range {v0 .. v7}, Lcom/android/emailcommon/service/IEmailService;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;

    move-result-object v0

    #setter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v8, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$302(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method
