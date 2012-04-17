.class public interface abstract Lcom/android/mms/transaction/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# virtual methods
.method public abstract queueMessageForPending(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method
