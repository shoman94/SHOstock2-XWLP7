.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;
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
    .line 193
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    .line 197
    return-void
.end method
