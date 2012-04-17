.class Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;
.super Ljava/lang/Object;
.source "ContactHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->doDeleteAction()V

    .line 195
    return-void
.end method
