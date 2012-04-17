.class public abstract Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
.super Ljava/lang/Object;
.source "ContactsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;
    }
.end annotation


# instance fields
.field private mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/View;ILjava/lang/Object;)V
.end method

.method public abstract finishUpdate(Landroid/view/View;)V
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 123
    const/4 v0, -0x1

    return v0
.end method

.method public abstract instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;->onDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method

.method public abstract restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.end method

.method public abstract saveState()Landroid/os/Parcelable;
.end method

.method setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    .line 138
    return-void
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 90
    return-void
.end method

.method public abstract startUpdate(Landroid/view/View;)V
.end method
