.class public interface abstract Lcom/seven/Z7/common/IZ7ServiceCallback;
.super Ljava/lang/Object;
.source "IZ7ServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callback2(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
