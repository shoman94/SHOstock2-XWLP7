.class Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;
.super Ljava/lang/Object;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/CancelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/CancelActivity;Lcom/android/contacts/vcard/CancelActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    const-class v3, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/vcard/CancelActivity$RequestCancelListener;->this$0:Lcom/android/contacts/vcard/CancelActivity;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/vcard/CancelActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    return-void
.end method
