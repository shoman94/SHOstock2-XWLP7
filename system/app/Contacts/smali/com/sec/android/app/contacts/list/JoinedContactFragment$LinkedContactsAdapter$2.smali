.class Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;
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
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;->val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$300()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;->val$cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    iget-wide v2, v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->targetRawContactId:J

    #calls: Lcom/sec/android/app/contacts/list/JoinedContactFragment;->doSplitContactAction(Landroid/net/Uri;J)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$400(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/net/Uri;J)Z

    .line 339
    return-void
.end method
