.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;
.super Ljava/lang/Object;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    .line 205
    return-void
.end method
