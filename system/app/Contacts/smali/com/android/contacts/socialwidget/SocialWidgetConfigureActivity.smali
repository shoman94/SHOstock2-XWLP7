.class public Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;
.super Landroid/app/Activity;
.source "SocialWidgetConfigureActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 42
    if-ne p2, v6, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Intent extras are null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    const-string v4, "appWidgetId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, widgetId:I
    move-object v0, p0

    .line 50
    .local v0, context:Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->setContactUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 53
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v3, v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v2, resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    .end local v0           #context:Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #resultValue:Landroid/content/Intent;
    .end local v3           #widgetId:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;->finish()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;->setResult(I)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v0, pickerIntent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/socialwidget/SocialWidgetConfigureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method
