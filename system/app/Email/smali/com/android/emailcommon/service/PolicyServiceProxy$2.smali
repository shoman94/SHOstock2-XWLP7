.class Lcom/android/emailcommon/service/PolicyServiceProxy$2;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

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
    .line 74
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    #getter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;
    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/emailcommon/service/IPolicyService;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    #setter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
