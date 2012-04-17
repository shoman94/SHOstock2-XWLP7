.class Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->mContext:Landroid/content/Context;

    #calls: Lcom/android/contacts/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->onStopLoading()V

    .line 119
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->forceLoad()V

    .line 109
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;->cancelLoad()Z

    .line 114
    return-void
.end method
