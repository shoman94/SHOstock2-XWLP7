.class Lcom/android/mms/ui/CbConfigPreferenceActivity$6;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    .line 366
    return-void
.end method
