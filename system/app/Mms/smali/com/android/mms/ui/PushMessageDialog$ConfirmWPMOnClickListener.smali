.class abstract Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;
.super Ljava/lang/Object;
.source "PushMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PushMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ConfirmWPMOnClickListener"
.end annotation


# instance fields
.field protected href:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/PushMessageDialog;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/PushMessageDialog;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "href"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;->href:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/android/mms/ui/PushMessageDialog$ConfirmWPMOnClickListener;->href:Ljava/lang/String;

    .line 96
    return-void
.end method
