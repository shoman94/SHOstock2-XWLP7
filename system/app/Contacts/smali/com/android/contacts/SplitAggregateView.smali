.class public Lcom/android/contacts/SplitAggregateView;
.super Landroid/widget/ListView;
.source "SplitAggregateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;,
        Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;,
        Lcom/android/contacts/SplitAggregateView$RawContactInfo;,
        Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;,
        Lcom/android/contacts/SplitAggregateView$SplitQuery;
    }
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;


# direct methods
.method static synthetic access$000(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView;->mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method
