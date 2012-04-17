.class final Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceNumberListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 140
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 141
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;

    .line 157
    .local v0, cache:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;->numberView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;-><init>()V

    .line 147
    .local v0, cache:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;
    const v2, 0x7f0d0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;->nameView:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f0d00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListItemCache;->numberView:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    return-object v1
.end method
