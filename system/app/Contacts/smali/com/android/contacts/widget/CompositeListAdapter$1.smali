.class Lcom/android/contacts/widget/CompositeListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "CompositeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/CompositeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/CompositeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/CompositeListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/contacts/widget/CompositeListAdapter$1;->this$0:Lcom/android/contacts/widget/CompositeListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter$1;->this$0:Lcom/android/contacts/widget/CompositeListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/widget/CompositeListAdapter;->invalidate()V

    .line 49
    iget-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter$1;->this$0:Lcom/android/contacts/widget/CompositeListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    .line 50
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter$1;->this$0:Lcom/android/contacts/widget/CompositeListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/widget/CompositeListAdapter;->invalidate()V

    .line 55
    iget-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter$1;->this$0:Lcom/android/contacts/widget/CompositeListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    .line 56
    return-void
.end method
