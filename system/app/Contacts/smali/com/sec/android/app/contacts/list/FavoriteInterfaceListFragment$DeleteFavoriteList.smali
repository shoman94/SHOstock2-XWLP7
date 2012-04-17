.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;
.super Ljava/lang/Object;
.source "FavoriteInterfaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteFavoriteList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->actionDeleteFavoriteList()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 227
    return-void
.end method
