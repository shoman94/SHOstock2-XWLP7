.class public Lcom/android/email/service/PolicyService;
.super Landroid/app/Service;
.source "PolicyService.java"


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

.field private mContext:Landroid/content/Context;

.field private mSecurityPolicy:Lcom/android/email/SecurityPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/android/email/service/PolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/PolicyService$1;-><init>(Lcom/android/email/service/PolicyService;)V

    iput-object v0, p0, Lcom/android/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mSecurityPolicy:Lcom/android/email/SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/service/PolicyService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 90
    iput-object p0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/PolicyService;->mSecurityPolicy:Lcom/android/email/SecurityPolicy;

    .line 92
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-object v0
.end method
