.class Lcom/android/emailcommon/service/PolicyServiceProxy$9;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->setRecoverPasswordState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$9;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-boolean p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$9;->val$arg0:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$9;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    #getter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;
    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$9;->val$arg0:Z

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IPolicyService;->setRecoverPasswordState(Z)V

    .line 190
    return-void
.end method
