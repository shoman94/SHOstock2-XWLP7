.class interface abstract Lcom/android/email/Controller$ServiceCallbackWrapper;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ServiceCallbackWrapper"
.end annotation


# virtual methods
.method public abstract call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
