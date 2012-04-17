.class public interface abstract Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;
.super Ljava/lang/Object;
.source "OnMultiDataPickerActionListener.java"


# virtual methods
.method public abstract onAllDataDeleted()V
.end method

.method public abstract onInteractionPickerAction(Landroid/net/Uri;)V
.end method

.method public abstract onOneDataInputed()V
.end method

.method public abstract onPickContactAction(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPickDataAction(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPickGroupDataAction(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPickSpeedDialAction(Landroid/net/Uri;)V
.end method

.method public abstract onPickSpeedDialAction(Landroid/net/Uri;J)V
.end method

.method public abstract onRecentListAction(Landroid/content/Intent;)V
.end method

.method public abstract onRevertAction()V
.end method
