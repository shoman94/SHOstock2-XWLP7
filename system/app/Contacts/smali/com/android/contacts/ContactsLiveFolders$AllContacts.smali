.class public Lcom/android/contacts/ContactsLiveFolders$AllContacts;
.super Landroid/app/Activity;
.source "ContactsLiveFolders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsLiveFolders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllContacts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "content://contacts/live_folders/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, -0x1

    sget-object v3, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->CONTENT_URI:Landroid/net/Uri;

    const v4, 0x7f0a008d

    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    #calls: Lcom/android/contacts/ContactsLiveFolders;->createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    invoke-static {p0, v3, v4, v5}, Lcom/android/contacts/ContactsLiveFolders;->access$000(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->setResult(ILandroid/content/Intent;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->finish()V

    .line 94
    return-void

    .line 90
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsLiveFolders$AllContacts;->setResult(I)V

    goto :goto_0
.end method
