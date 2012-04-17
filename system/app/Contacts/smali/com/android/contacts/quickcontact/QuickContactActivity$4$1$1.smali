.class Lcom/android/contacts/quickcontact/QuickContactActivity$4$1$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1$1;->this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1$1;->this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$502(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 315
    return-void
.end method
