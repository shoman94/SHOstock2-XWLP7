.class public Lcom/android/email/Controller$ControllerService;
.super Landroid/app/Service;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerService"
.end annotation


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6041
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 6047
    new-instance v0, Lcom/android/email/Controller$ControllerService$1;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$ControllerService$1;-><init>(Lcom/android/email/Controller$ControllerService;)V

    iput-object v0, p0, Lcom/android/email/Controller$ControllerService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 6245
    iget-object v0, p0, Lcom/android/email/Controller$ControllerService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method
