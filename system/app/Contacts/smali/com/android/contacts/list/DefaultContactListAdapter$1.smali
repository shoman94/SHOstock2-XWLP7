.class Lcom/android/contacts/list/DefaultContactListAdapter$1;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 407
    .local v0, baseUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 408
    .local v2, mPhonenumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    #calls: Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$000(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    const-string v4, "sip"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 415
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 416
    .local v1, mIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 417
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    #getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$100(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 419
    :cond_0
    return-void

    .line 413
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    const-string v4, "tel"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0
.end method
