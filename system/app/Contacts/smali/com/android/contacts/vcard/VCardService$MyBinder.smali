.class public Lcom/android/contacts/vcard/VCardService$MyBinder;
.super Landroid/os/Binder;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/VCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService$MyBinder;->this$0:Lcom/android/contacts/vcard/VCardService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/contacts/vcard/VCardService;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService$MyBinder;->this$0:Lcom/android/contacts/vcard/VCardService;

    return-object v0
.end method
