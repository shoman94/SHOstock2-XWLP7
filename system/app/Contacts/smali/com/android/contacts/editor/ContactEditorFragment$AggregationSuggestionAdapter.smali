.class final Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AggregationSuggestionAdapter"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private final mSetNewContact:Z

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V
    .locals 0
    .parameter "activity"
    .parameter "setNewContact"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/android/contacts/editor/AggregationSuggestionView$Listener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p4, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mActivity:Landroid/app/Activity;

    .line 285
    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSetNewContact:Z

    .line 286
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 287
    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 288
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 305
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .line 293
    .local v1, suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 294
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 297
    .local v2, suggestionView:Lcom/android/contacts/editor/AggregationSuggestionView;
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSetNewContact:Z

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/AggregationSuggestionView;->setNewContact(Z)V

    .line 298
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/AggregationSuggestionView;->setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V

    .line 299
    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/AggregationSuggestionView;->bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V

    .line 300
    return-object v2
.end method
