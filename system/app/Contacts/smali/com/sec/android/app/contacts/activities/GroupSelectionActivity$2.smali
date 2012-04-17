.class Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;
.super Ljava/lang/Object;
.source "GroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 99
    return-void
.end method
