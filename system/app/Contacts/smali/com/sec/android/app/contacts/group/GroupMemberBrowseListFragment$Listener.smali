.class public interface abstract Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAddMemberRequested()V
.end method

.method public abstract onContactSelected(Landroid/net/Uri;)V
.end method

.method public abstract onGroupSizeUpdated(Ljava/lang/String;)V
.end method
