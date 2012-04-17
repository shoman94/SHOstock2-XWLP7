.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;
.super Ljava/lang/Object;
.source "InteractionPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 215
    return-void
.end method
