.class Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;
.super Ljava/lang/Object;
.source "JoinedContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

.field final synthetic val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;->val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;->val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->profileIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;->val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    iget-object v1, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->profileIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 332
    :cond_0
    return-void
.end method
